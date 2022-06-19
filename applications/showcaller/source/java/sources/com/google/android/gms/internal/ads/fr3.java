package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fr3.class */
public final class fr3 {
    /* renamed from: a */
    public static zzaiv m15108a(vq3 vq3Var, boolean z) {
        zzaiv m13094a = new mr3().m13094a(vq3Var, z ? null : C6655k8.f25079a);
        if (m13094a == null || m13094a.m8118a() == 0) {
            return null;
        }
        return m13094a;
    }

    /* renamed from: b */
    public static hr3 m15107b(C6694la c6694la) {
        long[] jArr;
        long[] jArr2;
        c6694la.m13632s(1);
        int m13625z = c6694la.m13625z();
        long m13636o = c6694la.m13636o();
        long j = m13625z;
        int i = m13625z / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long m13653F = c6694la.m13653F();
            if (m13653F == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = m13653F;
            jArr4[i2] = c6694la.m13653F();
            c6694la.m13632s(2);
            i2++;
        }
        c6694la.m13632s((int) ((m13636o + j) - c6694la.m13636o()));
        return new hr3(jArr, jArr2);
    }
}
