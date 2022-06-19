package com.google.android.gms.internal.ads;

import io.agora.rtc.Constants;
import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjd.class */
public final class zzgjd {
    private static final zzgja zza;

    static {
        if (zzgiy.zza() && zzgiy.zzb()) {
            int i = zzgei.zza;
        }
        zza = new zzgjb();
    }

    public static boolean zza(byte[] bArr) {
        return zza.zza(bArr, 0, bArr.length);
    }

    public static boolean zzb(byte[] bArr, int i, int i2) {
        return zza.zza(bArr, i, i2);
    }

    public static int zzc(int i, byte[] bArr, int i2, int i3) {
        return zza.zzb(i, bArr, i2, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r0v15, types: [int] */
    public static /* synthetic */ int zzf(byte[] bArr, int i, int i2) {
        byte b;
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            b = b2;
            if (b2 > -12) {
                b = -1;
            }
        } else if (i3 == 1) {
            b = zzk(b2, bArr[i]);
        } else if (i3 != 2) {
            throw new AssertionError();
        } else {
            b = zzl(b2, bArr[i], bArr[i + 1]);
        }
        return b;
    }

    public static int zzg(CharSequence charSequence) {
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
                                throw new zzgjc(i3, length2);
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

    public static int zzh(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                        throw new zzgjc(i9, length);
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
            throw new zzgjc(i9 - 1, length);
        }
        i3 = i + length;
        return i3;
    }

    public static String zzi(ByteBuffer byteBuffer, int i, int i2) throws zzggm {
        return byteBuffer.hasArray() ? zza.zzc(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2) : byteBuffer.isDirect() ? zzgja.zzd(byteBuffer, i, i2) : zzgja.zzd(byteBuffer, i, i2);
    }

    public static String zzj(byte[] bArr, int i, int i2) throws zzggm {
        return zza.zzc(bArr, i, i2);
    }

    public static int zzk(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int zzl(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
