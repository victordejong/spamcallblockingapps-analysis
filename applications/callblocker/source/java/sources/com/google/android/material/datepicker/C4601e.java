package com.google.android.material.datepicker;

import android.os.Build;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/e.class */
class C4601e {
    /* renamed from: a */
    public static String m3207a(long j) {
        return m3206a(j, Locale.getDefault());
    }

    /* renamed from: a */
    static String m3206a(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C4636r.m3107a(locale).format(new Date(j)) : C4636r.m3101c(locale).format(new Date(j));
    }

    /* renamed from: b */
    public static String m3205b(long j) {
        return m3204b(j, Locale.getDefault());
    }

    /* renamed from: b */
    static String m3204b(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C4636r.m3103b(locale).format(new Date(j)) : C4636r.m3101c(locale).format(new Date(j));
    }
}
