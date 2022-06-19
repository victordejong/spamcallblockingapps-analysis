package com.google.android.material.internal;

import android.os.Build;
import java.util.Locale;
/* renamed from: com.google.android.material.internal.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/d.class */
public class C8178d {
    /* renamed from: a */
    public static boolean m4553a() {
        return m4552b() || m4550d();
    }

    /* renamed from: b */
    public static boolean m4552b() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("lge");
    }

    /* renamed from: c */
    public static boolean m4551c() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu");
    }

    /* renamed from: d */
    public static boolean m4550d() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("samsung");
    }
}
