package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;
/* renamed from: com.google.android.material.datepicker.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/n.class */
class C8122n {

    /* renamed from: a */
    private static final C8122n f36698a = new C8122n(null, null);

    /* renamed from: b */
    private final Long f36699b;

    /* renamed from: c */
    private final TimeZone f36700c;

    private C8122n(Long l, TimeZone timeZone) {
        this.f36699b = l;
        this.f36700c = timeZone;
    }

    /* renamed from: c */
    public static C8122n m4856c() {
        return f36698a;
    }

    /* renamed from: a */
    public Calendar m4858a() {
        return m4857b(this.f36700c);
    }

    /* renamed from: b */
    Calendar m4857b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.f36699b;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
