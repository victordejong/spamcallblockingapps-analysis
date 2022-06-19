package com.google.android.gms.internal.measurement;

import io.agora.rtc.Constants;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmq.class */
public final class zzmq {
    private static final zzmn zza;

    static {
        if (zzml.zzx() && zzml.zzy()) {
            int i = zzij.zza;
        }
        zza = new zzmo();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
        if (r0 > (-12)) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ int zza(byte[] r4, int r5, int r6) {
        /*
            r0 = r4
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r7 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 - r1
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L6b
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L4e
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L46
            r0 = r4
            r1 = r5
            r0 = r0[r1]
            r6 = r0
            r0 = r4
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            r0 = r0[r1]
            r5 = r0
            r0 = r7
            r1 = -12
            if (r0 > r1) goto L73
            r0 = r6
            r1 = -65
            if (r0 > r1) goto L73
            r0 = r5
            r1 = -65
            if (r0 <= r1) goto L37
            goto L73
        L37:
            r0 = r6
            r1 = 8
            int r0 = r0 << r1
            r1 = r7
            r0 = r0 ^ r1
            r1 = r5
            r2 = 16
            int r1 = r1 << r2
            r0 = r0 ^ r1
            r5 = r0
            goto L75
        L46:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L4e:
            r0 = r4
            r1 = r5
            r0 = r0[r1]
            r5 = r0
            r0 = r7
            r1 = -12
            if (r0 > r1) goto L73
            r0 = r5
            r1 = -65
            if (r0 <= r1) goto L61
            goto L73
        L61:
            r0 = r7
            r1 = r5
            r2 = 8
            int r1 = r1 << r2
            r0 = r0 ^ r1
            r5 = r0
            goto L75
        L6b:
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = -12
            if (r0 <= r1) goto L75
        L73:
            r0 = -1
            r5 = r0
        L75:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmq.zza(byte[], int, int):int");
    }

    public static int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        char charAt;
        int length = charSequence.length();
        int i6 = i2 + i;
        int i7 = 0;
        while (i7 < length && (i5 = i7 + i) < i6 && (charAt = charSequence.charAt(i7)) < 128) {
            bArr[i5] = (byte) charAt;
            i7++;
        }
        if (i7 != length) {
            int i8 = i + i7;
            int i9 = i7;
            while (true) {
                i3 = i8;
                if (i9 >= length) {
                    break;
                }
                char charAt2 = charSequence.charAt(i9);
                if (charAt2 < 128 && i8 < i6) {
                    bArr[i8] = (byte) charAt2;
                    i8++;
                } else if (charAt2 < 2048 && i8 <= i6 - 2) {
                    int i10 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> 6) | 960);
                    i8 = i10 + 1;
                    bArr[i10] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 < 55296 || charAt2 > 57343) && i8 <= i6 - 3) {
                    int i11 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> '\f') | 480);
                    int i12 = i11 + 1;
                    bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i8 = i12 + 1;
                    bArr[i12] = (byte) ((charAt2 & '?') | 128);
                } else if (i8 > i6 - 4) {
                    if (charAt2 >= 55296 && charAt2 <= 57343 && ((i4 = i9 + 1) == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4)))) {
                        throw new zzmp(i9, length);
                    }
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Failed writing ");
                    sb.append(charAt2);
                    sb.append(" at index ");
                    sb.append(i8);
                    throw new ArrayIndexOutOfBoundsException(sb.toString());
                } else {
                    int i13 = i9 + 1;
                    if (i13 == charSequence.length()) {
                        break;
                    }
                    char charAt3 = charSequence.charAt(i13);
                    if (!Character.isSurrogatePair(charAt2, charAt3)) {
                        i9 = i13;
                        break;
                    }
                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                    int i14 = i8 + 1;
                    bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                    int i15 = i14 + 1;
                    bArr[i14] = (byte) (((codePoint >>> 12) & 63) | 128);
                    int i16 = i15 + 1;
                    bArr[i15] = (byte) (((codePoint >>> 6) & 63) | 128);
                    i8 = i16 + 1;
                    bArr[i16] = (byte) ((codePoint & 63) | 128);
                    i9 = i13;
                }
                i9++;
            }
            throw new zzmp(i9 - 1, length);
        }
        i3 = i + length;
        return i3;
    }

    public static int zzc(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (Constants.ERR_WATERMARKR_INFO - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (Constants.ERR_WATERMARKR_INFO - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (charAt2 >= 55296) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new zzmp(i3, length2);
                            } else {
                                i2 = i3 + 1;
                                i5 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i2 + 1;
                }
                i = i4 + i5;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder m8554x = C22128a.m8554x(54, "UTF-8 length does not fit in int: ");
        m8554x.append(i + 4294967296L);
        throw new IllegalArgumentException(m8554x.toString());
    }

    public static String zzd(byte[] bArr, int i, int i2) throws zzkh {
        int i3;
        int i4;
        byte b;
        byte b2;
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) >= 0) {
            int i5 = i + i2;
            char[] cArr = new char[i2];
            int i6 = 0;
            int i7 = i;
            while (true) {
                i3 = i6;
                i4 = i7;
                if (i7 >= i5) {
                    break;
                }
                if (!zzmm.zzd(bArr[i7])) {
                    i3 = i6;
                    i4 = i7;
                    break;
                }
                i7++;
                cArr[i6] = (char) b2;
                i6++;
            }
            while (i4 < i5) {
                int i8 = i4 + 1;
                byte b3 = bArr[i4];
                if (zzmm.zzd(b3)) {
                    cArr[i3] = (char) b3;
                    int i9 = i3 + 1;
                    while (true) {
                        int i10 = i9;
                        i3 = i10;
                        i4 = i8;
                        if (i8 < i5) {
                            if (!zzmm.zzd(bArr[i8])) {
                                i3 = i10;
                                i4 = i8;
                                break;
                            }
                            i8++;
                            i9 = i10 + 1;
                            cArr[i10] = (char) b;
                        }
                    }
                } else if (b3 < -32) {
                    if (i8 >= i5) {
                        throw zzkh.zzc();
                    }
                    zzmm.zzb(b3, bArr[i8], cArr, i3);
                    i4 = i8 + 1;
                    i3++;
                } else if (b3 < -16) {
                    if (i8 >= i5 - 1) {
                        throw zzkh.zzc();
                    }
                    int i11 = i8 + 1;
                    zzmm.zzc(b3, bArr[i8], bArr[i11], cArr, i3);
                    i4 = i11 + 1;
                    i3++;
                } else if (i8 >= i5 - 2) {
                    throw zzkh.zzc();
                } else {
                    int i12 = i8 + 1;
                    int i13 = i12 + 1;
                    zzmm.zza(b3, bArr[i8], bArr[i12], bArr[i13], cArr, i3);
                    i3 += 2;
                    i4 = i13 + 1;
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public static boolean zze(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }

    public static boolean zzf(byte[] bArr, int i, int i2) {
        return zza.zzb(bArr, i, i2);
    }
}
