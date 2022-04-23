package com.google.android.gms.internal.measurement;

import p131c.p161d.p170b.p224d.p252g.p258f.C4456a2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfz.class */
public final class zzfz extends C4456a2 {
    /* renamed from: a */
    public static int m9801a(int i, int i2, int i3) {
        if (i2 <= 1073741823) {
            return Math.min(Math.max(i, i2), 1073741823);
        }
        throw new IllegalArgumentException(zzed.m9809a("min (%s) must be less than or equal to max (%s)", Integer.valueOf(i2), 1073741823));
    }
}
