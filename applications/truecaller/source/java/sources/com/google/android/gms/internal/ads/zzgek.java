package com.google.android.gms.internal.ads;

import io.agora.rtc.Constants;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgek.class */
public final class zzgek {
    public static int zza(byte[] bArr, int i, zzgej zzgejVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzgejVar.zza = b;
            return i2;
        }
        return zzb(b, bArr, i2, zzgejVar);
    }

    public static int zzb(int i, byte[] bArr, int i2, zzgej zzgejVar) {
        int i3 = i & Constants.ERR_WATERMARKR_INFO;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzgejVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzgejVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgejVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgejVar.zza = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgejVar.zza = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    public static int zzc(byte[] bArr, int i, zzgej zzgejVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzgejVar.zzb = j;
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
        zzgejVar.zzb = c;
        return i3;
    }

    public static int zzd(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static long zze(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int zzf(byte[] bArr, int i, zzgej zzgejVar) throws zzggm {
        int zza = zza(bArr, i, zzgejVar);
        int i2 = zzgejVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgejVar.zzc = "";
                return zza;
            }
            zzgejVar.zzc = new String(bArr, zza, i2, zzggk.zza);
            return zza + i2;
        }
        throw zzggm.zze();
    }

    public static int zzg(byte[] bArr, int i, zzgej zzgejVar) throws zzggm {
        int zza = zza(bArr, i, zzgejVar);
        int i2 = zzgejVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgejVar.zzc = "";
                return zza;
            }
            zzgejVar.zzc = zzgjd.zzj(bArr, zza, i2);
            return zza + i2;
        }
        throw zzggm.zze();
    }

    public static int zzh(byte[] bArr, int i, zzgej zzgejVar) throws zzggm {
        int zza = zza(bArr, i, zzgejVar);
        int i2 = zzgejVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzggm.zzd();
            }
            if (i2 == 0) {
                zzgejVar.zzc = zzgex.zzb;
                return zza;
            }
            zzgejVar.zzc = zzgex.zzs(bArr, zza, i2);
            return zza + i2;
        }
        throw zzggm.zze();
    }

    public static int zzi(zzghz zzghzVar, byte[] bArr, int i, int i2, zzgej zzgejVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zzb(b, bArr, i3, zzgejVar);
            i5 = zzgejVar.zza;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzggm.zzd();
        }
        Object zza = zzghzVar.zza();
        int i6 = i5 + i4;
        zzghzVar.zzi(zza, bArr, i4, i6, zzgejVar);
        zzghzVar.zzj(zza);
        zzgejVar.zzc = zza;
        return i6;
    }

    public static int zzj(zzghz zzghzVar, byte[] bArr, int i, int i2, int i3, zzgej zzgejVar) throws IOException {
        zzghl zzghlVar = (zzghl) zzghzVar;
        Object zza = zzghlVar.zza();
        int zzh = zzghlVar.zzh(zza, bArr, i, i2, i3, zzgejVar);
        zzghlVar.zzj(zza);
        zzgejVar.zzc = zza;
        return zzh;
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzggj<?> zzggjVar, zzgej zzgejVar) {
        zzggb zzggbVar = (zzggb) zzggjVar;
        int zza = zza(bArr, i2, zzgejVar);
        zzggbVar.zzh(zzgejVar.zza);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzgejVar);
            if (i != zzgejVar.zza) {
                break;
            }
            zza = zza(bArr, zza2, zzgejVar);
            zzggbVar.zzh(zzgejVar.zza);
        }
        return zza;
    }

    public static int zzl(byte[] bArr, int i, zzggj<?> zzggjVar, zzgej zzgejVar) throws IOException {
        zzggb zzggbVar = (zzggb) zzggjVar;
        int zza = zza(bArr, i, zzgejVar);
        int i2 = zzgejVar.zza + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzgejVar);
            zzggbVar.zzh(zzgejVar.zza);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzggm.zzd();
    }

    public static int zzm(zzghz<?> zzghzVar, int i, byte[] bArr, int i2, int i3, zzggj<?> zzggjVar, zzgej zzgejVar) throws IOException {
        int zzi = zzi(zzghzVar, bArr, i2, i3, zzgejVar);
        zzggjVar.add(zzgejVar.zzc);
        while (zzi < i3) {
            int zza = zza(bArr, zzi, zzgejVar);
            if (i != zzgejVar.zza) {
                break;
            }
            zzi = zzi(zzghzVar, bArr, zza, i3, zzgejVar);
            zzggjVar.add(zzgejVar.zzc);
        }
        return zzi;
    }

    public static int zzn(int i, byte[] bArr, int i2, int i3, zzgip zzgipVar, zzgej zzgejVar) throws zzggm {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int zzc = zzc(bArr, i2, zzgejVar);
                zzgipVar.zzh(i, Long.valueOf(zzgejVar.zzb));
                return zzc;
            } else if (i5 == 1) {
                zzgipVar.zzh(i, Long.valueOf(zze(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int zza = zza(bArr, i2, zzgejVar);
                int i6 = zzgejVar.zza;
                if (i6 < 0) {
                    throw zzggm.zze();
                }
                if (i6 > bArr.length - zza) {
                    throw zzggm.zzd();
                }
                if (i6 == 0) {
                    zzgipVar.zzh(i, zzgex.zzb);
                } else {
                    zzgipVar.zzh(i, zzgex.zzs(bArr, zza, i6));
                }
                return zza + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzggm.zzg();
                }
                zzgipVar.zzh(i, Integer.valueOf(zzd(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                zzgip zzb = zzgip.zzb();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzgejVar);
                    int i9 = zzgejVar.zza;
                    if (i9 == i7) {
                        i8 = i9;
                        i4 = zza2;
                        break;
                    }
                    i8 = i9;
                    i2 = zzn(i9, bArr, zza2, i3, zzb, zzgejVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzggm.zzk();
                }
                zzgipVar.zzh(i, zzb);
                return i4;
            }
        }
        throw zzggm.zzg();
    }
}
