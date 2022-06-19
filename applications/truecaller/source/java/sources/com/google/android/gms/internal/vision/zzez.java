package com.google.android.gms.internal.vision;

import io.agora.rtc.Constants;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzez.class */
public final class zzez {
    public static int zza(int i, byte[] bArr, int i2, int i3, zzfb zzfbVar) throws zzhc {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                return zzb(bArr, i2, zzfbVar);
            }
            if (i6 == 1) {
                return i2 + 8;
            }
            if (i6 == 2) {
                return zza(bArr, i2, zzfbVar) + zzfbVar.zzro;
            }
            if (i6 != 3) {
                if (i6 != 5) {
                    throw zzhc.zzgp();
                }
                return i2 + 4;
            }
            int i7 = (i & (-8)) | 4;
            int i8 = 0;
            while (true) {
                i4 = i8;
                i5 = i2;
                if (i2 >= i3) {
                    break;
                }
                int zza = zza(bArr, i2, zzfbVar);
                i8 = zzfbVar.zzro;
                i4 = i8;
                i5 = zza;
                if (i8 == i7) {
                    break;
                }
                i2 = zza(i8, bArr, zza, i3, zzfbVar);
            }
            if (i5 <= i3 && i4 == i7) {
                return i5;
            }
            throw zzhc.zzgs();
        }
        throw zzhc.zzgp();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzgz<?> zzgzVar, zzfb zzfbVar) {
        zzgu zzguVar = (zzgu) zzgzVar;
        int zza = zza(bArr, i2, zzfbVar);
        zzguVar.zzbl(zzfbVar.zzro);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzfbVar);
            if (i != zzfbVar.zzro) {
                break;
            }
            zza = zza(bArr, zza2, zzfbVar);
            zzguVar.zzbl(zzfbVar.zzro);
        }
        return zza;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzjm zzjmVar, zzfb zzfbVar) throws zzhc {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                int zzb = zzb(bArr, i2, zzfbVar);
                zzjmVar.zzb(i, Long.valueOf(zzfbVar.zzrp));
                return zzb;
            } else if (i6 == 1) {
                zzjmVar.zzb(i, Long.valueOf(zzb(bArr, i2)));
                return i2 + 8;
            } else if (i6 == 2) {
                int zza = zza(bArr, i2, zzfbVar);
                int i7 = zzfbVar.zzro;
                if (i7 < 0) {
                    throw zzhc.zzgn();
                }
                if (i7 > bArr.length - zza) {
                    throw zzhc.zzgm();
                }
                if (i7 == 0) {
                    zzjmVar.zzb(i, zzfh.zzrx);
                } else {
                    zzjmVar.zzb(i, zzfh.zza(bArr, zza, i7));
                }
                return zza + i7;
            } else if (i6 != 3) {
                if (i6 != 5) {
                    throw zzhc.zzgp();
                }
                zzjmVar.zzb(i, Integer.valueOf(zza(bArr, i2)));
                return i2 + 4;
            } else {
                zzjm zzih = zzjm.zzih();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzfbVar);
                    i9 = zzfbVar.zzro;
                    if (i9 == i8) {
                        i5 = zza2;
                        i4 = i9;
                        break;
                    }
                    i2 = zza(i9, bArr, zza2, i3, zzih, zzfbVar);
                }
                if (i5 > i3 || i4 != i8) {
                    throw zzhc.zzgs();
                }
                zzjmVar.zzb(i, zzih);
                return i5;
            }
        }
        throw zzhc.zzgp();
    }

    public static int zza(int i, byte[] bArr, int i2, zzfb zzfbVar) {
        int i3 = i & Constants.ERR_WATERMARKR_INFO;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzfbVar.zzro = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzfbVar.zzro = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzfbVar.zzro = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzfbVar.zzro = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzfbVar.zzro = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    public static int zza(zzir<?> zzirVar, int i, byte[] bArr, int i2, int i3, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        int zza = zza(zzirVar, bArr, i2, i3, zzfbVar);
        zzgzVar.add(zzfbVar.zzrq);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzfbVar);
            if (i != zzfbVar.zzro) {
                break;
            }
            zza = zza(zzirVar, bArr, zza2, i3, zzfbVar);
            zzgzVar.add(zzfbVar.zzrq);
        }
        return zza;
    }

    public static int zza(zzir zzirVar, byte[] bArr, int i, int i2, int i3, zzfb zzfbVar) throws IOException {
        zzig zzigVar = (zzig) zzirVar;
        Object newInstance = zzigVar.newInstance();
        int zza = zzigVar.zza(newInstance, bArr, i, i2, i3, zzfbVar);
        zzigVar.zzg(newInstance);
        zzfbVar.zzrq = newInstance;
        return zza;
    }

    public static int zza(zzir zzirVar, byte[] bArr, int i, int i2, zzfb zzfbVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zza(b, bArr, i3, zzfbVar);
            i5 = zzfbVar.zzro;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzhc.zzgm();
        }
        Object newInstance = zzirVar.newInstance();
        int i6 = i5 + i4;
        zzirVar.zza(newInstance, bArr, i4, i6, zzfbVar);
        zzirVar.zzg(newInstance);
        zzfbVar.zzrq = newInstance;
        return i6;
    }

    public static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zza(byte[] bArr, int i, zzfb zzfbVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzfbVar.zzro = b;
            return i2;
        }
        return zza(b, bArr, i2, zzfbVar);
    }

    public static int zza(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzgu zzguVar = (zzgu) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzfbVar);
            zzguVar.zzbl(zzfbVar.zzro);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static int zzb(byte[] bArr, int i, zzfb zzfbVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzfbVar.zzrp = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        char c = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            c |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        zzfbVar.zzrp = c;
        return i3;
    }

    public static int zzb(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzhq zzhqVar = (zzhq) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zza = zzb(bArr, zza, zzfbVar);
            zzhqVar.zzac(zzfbVar.zzrp);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static long zzb(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static double zzc(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzb(bArr, i));
    }

    public static int zzc(byte[] bArr, int i, zzfb zzfbVar) throws zzhc {
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzfbVar.zzrq = "";
                return zza;
            }
            zzfbVar.zzrq = new String(bArr, zza, i2, zzgt.UTF_8);
            return zza + i2;
        }
        throw zzhc.zzgn();
    }

    public static int zzc(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzgu zzguVar = (zzgu) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zzguVar.zzbl(zza(bArr, zza));
            zza += 4;
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static float zzd(byte[] bArr, int i) {
        return Float.intBitsToFloat(zza(bArr, i));
    }

    public static int zzd(byte[] bArr, int i, zzfb zzfbVar) throws zzhc {
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzfbVar.zzrq = "";
                return zza;
            }
            zzfbVar.zzrq = zzjs.zzh(bArr, zza, i2);
            return zza + i2;
        }
        throw zzhc.zzgn();
    }

    public static int zzd(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzhq zzhqVar = (zzhq) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zzhqVar.zzac(zzb(bArr, zza));
            zza += 8;
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static int zze(byte[] bArr, int i, zzfb zzfbVar) throws zzhc {
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzhc.zzgm();
            }
            if (i2 == 0) {
                zzfbVar.zzrq = zzfh.zzrx;
                return zza;
            }
            zzfbVar.zzrq = zzfh.zza(bArr, zza, i2);
            return zza + i2;
        }
        throw zzhc.zzgn();
    }

    public static int zze(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzgo zzgoVar = (zzgo) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zzgoVar.zzu(zzd(bArr, zza));
            zza += 4;
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static int zzf(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzgb zzgbVar = (zzgb) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zzgbVar.zzc(zzc(bArr, zza));
            zza += 8;
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static int zzg(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzff zzffVar = (zzff) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zza = zzb(bArr, zza, zzfbVar);
            zzffVar.addBoolean(zzfbVar.zzrp != 0);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static int zzh(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzgu zzguVar = (zzgu) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzfbVar);
            zzguVar.zzbl(zzft.zzau(zzfbVar.zzro));
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }

    public static int zzi(byte[] bArr, int i, zzgz<?> zzgzVar, zzfb zzfbVar) throws IOException {
        zzhq zzhqVar = (zzhq) zzgzVar;
        int zza = zza(bArr, i, zzfbVar);
        int i2 = zzfbVar.zzro + zza;
        while (zza < i2) {
            zza = zzb(bArr, zza, zzfbVar);
            zzhqVar.zzac(zzft.zzr(zzfbVar.zzrp));
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhc.zzgm();
    }
}
