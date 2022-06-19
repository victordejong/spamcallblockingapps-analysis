package com.callapp.contacts.util.date;

import android.text.format.DateFormat;
import android.util.Pair;
import com.callapp.common.model.json.JSONOpeningHours;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.DatePref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DateRange;
import com.callapp.framework.util.CollectionUtils;
import java.text.AttributedCharacterIterator;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/date/DateUtils.class */
public class DateUtils {

    /* renamed from: a */
    private static final String[] f28195a = {"yyyy-MM-dd", "yyyy-dd-MM", "yyyy-MMMM-dd", "yyyy-dd-MMMM", "MMMM, dd", "dd, MMMM", "yyyy/MMMM/dd", "yyyy/dd/MMMM", "yyyy/MM/dd", "yyyy/dd/MM", "MM/dd/yyyy", "dd/MM/yyyy", "MMMM/dd/yyyy", "dd/MMMM/yyyy", "MM-dd-yyyy", "dd-MM-yyyy", "MMMM dd, yyyy", "dd MMMM, yyyy", "MMMM dd yyyy", "dd MMMM yyyy", "-/MM/dd", "-/dd/MM", "--MM-dd", "--dd-MM", "-MM-dd", "-dd-MM", "MM-dd", "dd-MM", "MM/dd/-", "dd/MM/-", "MM/dd/", "dd/MM/", "/MM/dd", "/dd/MM", "MM/dd", "dd/MM"};

    /* renamed from: b */
    private static final String[] f28196b = {"yyyy-MM-dd", "yyyy-MMMM-dd", "MMMM, dd", "yyyy/MMMM/dd", "yyyy/MM/dd", "MM/dd/yyyy", "MMMM/dd/yyyy", "MM-dd-yyyy", "MMMM dd, yyyy", "MMMM dd yyyy", "-/MM/dd", "--MM-dd", "-MM-dd", "MM-dd", "MM/dd/-", "MM/dd/", "/MM/dd", "MM/dd"};

    /* renamed from: c */
    private static final String[] f28197c = {"yyyy-dd-MM", "yyyy-dd-MMMM", "dd, MMMM", "yyyy/dd/MMMM", "yyyy/dd/MM", "dd/MM/yyyy", "dd/MMMM/yyyy", "dd-MM-yyyy", "dd MMMM, yyyy", "dd MMMM yyyy", "-/dd/MM", "--dd-MM", "-dd-MM", "dd-MM", "dd/MM/-", "dd/MM/", "/dd/MM", "dd/MM"};

