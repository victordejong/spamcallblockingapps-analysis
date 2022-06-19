package com.google.android.material.internal;

import android.os.Build;
import java.util.Locale;
/* renamed from: com.google.android.material.internal.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/c.class */
public final class C14620c {
    private C14620c() {
    }

    /* renamed from: a */
    public static boolean m10555a() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu");
    }

    /* renamed from: b */
    public static boolean m10554b() {
        return m10553c() || m10552d();
    }

    /* renamed from: c */
    private static boolean m10553c() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("lge");
    }

    /* renamed from: d */
    private static boolean m10552d() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("samsung");
    }
}
