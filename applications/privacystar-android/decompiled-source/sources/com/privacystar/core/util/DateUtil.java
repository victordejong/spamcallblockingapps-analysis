package com.privacystar.core.util;

import android.content.Context;
import com.privacystar.core.C1566R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/DateUtil.class */
public class DateUtil {
    public static final long DAY_IN_MILLIS = 86400000;
    public static final long DAY_IN_SECONDS = 86400;
    public static final long HOUR_IN_MILLIS = 3600000;
    public static final long HOUR_IN_SECONDS = 3600;
    public static final long MINUTE_IN_MILLIS = 60000;
    public static final long MINUTE_IN_SECONDS = 60;
    public static final long SECOND_IN_MILLIS = 1000;

    public static Boolean compareDates(String str, String str2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Calendar.getInstance().getTimeZone());
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar(Calendar.getInstance().getTimeZone());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        try {
            gregorianCalendar.setTime(simpleDateFormat.parse(str.substring(0, 24)));
            gregorianCalendar2.setTime(simpleDateFormat.parse(str2.substring(0, 24)));
        } catch (ParseException e) {
            Timber.m32e(e, "", new Object[0]);
        }
        boolean z = true;
        if (gregorianCalendar.get(1) == gregorianCalendar2.get(1)) {
            z = true;
            if (gregorianCalendar.get(2) == gregorianCalendar2.get(2)) {
                z = gregorianCalendar.get(5) != gregorianCalendar2.get(5);
            }
        }
        return Boolean.valueOf(z);
    }

    public static String formatDate(Context context, String str) {
        Calendar instance = Calendar.getInstance();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Calendar.getInstance().getTimeZone());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        try {
            gregorianCalendar.setTime(simpleDateFormat.parse(str.substring(0, 24)));
        } catch (ParseException e) {
            Timber.m32e(e, "", new Object[0]);
        }
        int i = instance.get(5);
        int i2 = instance.get(2) + 1;
        int i3 = instance.get(1);
        int i4 = gregorianCalendar.get(5);
        int i5 = gregorianCalendar.get(2) + 1;
        int i6 = gregorianCalendar.get(1);
        if (i3 == i6 && i2 == i5 && i == i4) {
            return context.getString(C1566R.string.general_text_today);
        }
        if (i3 == i6 && i2 == i5 && i == i4 + 1) {
            return context.getString(C1566R.string.general_text_yesterday);
        }
        return i5 + "/" + i4 + "/" + i6;
    }

    public static String formatDateSimple(Date date) {
        return formatDateSimple(date, TimeZone.getDefault());
    }

    public static String formatDateSimple(Date date, TimeZone timeZone) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yy", Locale.getDefault());
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat.format(date);
    }

    public static Calendar getCalendar(String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Calendar.getInstance().getTimeZone());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        try {
            gregorianCalendar.setTime(simpleDateFormat.parse(str.substring(0, 24)));
        } catch (ParseException e) {
            Timber.m32e(e, "", new Object[0]);
        }
        return gregorianCalendar;
    }

    public static String getDateTimeString(long j) {
        return getDateTimeString(j, TimeZone.getDefault());
    }

    public static String getDateTimeString(long j, TimeZone timeZone) {
        Date date = new Date(j);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, MMM d hh:mm:ss a", Locale.US);
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat.format(date);
    }

    public static String getLocalizedCurrentTime() {
        return new SimpleDateFormat("MM-dd HH:mm:ss:SSS", Locale.US).format(new Date());
    }

    public static long getLocalizedTimeFromUTCString(String str) throws ParseException {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).parse(str).getTime();
    }

    public static long getMilliUntilNextMonth() {
        Calendar instance = Calendar.getInstance();
        instance.add(2, 1);
        instance.set(5, instance.getActualMinimum(5));
        return instance.getTimeInMillis();
    }

    public static boolean isDateInFuture(@NotNull Date date) {
        return date.getTime() > System.currentTimeMillis();
    }

    public static void setCalendarToEndOfMonth(Calendar calendar) {
        calendar.set(5, calendar.getActualMaximum(5));
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, 999);
    }

    public static boolean timeIsRecent(Long l, Long l2) {
        boolean z = false;
        if (l == null || l2 == null) {
            return false;
        }
        if (Long.valueOf(System.currentTimeMillis() - l.longValue()).longValue() < l2.longValue()) {
            z = true;
        }
        return z;
    }
}
