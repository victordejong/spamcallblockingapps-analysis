package com.allinone.callerid.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.format.DateUtils;
import android.text.format.Time;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.allinone.callerid.util.i */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/i.class */
public class C3771i {
    /* renamed from: a */
    public static boolean m24209a(long j, String str) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date(System.currentTimeMillis()));
            calendar.setTimeZone(TimeZone.getTimeZone(str));
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(new Date(j));
            calendar2.setTimeZone(TimeZone.getTimeZone(str));
            if (calendar2.get(1) != calendar.get(1)) {
                return false;
            }
            return calendar2.get(6) - calendar.get(6) == -1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x012e, code lost:
        if (r0.get(7) != 7) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x016e, code lost:
        if (r0.get(7) != 7) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0174, code lost:
        r5 = "worktime";
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m24208b(java.util.Date r5) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.util.C3771i.m24208b(java.util.Date):java.lang.String");
    }

    /* renamed from: c */
    public static String m24207c(Date date) {
        return DateUtils.isToday(date.getTime()) ? EZCallApplication.m26146c().getResources().getString(R$string.today) : DateFormat.getDateInstance(2, new Locale(EZCallApplication.m26146c().f9914h)).format(date);
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: d */
    public static String m24206d(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH).format(new Date(j));
    }

    /* renamed from: e */
    public static String m24205e(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(EZCallApplication.m26146c().getResources().getString(R$string.format_month_day_gang), C3767h1.m24213y());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(EZCallApplication.m26146c().getResources().getString(R$string.format_year_month_day_gang), C3767h1.m24213y());
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy", Locale.ENGLISH);
        if (date == null) {
            return null;
        }
        long time = new Date().getTime() - date.getTime();
        if (time <= 32140800000L && simpleDateFormat3.format(date).equals(simpleDateFormat3.format(new Date()))) {
            int i = (time > 604800000L ? 1 : (time == 604800000L ? 0 : -1));
            if (i > 0) {
                return simpleDateFormat.format(date);
            }
            if (time > 86400000 && i <= 0) {
                long j = time / 86400000;
                return j + " " + EZCallApplication.m26146c().getResources().getString(R$string.days_ago);
            } else if (time > 3600000) {
                long j2 = time / 3600000;
                return j2 + " " + EZCallApplication.m26146c().getResources().getString(R$string.hr_ago);
            } else if (time <= 60000) {
                return "1 " + EZCallApplication.m26146c().getResources().getString(R$string.min_ago);
            } else {
                long j3 = time / 60000;
                return j3 + " " + EZCallApplication.m26146c().getResources().getString(R$string.min_ago);
            }
        }
        return simpleDateFormat2.format(date);
    }

    /* renamed from: f */
    public static String m24204f(long j) {
        return new SimpleDateFormat("yyyy-MM-dd", C3767h1.m24213y()).format(new Date(j));
    }

    /* renamed from: g */
    public static String m24203g(long j) {
        return new SimpleDateFormat("yyyyMMddHHmmss", Locale.ENGLISH).format(new Date(j));
    }

    /* renamed from: h */
    public static String m24202h(Date date) {
        return SimpleDateFormat.getTimeInstance(3).format(date);
    }

    /* renamed from: i */
    public static String m24201i(Date date) {
        return date == null ? "" : new SimpleDateFormat("HH:mm", C3767h1.m24213y()).format(date);
    }

    /* renamed from: j */
    public static String m24200j(Date date) {
        return date == null ? "" : new SimpleDateFormat("MM/dd HH:mm", C3767h1.m24213y()).format(date);
    }

    /* renamed from: k */
    public static String m24199k(Date date) {
        return DateFormat.getDateInstance(2, new Locale(EZCallApplication.m26146c().f9914h)).format(date);
    }

    /* renamed from: l */
    public static String m24198l(int i, int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, i);
        calendar.set(12, i2);
        return SimpleDateFormat.getTimeInstance(3).format(calendar.getTime());
    }

    /* renamed from: m */
    public static String m24197m(Date date) {
        return SimpleDateFormat.getTimeInstance(3, new Locale(EZCallApplication.m26146c().f9914h)).format(date);
    }

    /* renamed from: n */
    public static String m24196n(Date date) {
        return SimpleDateFormat.getDateTimeInstance(2, 3, new Locale(EZCallApplication.m26146c().f9914h)).format(date);
    }

    /* renamed from: o */
    public static String m24195o(int i) {
        String str;
        switch (i) {
            case 1:
                str = Week.MONDAY.getName();
                break;
            case 2:
                str = Week.TUESDAY.getName();
                break;
            case 3:
                str = Week.WEDNESDAY.getName();
                break;
            case 4:
                str = Week.THURSDAY.getName();
                break;
            case 5:
                str = Week.FRIDAY.getName();
                break;
            case 6:
                str = Week.SATURDAY.getName();
                break;
            case 7:
                str = Week.SUNDAY.getName();
                break;
            default:
                str = null;
                break;
        }
        return str;
    }

    /* renamed from: p */
    public static boolean m24194p(Context context) {
        return android.text.format.DateFormat.is24HourFormat(context);
    }

    /* renamed from: q */
    public static boolean m24193q(int i, int i2, int i3, int i4) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        Time time = new Time();
        time.set(currentTimeMillis);
        Time time2 = new Time();
        time2.set(currentTimeMillis);
        time2.hour = i;
        time2.minute = i2;
        Time time3 = new Time();
        time3.set(currentTimeMillis);
        time3.hour = i3;
        time3.minute = i4;
        if (!time2.before(time3)) {
            time2.set(time2.toMillis(true) - 86400000);
            z = false;
            if (!time.before(time2)) {
                z = false;
                if (!time.after(time3)) {
                    z = true;
                }
            }
            Time time4 = new Time();
            time4.set(time2.toMillis(true) + 86400000);
            if (!time.before(time4)) {
                z = true;
            }
        } else {
            z = false;
            if (!time.before(time2)) {
                z = false;
                if (!time.after(time3)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: r */
    public static boolean m24192r(Date date, Date date2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        return simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }

    /* renamed from: s */
    public static boolean m24191s(Date date, Date date2, String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(str));
        return simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }
}
