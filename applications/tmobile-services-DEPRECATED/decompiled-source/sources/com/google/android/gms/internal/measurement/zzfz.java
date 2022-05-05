package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfz.class */
public final class zzfz extends zzfy {
    /* renamed from: a */
    public static int m12668a(int i, int i2, int i3) {
        if (i2 <= 1073741823) {
            return Math.min(Math.max(i, i2), 1073741823);
        }
        throw new IllegalArgumentException(zzed.m12733b("min (%s) must be less than or equal to max (%s)", Integer.valueOf(i2), 1073741823));
    }
}
