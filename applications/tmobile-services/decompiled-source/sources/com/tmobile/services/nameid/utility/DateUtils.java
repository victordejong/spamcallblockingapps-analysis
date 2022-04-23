package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.tmobile.services.C1517R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DateUtils.class */
public class DateUtils {

    /* renamed from: a */
    public static final Long f14252a;

    /* renamed from: b */
    public static final Long f14253b;

    /* renamed from: c */
    public static final Long f14254c;

    /* renamed from: d */
    public static final Long f14255d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DateUtils$RelativeDateInfo.class */
    public static class RelativeDateInfo {

        /* renamed from: a */
        private boolean f14256a;

        /* renamed from: b */
        private boolean f14257b;

        /* renamed from: c */
        private boolean f14258c;

        /* renamed from: d */
        private boolean f14259d;

        private RelativeDateInfo() {
        }

        /* renamed from: a */
        public boolean m5785a() {
            return this.f14257b;
        }

        /* renamed from: b */
        public boolean m5784b() {
            return this.f14256a;
        }

        /* renamed from: c */
        public boolean m5783c() {
            return this.f14258c;
        }

        /* renamed from: d */
        public boolean m5782d() {
            return this.f14259d;
        }

        /* renamed from: e */
        public void m5781e(boolean z) {
        }

        /* renamed from: f */
        public void m5780f(boolean z) {
            this.f14257b = z;
        }

        /* renamed from: g */
        public void m5779g(boolean z) {
            this.f14256a = z;
        }

        /* renamed from: h */
        public void m5778h(boolean z) {
            this.f14258c = z;
        }

        /* renamed from: i */
        public void m5777i(boolean z) {
            this.f14259d = z;
        }
    }

    static {
        Long l = 1000L;
        f14252a = l;
        Long valueOf = Long.valueOf(l.longValue() * 60);
        f14253b = valueOf;
        Long valueOf2 = Long.valueOf(valueOf.longValue() * 60);
        f14254c = valueOf2;
        f14255d = Long.valueOf(valueOf2.longValue() * 24);
    }

    private DateUtils() {
        throw new IllegalAccessError("This is a utility class, it shouldn't be created");
    }

    /* renamed from: a */
    public static Date m5794a(Date date, int i) {
        Calendar instance = Calendar.getInstance();
        Date date2 = new Date(date.getTime());
        instance.setTime(date2);
        instance.add(5, i);
        date2.setTime(instance.getTime().getTime());
        return date2;
    }

    /* renamed from: b */
    private static RelativeDateInfo m5793b(Date date) {
        Calendar instance = Calendar.getInstance();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Calendar.getInstance().getTimeZone());
        gregorianCalendar.setTime(date);
        int i = instance.get(6);
        int i2 = instance.get(2);
        boolean z = true;
        int i3 = instance.get(1);
        int i4 = gregorianCalendar.get(6);
        int i5 = gregorianCalendar.get(2);
        int i6 = gregorianCalendar.get(1);
        RelativeDateInfo relativeDateInfo = new RelativeDateInfo();
        relativeDateInfo.m5779g(i3 == i6);
        relativeDateInfo.m5781e(relativeDateInfo.m5784b() && i2 + 1 == i5 + 1);
        relativeDateInfo.m5780f(i < i4 + 7);
        relativeDateInfo.m5778h(i == i4);
        if (i != i4 + 1) {
            z = false;
        }
        relativeDateInfo.m5777i(z);
        return relativeDateInfo;
    }

    /* renamed from: c */
    public static String m5792c(Date date, Context context) {
        RelativeDateInfo b = m5793b(date);
        return !b.m5784b() ? new SimpleDateFormat("MMMM d, yyyy", DeviceInfoUtils.m5758f()).format(date) : b.m5783c() ? context.getString(C1517R.string.general_text_today) : b.m5782d() ? context.getString(C1517R.string.general_text_yesterday) : b.m5785a() ? new SimpleDateFormat("EEEE", DeviceInfoUtils.m5758f()).format(date) : new SimpleDateFormat("MMMM d", DeviceInfoUtils.m5758f()).format(date);
    }

    /* renamed from: d */
    public static long m5791d(String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone(str));
        gregorianCalendar.set(11, 0);
        gregorianCalendar.set(12, 0);
        gregorianCalendar.set(13, 0);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    /* renamed from: e */
    public static String m5790e(Date date, Context context) {
        RelativeDateInfo b = m5793b(date);
        return !b.m5784b() ? new SimpleDateFormat("MMM d, yyyy", DeviceInfoUtils.m5758f()).format(date) : b.m5783c() ? m5789f(date) : b.m5782d() ? context.getString(C1517R.string.general_text_yesterday) : b.m5785a() ? new SimpleDateFormat("EEEE", DeviceInfoUtils.m5758f()).format(date) : new SimpleDateFormat("MMM d", DeviceInfoUtils.m5758f()).format(date);
    }

    /* renamed from: f */
    public static String m5789f(Date date) {
        return new SimpleDateFormat("h:mm a", DeviceInfoUtils.m5758f()).format(date);
    }

    /* renamed from: g */
    public static boolean m5788g(Date date) {
        Calendar instance = Calendar.getInstance();
        Date date2 = new Date();
        instance.setTime(date2);
        instance.add(10, -48);
        date2.setTime(instance.getTime().getTime());
        return date.compareTo(date2) < 0;
    }

    /* renamed from: h */
    public static boolean m5787h(Date date, Date date2) {
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance.setTime(date);
        instance2.setTime(date2);
        boolean z = true;
        if (!(instance.get(6) == instance2.get(6) && instance.get(1) == instance2.get(1))) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    public static Date m5786i(Date date, Date date2) {
        if (!date.after(date2)) {
            date = date2;
        }
        return date;
    }
}
