package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.material.datepicker.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a0.class */
public class C1730a0 {

    /* renamed from: a */
    public static AtomicReference<C1771z> f6517a = new AtomicReference<>();

    /* renamed from: a */
    public static long m4642a(long j) {
        Calendar m4638e = m4638e();
        m4638e.setTimeInMillis(j);
        return m4641b(m4638e).getTimeInMillis();
    }

    /* renamed from: b */
    public static Calendar m4641b(Calendar calendar) {
        Calendar m4637f = m4637f(calendar);
        Calendar m4638e = m4638e();
        m4638e.set(m4637f.get(1), m4637f.get(2), m4637f.get(5));
        return m4638e;
    }

    /* renamed from: c */
    public static TimeZone m4640c() {
        return TimeZone.getTimeZone("UTC");
    }

    /* renamed from: d */
    public static Calendar m4639d() {
        C1771z c1771z = f6517a.get();
        C1771z c1771z2 = c1771z;
        if (c1771z == null) {
            c1771z2 = C1771z.f6618c;
        }
        TimeZone timeZone = c1771z2.f6620b;
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = c1771z2.f6619a;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(m4640c());
        return calendar;
    }

    /* renamed from: e */
    public static Calendar m4638e() {
        return m4637f(null);
    }

    /* renamed from: f */
    public static Calendar m4637f(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(m4640c());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }
}
