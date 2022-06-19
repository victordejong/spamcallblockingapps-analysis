package com.telguarder.helpers.dateUtils;

import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/dateUtils/DateUtils.class */
public class DateUtils {
    private static Calendar getCalendarForWeekStartingWithMonday() {
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(2);
        return calendar;
    }

    public static int getDayStartingFromSunday(int i) {
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Day index must be in range: [1-7]");
        }
        if (i != 7) {
            return i + 1;
        }
        return 1;
    }

    public static Calendar getStartOfCurrentDay() {
        Calendar calendarForWeekStartingWithMonday = getCalendarForWeekStartingWithMonday();
        calendarForWeekStartingWithMonday.set(11, 0);
        calendarForWeekStartingWithMonday.clear(12);
        calendarForWeekStartingWithMonday.clear(13);
        calendarForWeekStartingWithMonday.clear(14);
        return calendarForWeekStartingWithMonday;
    }

    public static Calendar getStartOfCurrentWeek() {
        Calendar calendarForWeekStartingWithMonday = getCalendarForWeekStartingWithMonday();
        calendarForWeekStartingWithMonday.set(7, calendarForWeekStartingWithMonday.getFirstDayOfWeek());
        return calendarForWeekStartingWithMonday;
    }

    public static Calendar getStartOfNextDay() {
        Calendar startOfCurrentDay = getStartOfCurrentDay();
        startOfCurrentDay.add(5, 1);
        return startOfCurrentDay;
    }

    public static Calendar getStartOfNextWeek() {
        Calendar startOfNextDay = getStartOfNextDay();
        startOfNextDay.add(3, 1);
        return startOfNextDay;
    }

    public static boolean isCurrentDayOfWeek(int i) {
        boolean z = true;
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Day index must be in range: [1-7]");
        }
        if (i != Calendar.getInstance().get(7)) {
            z = false;
        }
        return z;
    }

    public static boolean isCurrentWeek(long j) {
        return j > getStartOfCurrentWeek().getTimeInMillis() && j < getStartOfNextWeek().getTimeInMillis();
    }

    public static boolean isCurrentWeek(Calendar calendar) {
        calendar.setFirstDayOfWeek(2);
        return isCurrentWeek(calendar.getTimeInMillis());
    }

    public static boolean isToday(long j) {
        return j > getStartOfCurrentDay().getTimeInMillis() && j < getStartOfNextDay().getTimeInMillis();
    }

    public static boolean isToday(Calendar calendar) {
        return isToday(calendar.getTimeInMillis());
    }
}
