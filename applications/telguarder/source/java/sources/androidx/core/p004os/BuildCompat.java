package androidx.core.p004os;

import android.os.Build;
/* renamed from: androidx.core.os.BuildCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/BuildCompat.class */
public class BuildCompat {
    private BuildCompat() {
    }

    @Deprecated
    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Deprecated
    public static boolean isAtLeastNMR1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    @Deprecated
    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @Deprecated
    public static boolean isAtLeastOMR1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    @Deprecated
    public static boolean isAtLeastP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @Deprecated
    public static boolean isAtLeastQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean isAtLeastR() {
        boolean z = true;
        if (Build.VERSION.CODENAME.length() != 1 || Build.VERSION.CODENAME.charAt(0) < 'R' || Build.VERSION.CODENAME.charAt(0) > 'Z') {
            z = false;
        }
        return z;
    }
}
