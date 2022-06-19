package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsc.class */
public final class zzfsc {
    public static int zza(int i) {
        return (i + 1) * (i < 32 ? 4 : 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0055, code lost:
        r0 = r0 & r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005e, code lost:
        if (r17 != (-1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0061, code lost:
        zze(r9, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006c, code lost:
        r10[r17] = (r0 & r8) | (r10[r17] & r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0080, code lost:
        return r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzb(@javax.annotation.CheckForNull java.lang.Object r6, @javax.annotation.CheckForNull java.lang.Object r7, int r8, java.lang.Object r9, int[] r10, java.lang.Object[] r11, @javax.annotation.CheckForNull java.lang.Object[] r12) {
        /*
            r0 = r6
            int r0 = com.google.android.gms.internal.ads.zzfsk.zzb(r0)
            r13 = r0
            r0 = r13
            r1 = r8
            r0 = r0 & r1
            r14 = r0
            r0 = r9
            r1 = r14
            int r0 = zzc(r0, r1)
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L97
            r0 = r8
            r1 = -1
            r0 = r0 ^ r1
            r16 = r0
            r0 = -1
            r17 = r0
        L21:
            int r15 = r15 + (-1)
            r0 = r10
            r1 = r15
            r0 = r0[r1]
            r18 = r0
            r0 = r18
            r1 = r16
            r0 = r0 & r1
            r1 = r13
            r2 = r16
            r1 = r1 & r2
            if (r0 != r1) goto L81
            r0 = r6
            r1 = r11
            r2 = r15
            r1 = r1[r2]
            boolean r0 = com.google.android.gms.internal.ads.zzfqc.zza(r0, r1)
            if (r0 == 0) goto L81
            r0 = r12
            if (r0 == 0) goto L55
            r0 = r7
            r1 = r12
            r2 = r15
            r1 = r1[r2]
            boolean r0 = com.google.android.gms.internal.ads.zzfqc.zza(r0, r1)
            if (r0 == 0) goto L81
        L55:
            r0 = r18
            r1 = r8
            r0 = r0 & r1
            r18 = r0
            r0 = r17
            r1 = -1
            if (r0 != r1) goto L6c
            r0 = r9
            r1 = r14
            r2 = r18
            zze(r0, r1, r2)
            goto L7e
        L6c:
            r0 = r10
            r1 = r17
            r2 = r18
            r3 = r8
            r2 = r2 & r3
            r3 = r10
            r4 = r17
            r3 = r3[r4]
            r4 = r16
            r3 = r3 & r4
            r2 = r2 | r3
            r0[r1] = r2
        L7e:
            r0 = r15
            return r0
        L81:
            r0 = r18
            r1 = r8
            r0 = r0 & r1
            r18 = r0
            r0 = r18
            if (r0 == 0) goto L97
            r0 = r15
            r17 = r0
            r0 = r18
            r15 = r0
            goto L21
        L97:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfsc.zzb(java.lang.Object, java.lang.Object, int, java.lang.Object, int[], java.lang.Object[], java.lang.Object[]):int");
    }

    public static int zzc(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    public static Object zzd(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            throw new IllegalArgumentException(C0082b.m8758d(52, "must be power of 2 between 2^1 and 2^30: ", i));
        }
        return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
    }

    public static void zze(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }
}
