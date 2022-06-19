package com.callerid.block.util;

import android.annotation.SuppressLint;
import android.text.format.DateUtils;
import com.callerid.block.R$string;
import com.callerid.block.main.EZCallApplication;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.callerid.block.util.e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/e.class */
public class C1174e {
    /* renamed from: a */
    public static boolean m9863a(long j) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date(System.currentTimeMillis()));
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(new Date(j));
            if (calendar2.get(1) != calendar.get(1)) {
                return false;
            }
            return calendar2.get(6) - calendar.get(6) == -1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public static String m9862b(Date date) {
        return DateUtils.isToday(date.getTime()) ? EZCallApplication.m10163c().getResources().getString(R$string.today) : DateFormat.getDateInstance(2, new Locale(EZCallApplication.m10163c().f4578c)).format(date);
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: c */
    public static String m9861c(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", C1216t0.m9564m()).format(new Date(j));
    }

    /* renamed from: d */
    public static String m9860d(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MM-dd-yyyy", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy", C1216t0.m9564m());
        if (date == null) {
            return null;
        }
        long time = new Date().getTime() - date.getTime();
        if (time <= 32140800000L && simpleDateFormat3.format(date).equals(simpleDateFormat3.format(new Date()))) {
            if (time > 604800000) {
                return simpleDateFormat.format(date);
            }
            if (time > 86400000 && time <= 604800000) {
                long j = time / 86400000;
                return j + " " + EZCallApplication.m10163c().getResources().getString(R$string.days_ago);
            } else if (time > 3600000) {
                long j2 = time / 3600000;
                return j2 + " " + EZCallApplication.m10163c().getResources().getString(R$string.hr_ago);
            } else if (time <= 60000) {
                return "1 " + EZCallApplication.m10163c().getResources().getString(R$string.min_ago);
            } else {
                long j3 = time / 60000;
                return j3 + " " + EZCallApplication.m10163c().getResources().getString(R$string.min_ago);
            }
        }
        return simpleDateFormat2.format(date);
    }

    /* renamed from: e */
    public static String m9859e(long j) {
        return new SimpleDateFormat("MM-dd-yyyy", C1216t0.m9564m()).format(new Date(j));
    }

    /* renamed from: f */
    public static String m9858f(long j) {
        return new SimpleDateFormat("yyyyMMddHHmmss", C1216t0.m9564m()).format(new Date(j));
    }

    /* renamed from: g */
    public static String m9857g(Date date) {
        return SimpleDateFormat.getTimeInstance(3).format(date);
    }

    /* renamed from: h */
    public static String m9856h(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yy", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat4 = new SimpleDateFormat("E", C1216t0.m9564m());
        if (date == null) {
            return "";
        }
        long time = new Date().getTime() - date.getTime();
        if (time <= 32140800000L && simpleDateFormat2.format(date).equals(simpleDateFormat2.format(new Date())) && time <= 604800000) {
            if (time <= 86400000 && simpleDateFormat3.format(date).equals(simpleDateFormat3.format(new Date()))) {
                return SimpleDateFormat.getTimeInstance(3).format(date);
            }
            return simpleDateFormat4.format(date);
        }
        return simpleDateFormat.format(date);
    }

    /* renamed from: i */
    public static String m9855i(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEEE, dd MMMM", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("EEEE, dd MMMM yyyy", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy", C1216t0.m9564m());
        SimpleDateFormat simpleDateFormat4 = new SimpleDateFormat("yyyy-MM-dd", C1216t0.m9564m());
        if (date == null) {
            return "";
        }
        if (new Date().getTime() - date.getTime() <= 32140800000L && simpleDateFormat3.format(date).equals(simpleDateFormat3.format(new Date()))) {
            return !simpleDateFormat4.format(date).equals(simpleDateFormat4.format(new Date())) ? simpleDateFormat.format(date) : EZCallApplication.m10163c().getResources().getString(R$string.today);
        }
        return simpleDateFormat2.format(date);
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: j */
    public static String m9854j(long j) {
        return new SimpleDateFormat("HH:mm", C1216t0.m9564m()).format(new Date(j));
    }

    /* renamed from: k */
    public static boolean m9853k(Date date, Date date2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", C1216t0.m9564m());
        return simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }
}
