package com.google.android.gms.analytics;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.internal.zzae;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzc.class */
public final class zzc {
    private static String a(String str, int i) {
        String sb;
        if (i <= 0) {
            zzae.zzf("index out of range for prefix", str);
            sb = BuildConfig.FLAVOR;
        } else {
            sb = new StringBuilder(String.valueOf(str).length() + 11).append(str).append(i).toString();
        }
        return sb;
    }

    public static String zzaa(int i) {
        return a("&cd", i);
    }

    public static String zzab(int i) {
        return a("cd", i);
    }

    public static String zzac(int i) {
        return a("&cm", i);
    }

    public static String zzad(int i) {
        return a("cm", i);
    }

    public static String zzae(int i) {
        return a("&pr", i);
    }

    public static String zzaf(int i) {
        return a("pr", i);
    }

    public static String zzag(int i) {
        return a("&promo", i);
    }

    public static String zzah(int i) {
        return a("promo", i);
    }

    public static String zzai(int i) {
        return a("pi", i);
    }

    public static String zzaj(int i) {
        return a("&il", i);
    }

    public static String zzak(int i) {
        return a("il", i);
    }

    public static String zzal(int i) {
        return a("cd", i);
    }

    public static String zzam(int i) {
        return a("cm", i);
    }
}
