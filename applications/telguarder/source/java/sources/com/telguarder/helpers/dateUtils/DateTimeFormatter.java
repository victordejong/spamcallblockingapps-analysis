package com.telguarder.helpers.dateUtils;

import android.content.Context;
import android.text.format.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/dateUtils/DateTimeFormatter.class */
public class DateTimeFormatter {
    public static String getCurrentFormattedTime() {
        try {
            return new SimpleDateFormat("HH:mm:ss:SSS", Locale.US).format(Long.valueOf(System.currentTimeMillis()));
        } catch (Exception e) {
            return "";
        }
    }

    public static String getDate(Context context, long j) {
        return DateFormat.getDateFormat(context).format(Long.valueOf(j));
    }

    public static String getDate(Context context, Calendar calendar) {
        return getDate(context, calendar.getTimeInMillis());
    }

    public static String getDateTime(Context context, long j) {
        return DateFormat.getDateFormat(context).format(Long.valueOf(j)) + " " + getTime(context, j);
    }

    public static String getDayName(int i) {
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Day index must be in range: [1-7] but provided: " + i);
        }
        return getDayOfWeekNames()[i];
    }

    public static String getDayName(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return getDayName(calendar.get(7));
    }

    public static String getDayName(Calendar calendar) {
        return getDayName(calendar.getTimeInMillis());
    }

    public static String[] getDayOfWeekNames() {
        return new DateFormatSymbols(Locale.getDefault()).getWeekdays();
    }

    public static String getTime(Context context, long j) {
        return new SimpleDateFormat(DateFormat.is24HourFormat(context) ? "HH:mm" : "HH:mm a", Locale.getDefault()).format(Long.valueOf(j));
    }

    public static String getTime(Context context, Calendar calendar) {
        return getTime(context, calendar.getTimeInMillis());
    }
}
