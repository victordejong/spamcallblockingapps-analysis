package com.android.contacts.util;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/DateUtils.class */
public class DateUtils {
    public static final String NO_YEAR_DATE_FEB29TH = "--02-29";
    private static final String TAG = "DateUtils";
    public static final TimeZone UTC_TIMEZONE = TimeZone.getTimeZone("UTC");
    public static final SimpleDateFormat NO_YEAR_DATE_FORMAT = new SimpleDateFormat("--MM-dd", Locale.US);
    public static final SimpleDateFormat FULL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
    public static final SimpleDateFormat DATE_AND_TIME_FORMAT = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
    public static final SimpleDateFormat NO_YEAR_DATE_AND_TIME_FORMAT = new SimpleDateFormat("--MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
    private static final SimpleDateFormat[] DATE_FORMATS = {FULL_DATE_FORMAT, DATE_AND_TIME_FORMAT, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'", Locale.US), new SimpleDateFormat("yyyyMMdd", Locale.US), new SimpleDateFormat("yyyyMMdd'T'HHmmssSSS'Z'", Locale.US), new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'", Locale.US), new SimpleDateFormat("yyyyMMdd'T'HHmm'Z'", Locale.US)};
    private static final DateFormat FORMAT_WITHOUT_YEAR_MONTH_FIRST = new SimpleDateFormat("MMMM dd");
    private static final DateFormat FORMAT_WITHOUT_YEAR_DAY_FIRST = new SimpleDateFormat("dd MMMM");

    static {
        SimpleDateFormat[] simpleDateFormatArr;
        for (SimpleDateFormat simpleDateFormat : DATE_FORMATS) {
            simpleDateFormat.setLenient(true);
            simpleDateFormat.setTimeZone(UTC_TIMEZONE);
        }
        NO_YEAR_DATE_FORMAT.setTimeZone(UTC_TIMEZONE);
        FORMAT_WITHOUT_YEAR_MONTH_FIRST.setTimeZone(UTC_TIMEZONE);
        FORMAT_WITHOUT_YEAR_DAY_FIRST.setTimeZone(UTC_TIMEZONE);
    }

    public static String formatDate(Context context, String str) {
        return formatDate(context, str, true);
    }

    public static String formatDate(Context context, String str, boolean z) {
        String str2;
        if (str == null) {
            str2 = null;
        } else {
            String trim = str.trim();
            str2 = trim;
            if (trim.length() != 0) {
                Calendar parseDate = parseDate(trim, false);
                str2 = trim;
                if (parseDate != null) {
                    DateFormat localizedDateFormatWithoutYear = !isYearSet(parseDate) ? getLocalizedDateFormatWithoutYear(context) : z ? android.text.format.DateFormat.getLongDateFormat(context) : android.text.format.DateFormat.getDateFormat(context);
                    synchronized (localizedDateFormatWithoutYear) {
                        localizedDateFormatWithoutYear.setTimeZone(UTC_TIMEZONE);
                        str2 = localizedDateFormatWithoutYear.format(parseDate.getTime());
                    }
                }
            }
        }
        return str2;
    }

    public static int getAsInteger(ContentValues contentValues, String str) {
        int i;
        Object obj = contentValues.get(str);
        if (obj != null) {
            try {
                i = ((Number) obj) == null ? 0 : ((Number) obj).intValue();
            } catch (ClassCastException e) {
                if (obj instanceof CharSequence) {
                    try {
                        i = Integer.valueOf(obj.toString()).intValue();
                    } catch (NumberFormatException e2) {
                        Log.w(TAG, "Cannot parse Integer value for " + obj + " at key " + str);
                        i = 0;
                    }
                } else {
                    Log.w(TAG, "Cannot cast value for " + str + " to a Integer: " + obj, e);
                    i = 0;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    public static DateFormat getLocalizedDateFormatWithoutYear(Context context) {
        SimpleDateFormat simpleDateFormat;
        String pattern = ((SimpleDateFormat) SimpleDateFormat.getDateInstance(1)).toPattern();
        try {
            simpleDateFormat = new SimpleDateFormat(pattern.replaceAll(pattern.contains("de") ? "[^Mm]*[Yy]+[^Mm]*" : "[^DdMm]*[Yy]+[^DdMm]*", BuildConfig.FLAVOR));
        } catch (IllegalArgumentException e) {
            simpleDateFormat = new SimpleDateFormat(isMonthBeforeDay(context) ? "MMMM dd" : "dd MMMM");
        }
        return simpleDateFormat;
    }

    private static final Calendar getUtcDate(int i, int i2, int i3) {
        Calendar instance = Calendar.getInstance(UTC_TIMEZONE, Locale.US);
        instance.clear();
        instance.set(1, i);
        instance.set(2, i2);
        instance.set(5, i3);
        return instance;
    }

    private static final Calendar getUtcDate(Date date, boolean z) {
        Calendar instance = Calendar.getInstance(UTC_TIMEZONE, Locale.US);
        instance.setTime(date);
        if (z) {
            instance.set(1, 0);
        }
        return instance;
    }

    public static boolean isMonthBeforeDay(Context context) {
        boolean z;
        char[] dateFormatOrder = android.text.format.DateFormat.getDateFormatOrder(context);
        int i = 0;
        while (true) {
            z = false;
            if (i >= dateFormatOrder.length) {
                break;
            } else if (dateFormatOrder[i] == 'd') {
                z = false;
                break;
            } else if (dateFormatOrder[i] == 'M') {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    public static boolean isYearSet(Calendar calendar) {
        boolean z = true;
        if (calendar.get(1) <= 1) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0099, code lost:
        r4 = getUtcDate(r0, false);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Calendar parseDate(java.lang.String r4, boolean r5) {
        /*
            r0 = 0
            r6 = r0
            java.text.ParsePosition r0 = new java.text.ParsePosition
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            if (r0 != 0) goto L_0x006c
            java.lang.String r0 = "--02-29"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0025
            r0 = 0
            r1 = 1
            r2 = 29
            java.util.Calendar r0 = getUtcDate(r0, r1, r2)
            r4 = r0
        L_0x0023:
            r0 = r4
            return r0
        L_0x0025:
            java.text.SimpleDateFormat r0 = com.android.contacts.util.DateUtils.NO_YEAR_DATE_FORMAT
            r9 = r0
            r0 = r9
            monitor-enter(r0)
            java.text.SimpleDateFormat r0 = com.android.contacts.util.DateUtils.NO_YEAR_DATE_FORMAT     // Catch: all -> 0x005a
            r1 = r4
            r2 = r7
            java.util.Date r0 = r0.parse(r1, r2)     // Catch: all -> 0x005a
            r10 = r0
            r0 = r9
            monitor-exit(r0)     // Catch: all -> 0x005a
            r0 = r7
            int r0 = r0.getIndex()
            r1 = r4
            int r1 = r1.length()
            if (r0 != r1) goto L_0x0060
            r0 = 1
            r11 = r0
        L_0x0048:
            r0 = r6
            r8 = r0
            r0 = r11
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r1 = 1
            java.util.Calendar r0 = getUtcDate(r0, r1)
            r4 = r0
            goto L_0x0023
        L_0x005a:
            r4 = move-exception
            r0 = r9
            monitor-exit(r0)     // Catch: all -> 0x005a
            r0 = r4
            throw r0
        L_0x0060:
            r0 = 0
            r11 = r0
            goto L_0x0048
        L_0x0066:
            r0 = r9
            monitor-exit(r0)     // Catch: all -> 0x00a6
            int r8 = r8 + 1
        L_0x006c:
            r0 = r8
            java.text.SimpleDateFormat[] r1 = com.android.contacts.util.DateUtils.DATE_FORMATS
            int r1 = r1.length
            if (r0 >= r1) goto L_0x00ac
            java.text.SimpleDateFormat[] r0 = com.android.contacts.util.DateUtils.DATE_FORMATS
            r1 = r8
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            monitor-enter(r0)
            r0 = r7
            r1 = 0
            r0.setIndex(r1)     // Catch: all -> 0x00a6
            r0 = r9
            r1 = r4
            r2 = r7
            java.util.Date r0 = r0.parse(r1, r2)     // Catch: all -> 0x00a6
            r10 = r0
            r0 = r7
            int r0 = r0.getIndex()     // Catch: all -> 0x00a6
            r1 = r4
            int r1 = r1.length()     // Catch: all -> 0x00a6
            if (r0 != r1) goto L_0x0066
            r0 = r10
            r1 = 0
            java.util.Calendar r0 = getUtcDate(r0, r1)     // Catch: all -> 0x00a6
            r4 = r0
            r0 = r9
            monitor-exit(r0)     // Catch: all -> 0x00a6
            goto L_0x0023
        L_0x00a6:
            r4 = move-exception
            r0 = r9
            monitor-exit(r0)     // Catch: all -> 0x00a6
            r0 = r4
            throw r0
        L_0x00ac:
            r0 = 0
            r4 = r0
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.DateUtils.parseDate(java.lang.String, boolean):java.util.Calendar");
    }

    public static Date parseDate(String str) {
        Date date;
        int i = 0;
        ParsePosition parsePosition = new ParsePosition(0);
        while (true) {
            if (i >= DATE_FORMATS.length) {
                date = null;
                break;
            }
            SimpleDateFormat simpleDateFormat = DATE_FORMATS[i];
            synchronized (simpleDateFormat) {
                parsePosition.setIndex(0);
                date = simpleDateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() == str.length()) {
                    break;
                }
            }
            break;
            i++;
        }
        return date;
    }

    public static Date parseDateAsus(String str) {
        Date date;
        if (str == null) {
            date = null;
        } else {
            Date parseDate = parseDate(str);
            date = parseDate;
            if (parseDate == null) {
                date = parseDate(str.replaceFirst("-", new StringBuilder().append(new Date().getYear() + 1900).toString()));
            }
        }
        return date;
    }
}
