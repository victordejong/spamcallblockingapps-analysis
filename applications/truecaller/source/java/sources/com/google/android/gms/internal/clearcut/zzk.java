package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzk.class */
public final class zzk {
    private static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private static long zza(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    public static long zza(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            throw new IndexOutOfBoundsException(C22128a.m8690L1(67, "Out of bound index with offput: 0 and length: ", length));
        }
        if (length <= 32) {
            if (length > 16) {
                long j = (length << 1) - 7286425919675154353L;
                long zzb = zzb(bArr, 0) * (-5435081209227447693L);
                long zzb2 = zzb(bArr, 8);
                int i = length + 0;
                long zzb3 = zzb(bArr, i - 8) * j;
                return zza((zzb(bArr, i - 16) * (-7286425919675154353L)) + Long.rotateRight(zzb3, 30) + Long.rotateRight(zzb + zzb2, 43), Long.rotateRight(zzb2 - 7286425919675154353L, 18) + zzb + zzb3, j);
            } else if (length >= 8) {
                long j2 = (length << 1) - 7286425919675154353L;
                long zzb4 = zzb(bArr, 0) - 7286425919675154353L;
                long zzb5 = zzb(bArr, (length + 0) - 8);
                return zza((Long.rotateRight(zzb5, 37) * j2) + zzb4, (Long.rotateRight(zzb4, 25) + zzb5) * j2, j2);
            } else if (length >= 4) {
                return zza(length + ((zza(bArr, 0) & 4294967295L) << 3), zza(bArr, (length + 0) - 4) & 4294967295L, (length << 1) - 7286425919675154353L);
            } else if (length <= 0) {
                return -7286425919675154353L;
            } else {
                long j3 = (((bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[(length - 1) + 0] & 255) << 2)) * (-4348849565147123417L));
                return (j3 ^ (j3 >>> 47)) * (-7286425919675154353L);
            }
        } else if (length <= 64) {
            long j4 = (length << 1) - 7286425919675154353L;
            long zzb6 = zzb(bArr, 0) * (-7286425919675154353L);
            long zzb7 = zzb(bArr, 8);
            int i2 = length + 0;
            long zzb8 = zzb(bArr, i2 - 8) * j4;
            long rotateRight = Long.rotateRight(zzb8, 30) + Long.rotateRight(zzb6 + zzb7, 43) + (zzb(bArr, i2 - 16) * (-7286425919675154353L));
            long zza = zza(rotateRight, Long.rotateRight(zzb7 - 7286425919675154353L, 18) + zzb6 + zzb8, j4);
            long zzb9 = zzb(bArr, 16) * j4;
            long zzb10 = zzb(bArr, 24);
            long zzb11 = (rotateRight + zzb(bArr, i2 - 32)) * j4;
            return zza(Long.rotateRight(zzb11, 30) + Long.rotateRight(zzb9 + zzb10, 43) + ((zza + zzb(bArr, i2 - 24)) * j4), Long.rotateRight(zzb10 + zzb6, 18) + zzb9 + zzb11, j4);
        } else {
            char c = 46804;
            boolean z = true;
            long[] jArr = new long[2];
            long[] jArr2 = new long[2];
            int i3 = length - 1;
            int i4 = ((i3 / 64) << 6) + 0;
            int i5 = i3 & 63;
            int i6 = (i4 + i5) - 63;
            char zzb12 = zzb(bArr, 0) + 95310865018149119L;
            int i7 = 0;
            while (true) {
                long rotateRight2 = Long.rotateRight(zzb12 + c + jArr[0] + zzb(bArr, i7 + 8), 37);
                long rotateRight3 = Long.rotateRight(c + jArr[1] + zzb(bArr, i7 + 48), 42);
                ?? r0 = (rotateRight2 * (-5435081209227447693L)) ^ jArr2[1];
                char zzb13 = jArr[0] + zzb(bArr, i7 + 40) + (rotateRight3 * (-5435081209227447693L));
                ?? rotateRight4 = Long.rotateRight((z ? 1L : 0L) + jArr2[0], 33) * (-5435081209227447693L);
                zza(bArr, i7, jArr[1] * (-5435081209227447693L), r0 + jArr2[0], jArr);
                zza(bArr, i7 + 32, jArr2[1] + rotateRight4, zzb13 + zzb(bArr, i7 + 16), jArr2);
                i7 += 64;
                if (i7 == i4) {
                    long j5 = ((r0 & 255) << 1) - 5435081209227447693L;
                    jArr2[0] = jArr2[0] + i5;
                    jArr[0] = jArr[0] + jArr2[0];
                    jArr2[0] = jArr2[0] + jArr[0];
                    long rotateRight5 = Long.rotateRight(rotateRight4 + zzb13 + jArr[0] + zzb(bArr, i6 + 8), 37);
                    long rotateRight6 = Long.rotateRight(zzb13 + jArr[1] + zzb(bArr, i6 + 48), 42);
                    long j6 = (rotateRight5 * j5) ^ (jArr2[1] * 9);
                    long zzb14 = (jArr[0] * 9) + zzb(bArr, i6 + 40) + (rotateRight6 * j5);
                    long rotateRight7 = Long.rotateRight(r0 + jArr2[0], 33) * j5;
                    zza(bArr, i6, jArr[1] * j5, j6 + jArr2[0], jArr);
                    zza(bArr, i6 + 32, jArr2[1] + rotateRight7, zzb(bArr, i6 + 16) + zzb14, jArr2);
                    return zza((((zzb14 >>> 47) ^ zzb14) * (-4348849565147123417L)) + zza(jArr[0], jArr2[0], j5) + j6, zza(jArr[1], jArr2[1], j5) + rotateRight7, j5);
                }
                z = r0;
                zzb12 = rotateRight4;
                c = zzb13;
            }
        }
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long zzb = zzb(bArr, i);
        long zzb2 = zzb(bArr, i + 8);
        long zzb3 = zzb(bArr, i + 16);
        long zzb4 = zzb(bArr, i + 24);
        long j3 = j + zzb;
        long rotateRight = Long.rotateRight(j2 + j3 + zzb4, 21);
        long j4 = zzb2 + j3 + zzb3;
        long rotateRight2 = Long.rotateRight(j4, 44);
        jArr[0] = j4 + zzb4;
        jArr[1] = rotateRight2 + rotateRight + j3;
    }

    private static long zzb(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }
}
