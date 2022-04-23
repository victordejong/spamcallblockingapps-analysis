package com.google.android.gms.internal.ads;

import com.fasterxml.jackson.core.base.GeneratorBase;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqr.class */
final class dqr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) throws zzenn {
        if (c(b3) || (((b2 << 28) + (b3 + 112)) >> 30) != 0 || c(b4) || c(b5)) {
            throw zzenn.i();
        }
        int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + GeneratorBase.SURR2_FIRST);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(byte b2, byte b3, byte b4, char[] cArr, int i) throws zzenn {
        if (c(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || c(b4)))) {
            throw zzenn.i();
        }
        cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(byte b2, byte b3, char[] cArr, int i) throws zzenn {
        if (b2 < -62 || c(b3)) {
            throw zzenn.i();
        }
        cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(byte b2, char[] cArr, int i) {
        cArr[i] = (char) b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(byte b2) {
        return b2 < -32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean b(byte b2) {
        return b2 < -16;
    }

    private static boolean c(byte b2) {
        return b2 > -65;
    }
}
