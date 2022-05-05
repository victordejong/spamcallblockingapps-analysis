package com.zendesk.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/DateUtils.class */
public class DateUtils {
    private static final String ISO_8601_PATTERN = "yyyy-MM-dd'T'HH:mm:ssZ";
    private static final DateFormat ISO_8601_DATE_FORMAT = new SimpleDateFormat(ISO_8601_PATTERN, Locale.US);
    private static final TimeZone TIME_ZONE_UTC = TimeZone.getTimeZone("UTC");

    static {
        ISO_8601_DATE_FORMAT.setTimeZone(TIME_ZONE_UTC);
    }

    private DateUtils() {
    }

    public static Date deserialiseFromISO8601(String str) {
        try {
            return ISO_8601_DATE_FORMAT.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getBeginOfDay(Date date) {
        Calendar calendar = getCalendar(date);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTime();
    }

    private static Calendar getCalendar(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getDefault(), Locale.getDefault());
        gregorianCalendar.setTime(date);
        return gregorianCalendar;
    }

    public static boolean isSameDay(Date date, Date date2) {
        Calendar calendar = getCalendar(date);
        Calendar calendar2 = getCalendar(date2);
        boolean z = true;
        boolean z2 = calendar.get(1) == calendar2.get(1);
        boolean z3 = calendar.get(2) == calendar2.get(2);
        boolean z4 = calendar.get(5) == calendar2.get(5);
        if (!z2 || !z3 || !z4) {
            z = false;
        }
        return z;
    }

    public static boolean isToday(Date date) {
        return isSameDay(date, getCalendar(new Date()).getTime());
    }

    public static boolean isYesterday(Date date) {
        Calendar calendar = getCalendar(new Date());
        calendar.add(5, -1);
        return isSameDay(date, calendar.getTime());
    }

    public static String serialiseToISO8601(Date date) {
        return ISO_8601_DATE_FORMAT.format(date);
    }
}
