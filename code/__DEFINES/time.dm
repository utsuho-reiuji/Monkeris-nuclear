//time of day but automatically adjusts to the server going into the next day within the same round.
//for when you need a reliable time number that doesn't depend on byond time.
#define MIDNIGHT_ROLLOVER		864000	//number of deciseconds in a day
#define REALTIMEOFDAY (world.timeofday + (MIDNIGHT_ROLLOVER * MIDNIGHT_ROLLOVER_CHECK))
#define MIDNIGHT_ROLLOVER_CHECK ( rollovercheck_last_timeofday != world.timeofday ? update_midnight_rollover() : midnight_rollovers )

#define CURRENT_SHIP_YEAR (GLOB.year_integer + SHIP_YEAR_OFFSET)

#define SHIP_YEAR_OFFSET 319

#define SECONDS *10

#define MINUTES SECONDS*60

#define HOURS MINUTES*60

#define TICKS *world.tick_lag

#define MILLISECONDS * 0.01

#define DS2TICKS(DS) ((DS)/world.tick_lag)

#define TICKS2DS(T) ((T) TICKS)

#define MS2DS(T) ((T) MILLISECONDS)

#define DS2MS(T) ((T) * 100)


/*Timezones*/

/// Line Islands Time
#define TIMEZONE_LINT 14

// Chatham Daylight Time
#define TIMEZONE_CHADT 13.75

/// Tokelau Time
#define TIMEZONE_TKT 13

/// Tonga Time
#define TIMEZONE_TOT 13

/// New Zealand Daylight Time
#define TIMEZONE_NZDT 13

/// New Zealand Standard Time
#define TIMEZONE_NZST 12

/// Norfolk Time
#define TIMEZONE_NFT 11

/// Lord Howe Standard Time
#define TIMEZONE_LHST 10.5

/// Australian Eastern Standard Time
#define TIMEZONE_AEST 10

/// Australian Central Standard Time
#define TIMEZONE_ACST 9.5

/// Australian Central Western Standard Time
#define TIMEZONE_ACWST 8.75

/// Australian Western Standard Time
#define TIMEZONE_AWST 8

/// Christmas Island Time
#define TIMEZONE_CXT 7

/// Cocos Islands Time
#define TIMEZONE_CCT 6.5

/// Central European Summer Time
#define TIMEZONE_CEST 2

/// Coordinated Universal Time
#define TIMEZONE_UTC 0

/// Eastern Daylight Time
#define TIMEZONE_EDT -4

/// Eastern Standard Time
#define TIMEZONE_EST -5

/// Central Daylight Time
#define TIMEZONE_CDT -5

/// Central Standard Time
#define TIMEZONE_CST -6

/// Mountain Daylight Time
#define TIMEZONE_MDT -6

/// Mountain Standard Time
#define TIMEZONE_MST -7

/// Pacific Daylight Time
#define TIMEZONE_PDT -7

/// Pacific Standard Time
#define TIMEZONE_PST -8

/// Alaska Daylight Time
#define TIMEZONE_AKDT -8

/// Alaska Standard Time
#define TIMEZONE_AKST -9

/// Hawaii-Aleutian Daylight Time
#define TIMEZONE_HDT -9

/// Hawaii Standard Time
#define TIMEZONE_HST -10

/// Cook Island Time
#define TIMEZONE_CKT -10

/// Niue Time
#define TIMEZONE_NUT -11

/// Anywhere on Earth
#define TIMEZONE_ANYWHERE_ON_EARTH -12

/// in the grim darkness of the thirteenth space station there is no timezones, since they break IC game times. Use this for all IC/round time values
#define NO_TIMEZONE 0

// TODO: Normalize and remove these
#define SECOND SECONDS

#define MINUTE MINUTES

#define HOUR HOURS

#define DAY DAYS
#define DAYS *864000

#define TimeOfGame (get_game_time())
#define TimeOfTick (world.tick_usage*0.01*world.tick_lag)
