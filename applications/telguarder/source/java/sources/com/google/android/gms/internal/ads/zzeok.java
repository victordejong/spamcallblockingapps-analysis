package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeok.class */
public final class zzeok {
    private static final zzeol zziwa;

    static {
        zziwa = (!(zzeoh.zzblc() && zzeoh.zzbld()) || zzejk.zzbgc()) ? new zzeoo() : new zzeoq();
    }

    public static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return zziwa.zzb(charSequence, bArr, i, i2);
    }

    public static int zzaq(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int zzb(int i, byte[] bArr, int i2, int i3) {
        return zziwa.zzb(i, bArr, i2, i3);
    }

    public static int zzd(CharSequence charSequence) {
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
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (127 - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (55296 <= charAt2) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new zzeon(i3, length2);
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
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    public static int zzhw(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    public static int zzj(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean zzm(byte[] bArr, int i, int i2) {
        return zziwa.zzm(bArr, i, i2);
    }

    public static int zzn(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 == 1) {
                return zzaq(b, bArr[i]);
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return zzj(b, bArr[i], bArr[i + 1]);
        }
        return zzhw(b);
    }

    public static String zzo(byte[] bArr, int i, int i2) throws zzelo {
        return zziwa.zzo(bArr, i, i2);
    }

    public static boolean zzx(byte[] bArr) {
        return zziwa.zzm(bArr, 0, bArr.length);
    }
}
