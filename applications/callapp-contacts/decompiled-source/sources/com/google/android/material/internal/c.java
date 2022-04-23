package com.google.android.material.internal;

import android.os.Build;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/c.class */
public final class c {
    private c() {
    }

    public static boolean a() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu");
    }

    public static boolean b() {
        return c() || d();
    }

    private static boolean c() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("lge");
    }

    private static boolean d() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("samsung");
    }
}
