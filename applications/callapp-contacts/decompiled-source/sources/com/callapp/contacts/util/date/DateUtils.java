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

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f16178a = {"yyyy-MM-dd", "yyyy-dd-MM", "yyyy-MMMM-dd", "yyyy-dd-MMMM", "MMMM, dd", "dd, MMMM", "yyyy/MMMM/dd", "yyyy/dd/MMMM", "yyyy/MM/dd", "yyyy/dd/MM", "MM/dd/yyyy", "dd/MM/yyyy", "MMMM/dd/yyyy", "dd/MMMM/yyyy", "MM-dd-yyyy", "dd-MM-yyyy", "MMMM dd, yyyy", "dd MMMM, yyyy", "MMMM dd yyyy", "dd MMMM yyyy", "-/MM/dd", "-/dd/MM", "--MM-dd", "--dd-MM", "-MM-dd", "-dd-MM", "MM-dd", "dd-MM", "MM/dd/-", "dd/MM/-", "MM/dd/", "dd/MM/", "/MM/dd", "/dd/MM", "MM/dd", "dd/MM"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f16179b = {"yyyy-MM-dd", "yyyy-MMMM-dd", "MMMM, dd", "yyyy/MMMM/dd", "yyyy/MM/dd", "MM/dd/yyyy", "MMMM/dd/yyyy", "MM-dd-yyyy", "MMMM dd, yyyy", "MMMM dd yyyy", "-/MM/dd", "--MM-dd", "-MM-dd", "MM-dd", "MM/dd/-", "MM/dd/", "/MM/dd", "MM/dd"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f16180c = {"yyyy-dd-MM", "yyyy-dd-MMMM", "dd, MMMM", "yyyy/dd/MMMM", "yyyy/dd/MM", "dd/MM/yyyy", "dd/MMMM/yyyy", "dd-MM-yyyy", "dd MMMM, yyyy", "dd MMMM yyyy", "-/dd/MM", "--dd-MM", "-dd-MM", "dd-MM", "dd/MM/-", "dd/MM/", "/dd/MM", "dd/MM"};

    public static long a(Date date, Date date2, TimeUnit timeUnit) {
        if (date == null || date2 == null) {
            return -1L;
        }
        return timeUnit.convert(date2.getTime() - date.getTime(), TimeUnit.MILLISECONDS);
    }

    private static CharSequence a(long j, int i) {
        CharSequence charSequence = "";
        if (j == 0) {
            return "";
        }
        try {
            charSequence = android.text.format.DateUtils.getRelativeTimeSpanString(j, System.currentTimeMillis(), Constants.MINUTE_IN_MILLIS, i);
        } catch (Exception e) {
            CLog.a(DateUtils.class, e, "");
        }
        return charSequence;
    }

    public static CharSequence a(long j, boolean z) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        return a(j, (!z || instance.get(1) == 1970) ? 262152 : 262144);
    }

    public static CharSequence a(Date date) {
        return a(date, true);
    }

    private static CharSequence a(Date date, boolean z) {
        if (android.text.format.DateUtils.isToday(date.getTime())) {
            return "(" + DateFormat.getTimeFormat(CallAppApplication.get()).format(date) + ")";
        } else if (!z) {
            return a(date.getTime(), 262144).toString();
        } else {
            return a(date.getTime(), 262144).toString() + StringUtils.SPACE + DateFormat.getTimeFormat(CallAppApplication.get()).format(date);
        }
    }

    public static String a(int i) {
        long j = i;
        return String.format("%dm %ds", Long.valueOf(TimeUnit.SECONDS.toMinutes(j)), Long.valueOf(TimeUnit.SECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.SECONDS.toMinutes(j))));
    }

    public static String a(JSONOpeningHours jSONOpeningHours) {
        if (jSONOpeningHours == null) {
            return null;
        }
        int i = -1;
        boolean z = true;
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
        if (!CollectionUtils.b(hoursPerDay)) {
            return null;
        }
        String str = "Today ";
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

    public static Calendar a() {
        Calendar instance = Calendar.getInstance();
        instance.set(instance.get(1), instance.get(2), instance.get(5), 0, 0, 0);
        instance.set(14, 0);
        return instance;
    }

    public static Calendar a(int i, int i2) {
        Calendar instance = Calendar.getInstance();
        instance.add(i2, i);
        return instance;
    }

    public static Date a(String str) {
        return a(str, Prefs.bh.isNotNull() ? Prefs.bh.get().booleanValue() ? f16179b : f16180c : f16178a);
    }

    private static Date a(String str, String[] strArr) {
        Exception e = null;
        Date date = null;
        boolean z = false;
        for (int i = 0; !z && i < strArr.length; i++) {
            date = date;
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strArr[i]);
                simpleDateFormat.setLenient(false);
                ParsePosition parsePosition = new ParsePosition(0);
                Date parse = simpleDateFormat.parse(str, parsePosition);
                e = e;
                date = parse;
                z = z;
                if (parse != null) {
                    e = e;
                    date = parse;
                    z = z;
                    if (parsePosition.getIndex() == str.length()) {
                        z = true;
                        e = e;
                        date = parse;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                z = false;
            }
        }
        if (!z && e != null) {
            CLog.a(DateUtils.class, e.getMessage());
        }
        return date;
    }

    public static boolean a(long j) {
        Date date = new Date(j);
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        Calendar instance2 = Calendar.getInstance();
        instance2.add(10, 48);
        return instance.getTime().after(instance2.getTime());
    }

    public static boolean a(DatePref datePref) {
        Date date = datePref.get();
        if (date == null) {
            return false;
        }
        Calendar instance = Calendar.getInstance();
        instance.add(5, -2);
        return date.after(instance.getTime());
    }

    public static boolean a(Calendar calendar, Calendar calendar2) {
        if (calendar != null && calendar2 != null) {
            return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
        }
        throw new IllegalArgumentException("The dates must not be null");
    }

    public static boolean a(Date date, int i) {
        return new Date(date.getTime() + (Singletons.get().getApplication().getResources().getInteger(i) * 60 * 1000)).before(new Date());
    }

    public static boolean a(Date date, Date date2) {
        return date != null && date2 != null && date.getYear() == date2.getYear() && date.getMonth() == date2.getMonth() && date.getDate() == date2.getDate();
    }

    public static long b(Date date, Date date2) {
        if (date == null || date2 == null) {
            return 0L;
        }
        return Math.abs((date2.getTime() - date.getTime()) / 86400000);
    }

    public static CharSequence b(Date date) {
        return a(date, false);
    }

    public static String b(int i) {
        int i2 = i % 60;
        int i3 = (i / 60) % 60;
        int i4 = (i / 3600) % 24;
        return i4 > 0 ? String.format("%02d:%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(i2)) : String.format("%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    public static List<Pair<String, Collection<String>>> b(JSONOpeningHours jSONOpeningHours) {
        int i;
        Pair<String, Collection<String>> pair;
        String[] weekdays = DateFormatSymbols.getInstance().getWeekdays();
        ArrayList arrayList = null;
        Pair<String, Collection<String>> pair2 = null;
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
            while (i5 < i2) {
                int i6 = i5 + 1;
                arrayList2.add(new Pair<>(weekdays[i6], openingHoursMap.get(Integer.valueOf(i5))));
                i5 = i6;
            }
            int i7 = 0;
            int i8 = 0;
            while (true) {
                i = i8;
                pair = pair2;
                if (i7 >= 7) {
                    break;
                }
                Pair<String, Collection<String>> pair3 = arrayList2.get(i7);
                i8 = i8;
                pair2 = pair2;
                if (pair3 != null) {
                    i8 = i8;
                    pair2 = pair2;
                    if (CollectionUtils.b((Collection) pair3.second)) {
                        int i9 = i8 + 1;
                        i = i9;
                        pair = pair3;
                        if (i9 > 1) {
                            break;
                        }
                        pair2 = pair3;
                        i8 = i9;
                    } else {
                        continue;
                    }
                }
                i7++;
            }
            if (i == 1 && CollectionUtils.b((Collection) pair.second) && com.callapp.framework.util.StringUtils.a(((ArrayList) pair.second).get(0), "00:00 - 00:00")) {
                for (int i10 = 0; i10 < 7; i10++) {
                    arrayList2.set(i10, new Pair<>(pair.first, Collections.singletonList("Open 24 hours")));
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    public static boolean b(Date date, int i) {
        return date.before(a(-Singletons.get().getApplication().getResources().getInteger(i), 12).getTime());
    }

    public static CharSequence c(Date date) {
        return a(date.getTime(), 262144);
    }

    public static String d(Date date) {
        String str;
        StringBuilder sb = new StringBuilder();
        Calendar instance = Calendar.getInstance();
        instance.add(5, -7);
        Calendar instance2 = Calendar.getInstance();
        instance2.add(5, 7);
        Calendar instance3 = Calendar.getInstance();
        instance3.setTime(date);
        boolean z = true;
        if (android.text.format.DateUtils.isToday(instance3.getTimeInMillis())) {
            str = "";
        } else if (android.text.format.DateUtils.isToday(instance3.getTimeInMillis() - 86400000)) {
            str = Activities.getString(2131887909);
        } else if (android.text.format.DateUtils.isToday(instance3.getTimeInMillis() + 86400000)) {
            str = Activities.getString(2131888250);
        } else if (!instance3.after(instance) || !instance3.before(instance2)) {
            str = e(date);
            z = false;
        } else {
            str = instance3.getDisplayName(7, 2, Locale.getDefault());
        }
        sb.append(str);
        if (z) {
            String format = DateFormat.getTimeFormat(CallAppApplication.get()).format(date);
            sb.append(StringUtils.SPACE);
            sb.append(format);
        }
        return sb.toString().trim();
    }

    private static String e(Date date) {
        java.text.DateFormat dateFormat = DateFormat.getDateFormat(CallAppApplication.get());
        try {
            AttributedCharacterIterator formatToCharacterIterator = dateFormat.formatToCharacterIterator(date);
            StringBuilder sb = new StringBuilder();
            char current = formatToCharacterIterator.current();
            while (current != 65535) {
                if (!formatToCharacterIterator.getAttributes().containsKey(DateFormat.Field.YEAR)) {
                    sb.append(current);
                }
                current = formatToCharacterIterator.next();
            }
            String sb2 = sb.toString();
            int length = sb2.length() - 1;
            int i = 0;
            if (!com.callapp.framework.util.StringUtils.b(sb2.charAt(0))) {
                i = 1;
            }
            int i2 = length;
            if (!com.callapp.framework.util.StringUtils.b(sb2.charAt(length))) {
                i2 = length - 1;
            }
            return sb2.substring(i, i2 + 1);
        } catch (Exception e) {
            CLog.a(DateUtils.class, e, "Error stripping year from date: ".concat(String.valueOf(dateFormat.format(date))));
            return dateFormat.format(date);
        }
    }

    public static DateRange getDateRangeForMeeting() {
        Calendar instance = Calendar.getInstance();
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        instance.add(10, 2);
        Calendar instance2 = Calendar.getInstance();
        instance2.setTime(instance.getTime());
        instance2.add(12, 30);
        return new DateRange(instance.getTimeInMillis(), instance2.getTimeInMillis());
    }

    public static long getTodayStartTime() {
        return a().getTime().getTime();
    }

    public static void setParseLocalDatePref(String str) {
        if (!Prefs.bh.isNull()) {
            return;
        }
        if (a(str, f16179b) != null) {
            Prefs.bh.set(Boolean.TRUE);
            AnalyticsManager.get().a(Constants.SETTINGS, "using event date month format");
        } else if (a(str, f16180c) != null) {
            Prefs.bh.set(Boolean.FALSE);
            AnalyticsManager.get().a(Constants.SETTINGS, "using event date day format");
        } else {
            AnalyticsManager.get().a(Constants.SETTINGS, "using event date general format");
        }
    }
}
