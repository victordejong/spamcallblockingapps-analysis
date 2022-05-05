package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.j;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zze.class */
public class zze {
    public static final String VERSION = String.valueOf(j.f4045b / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    public static final String zzWi;

    static {
        String valueOf = String.valueOf(VERSION);
        zzWi = valueOf.length() != 0 ? "ma".concat(valueOf) : new String("ma");
    }
}