    /* renamed from: a */
    public static long m27124a(Date date, Date date2, TimeUnit timeUnit) {
        if (date == null || date2 == null) {
            return -1L;
        }
        return timeUnit.convert(date2.getTime() - date.getTime(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    private static CharSequence m27134a(long j, int i) {
        CharSequence charSequence = "";
        if (j == 0) {
            return "";
        }
        try {
            charSequence = android.text.format.DateUtils.getRelativeTimeSpanString(j, System.currentTimeMillis(), Constants.MINUTE_IN_MILLIS, i);
        } catch (Exception e) {
            CLog.m27608a(DateUtils.class, e, "");
        }
        return charSequence;
    }

    /* renamed from: a */
    public static CharSequence m27133a(long j, boolean z) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return m27134a(j, (!z || calendar.get(1) == 1970) ? 262152 : 262144);
    }

    /* renamed from: a */
    public static CharSequence m27127a(Date date) {
        return m27123a(date, true);
    }

    /* renamed from: a */
    private static CharSequence m27123a(Date date, boolean z) {
        if (android.text.format.DateUtils.isToday(date.getTime())) {
            return "(" + DateFormat.getTimeFormat(CallAppApplication.get()).format(date) + ")";
        } else if (!z) {
            return m27134a(date.getTime(), 262144).toString();
        } else {
            return m27134a(date.getTime(), 262144).toString() + StringUtils.SPACE + DateFormat.getTimeFormat(CallAppApplication.get()).format(date);
        }
    }

    /* renamed from: a */
    public static String m27137a(int i) {
        long j = i;
        return String.format("%dm %ds", Long.valueOf(TimeUnit.SECONDS.toMinutes(j)), Long.valueOf(TimeUnit.SECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.SECONDS.toMinutes(j))));
    }

    /* renamed from: a */
    public static String m27132a(JSONOpeningHours jSONOpeningHours) {
        if (jSONOpeningHours != null) {
            int i = -1;
            switch (Calendar.getInstance().get(7)) {
                case 1:
                    i = 1;
                    break;
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 3;
                    break;
                case 4:
                    i = 4;
                    break;
                case 5:
                    i = 5;
                    break;
                case 6:
                    i = 6;
                    break;
                case 7:
                    i = 7;
                    break;
            }
            Collection<String> hoursPerDay = jSONOpeningHours.getHoursPerDay(i);
            if (!CollectionUtils.m26068b(hoursPerDay)) {
                return null;
            }
            String str = "Today ";
            boolean z = true;
            for (String str2 : hoursPerDay) {
                String str3 = str;
                if (!z) {
                    str3 = str + " ,";
                }
                z = false;
                str = str3 + str2;
            }
            return str;
        }
        return null;
    }

    /* renamed from: a */
    public static Calendar m27138a() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(calendar.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
        calendar.set(14, 0);
        return calendar;
    }

    /* renamed from: a */
    public static Calendar m27136a(int i, int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(i2, i);
        return calendar;
    }

    /* renamed from: a */
    public static Date m27130a(String str) {
        return m27129a(str, Prefs.f26310bh.isNotNull() ? Prefs.f26310bh.get().booleanValue() ? f28196b : f28197c : f28195a);
    }

    /* renamed from: a */
    private static Date m27129a(String str, String[] strArr) {
        boolean z;
        Exception e;
        Exception exc = null;
        Date date = null;
        boolean z2 = false;
        int i = 0;
        while (!z2 && i < strArr.length) {
            Date date2 = date;
            try {
                Date date3 = date;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strArr[i]);
                Date date4 = date;
                simpleDateFormat.setLenient(false);
                Date date5 = date;
                Date date6 = date;
                ParsePosition parsePosition = new ParsePosition(0);
                Date date7 = date;
                Date parse = simpleDateFormat.parse(str, parsePosition);
                e = exc;
                date2 = parse;
                z = z2;
                if (parse != null) {
                    e = exc;
                    date2 = parse;
                    z = z2;
                    if (parsePosition.getIndex() == str.length()) {
                        z = true;
                        e = exc;
                        date2 = parse;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                z = false;
            }
            i++;
            exc = e;
            date = date2;
            z2 = z;
        }
        if (!z2 && exc != null) {
            CLog.m27611a(DateUtils.class, exc.getMessage());
        }
        return date;
    }

    /* renamed from: a */
    public static boolean m27135a(long j) {
        Date date = new Date(j);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(10, 48);
        return calendar.getTime().after(calendar2.getTime());
    }

    /* renamed from: a */
    public static boolean m27131a(DatePref datePref) {
        Date date = datePref.get();
        if (date != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -2);
            return date.after(calendar.getTime());
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m27128a(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The dates must not be null");
        }
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    /* renamed from: a */
    public static boolean m27126a(Date date, int i) {
        return new Date(date.getTime() + (Singletons.get().getApplication().getResources().getInteger(i) * 60 * 1000)).before(new Date());
    }

    /* renamed from: a */
    public static boolean m27125a(Date date, Date date2) {
        return date != null && date2 != null && date.getYear() == date2.getYear() && date.getMonth() == date2.getMonth() && date.getDate() == date2.getDate();
    }

    /* renamed from: b */
    public static long m27118b(Date date, Date date2) {
        if (date == null || date2 == null) {
            return 0L;
        }
        return Math.abs((date2.getTime() - date.getTime()) / 86400000);
    }

    /* renamed from: b */
    public static CharSequence m27120b(Date date) {
        return m27123a(date, false);
    }

    /* renamed from: b */
    public static String m27122b(int i) {
        int i2 = i % 60;
        int i3 = (i / 60) % 60;
        int i4 = (i / 3600) % 24;
        return i4 > 0 ? String.format("%02d:%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(i2)) : String.format("%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    /* renamed from: b */
    public static List<Pair<String, Collection<String>>> m27121b(JSONOpeningHours jSONOpeningHours) {
        int i;
        Pair<String, Collection<String>> pair;
        String[] weekdays = DateFormatSymbols.getInstance().getWeekdays();
        ArrayList arrayList = null;
        if (jSONOpeningHours != null) {
            ArrayList arrayList2 = new ArrayList(7);
            Map<Integer, Collection<String>> openingHoursMap = jSONOpeningHours.getOpeningHoursMap();
            int i2 = Calendar.getInstance().get(7) - 1;
            int i3 = i2 + 1;
            arrayList2.add(0, new Pair<>(weekdays[i3], openingHoursMap.get(Integer.valueOf(i2))));
            while (i3 < 7) {
                int i4 = i3 + 1;
                arrayList2.add(new Pair<>(weekdays[i4], openingHoursMap.get(Integer.valueOf(i3))));
                i3 = i4;
            }
            int i5 = i2 == 0 ? 1 : 0;
            while (true) {
                int i6 = i5;
                if (i6 >= i2) {
                    break;
                }
                int i7 = i6 + 1;
                arrayList2.add(new Pair<>(weekdays[i7], openingHoursMap.get(Integer.valueOf(i6))));
                i5 = i7;
            }
            int i8 = 0;
            int i9 = 0;
            Pair<String, Collection<String>> pair2 = null;
            while (true) {
                Pair<String, Collection<String>> pair3 = pair2;
                i = i9;
                pair = pair3;
                if (i8 >= 7) {
                    break;
                }
                Pair<String, Collection<String>> pair4 = arrayList2.get(i8);
                int i10 = i9;
                Pair<String, Collection<String>> pair5 = pair3;
                if (pair4 != null) {
                    i10 = i9;
                    pair5 = pair3;
                    if (CollectionUtils.m26068b((Collection) pair4.second)) {
                        int i11 = i9 + 1;
                        i = i11;
                        pair = pair4;
                        if (i11 > 1) {
                            break;
                        }
                        pair5 = pair4;
                        i10 = i11;
                    } else {
                        continue;
                    }
                }
                i8++;
                i9 = i10;
                pair2 = pair5;
            }
            if (i == 1 && CollectionUtils.m26068b((Collection) pair.second) && com.callapp.framework.util.StringUtils.m26057a(((ArrayList) pair.second).get(0), "00:00 - 00:00")) {
                for (int i12 = 0; i12 < 7; i12++) {
                    arrayList2.set(i12, new Pair<>(pair.first, Collections.singletonList("Open 24 hours")));
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m27119b(Date date, int i) {
        return date.before(m27136a(-Singletons.get().getApplication().getResources().getInteger(i), 12).getTime());
    }

    /* renamed from: c */
    public static CharSequence m27117c(Date date) {
        return m27134a(date.getTime(), 262144);
    }

    /* renamed from: d */
    public static String m27116d(Date date) {
        String str;
        StringBuilder sb = new StringBuilder();
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -7);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(5, 7);
        Calendar calendar3 = Calendar.getInstance();
        calendar3.setTime(date);
        boolean z = true;
        if (android.text.format.DateUtils.isToday(calendar3.getTimeInMillis())) {
            str = "";
        } else if (android.text.format.DateUtils.isToday(calendar3.getTimeInMillis() - 86400000)) {
            str = Activities.getString(2131887909);
        } else if (android.text.format.DateUtils.isToday(calendar3.getTimeInMillis() + 86400000)) {
            str = Activities.getString(2131888250);
        } else if (!calendar3.after(calendar) || !calendar3.before(calendar2)) {
            str = m27115e(date);
            z = false;
        } else {
            str = calendar3.getDisplayName(7, 2, Locale.getDefault());
        }
        sb.append(str);
        if (z) {
            String format = DateFormat.getTimeFormat(CallAppApplication.get()).format(date);
            sb.append(StringUtils.SPACE);
            sb.append(format);
        }
        return sb.toString().trim();
    }

    /* renamed from: e */
    private static String m27115e(Date date) {
        java.text.DateFormat dateFormat = DateFormat.getDateFormat(CallAppApplication.get());
        try {
            AttributedCharacterIterator formatToCharacterIterator = dateFormat.formatToCharacterIterator(date);
            StringBuilder sb = new StringBuilder();
            char current = formatToCharacterIterator.current();
            while (true) {
                char c = current;
                if (c == 65535) {
                    break;
                }
                if (!formatToCharacterIterator.getAttributes().containsKey(DateFormat.Field.YEAR)) {
                    sb.append(c);
                }
                current = formatToCharacterIterator.next();
            }
            String sb2 = sb.toString();
            int length = sb2.length() - 1;
            int i = 0;
            if (!com.callapp.framework.util.StringUtils.m26046b(sb2.charAt(0))) {
                i = 1;
            }
            int i2 = length;
            if (!com.callapp.framework.util.StringUtils.m26046b(sb2.charAt(length))) {
                i2 = length - 1;
            }
            return sb2.substring(i, i2 + 1);
        } catch (Exception e) {
            CLog.m27608a(DateUtils.class, e, "Error stripping year from date: ".concat(String.valueOf(dateFormat.format(date))));
            return dateFormat.format(date);
        }
    }

    public static DateRange getDateRangeForMeeting() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(10, 2);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(calendar.getTime());
        calendar2.add(12, 30);
        return new DateRange(calendar.getTimeInMillis(), calendar2.getTimeInMillis());
    }

    public static long getTodayStartTime() {
        return m27138a().getTime().getTime();
    }

    public static void setParseLocalDatePref(String str) {
        if (Prefs.f26310bh.isNull()) {
            if (m27129a(str, f28196b) != null) {
                Prefs.f26310bh.set(Boolean.TRUE);
                AnalyticsManager.get().m28450a(Constants.SETTINGS, "using event date month format");
            } else if (m27129a(str, f28197c) == null) {
                AnalyticsManager.get().m28450a(Constants.SETTINGS, "using event date general format");
            } else {
                Prefs.f26310bh.set(Boolean.FALSE);
                AnalyticsManager.get().m28450a(Constants.SETTINGS, "using event date day format");
            }
        }
    }
}
