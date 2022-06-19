package com.google.android.material.datepicker;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/d.class */
final class C14517d {
    private C14517d() {
    }

    /* renamed from: a */
    public static String m10851a(long j, SimpleDateFormat simpleDateFormat) {
        Calendar m10797a = C14548o.m10797a();
        Calendar m10789b = C14548o.m10789b();
        m10789b.setTimeInMillis(j);
        return m10797a.get(1) == m10789b.get(1) ? m10849b(j, Locale.getDefault()) : m10850a(j, Locale.getDefault());
    }

    /* renamed from: a */
    public static String m10850a(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C14548o.m10790a(locale).format(new Date(j)) : C14548o.m10783e(locale).format(new Date(j));
    }

    /* renamed from: b */
    public static String m10849b(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C14548o.m10787b(locale).format(new Date(j)) : C14548o.m10782f(locale).format(new Date(j));
    }
}
