package com.google.android.gms.internal.ads;

import com.fasterxml.jackson.core.base.GeneratorBase;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqr.class */
final class dqr {
    /* renamed from: a */
    public static /* synthetic */ void m15932a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzenn {
        if (m15927c(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m15927c(b3) || m15927c(b4)) {
            throw zzenn.m13627i();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + GeneratorBase.SURR2_FIRST);
    }

    /* renamed from: a */
    public static /* synthetic */ void m15931a(byte b, byte b2, byte b3, char[] cArr, int i) throws zzenn {
        if (m15927c(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m15927c(b3)))) {
            throw zzenn.m13627i();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* renamed from: a */
    public static /* synthetic */ void m15930a(byte b, byte b2, char[] cArr, int i) throws zzenn {
        if (b < -62 || m15927c(b2)) {
            throw zzenn.m13627i();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: a */
    public static /* synthetic */ void m15929a(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m15933a(byte b) {
        return b < -32;
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m15928b(byte b) {
        return b < -16;
    }

    /* renamed from: c */
    private static boolean m15927c(byte b) {
        return b > -65;
    }
}
