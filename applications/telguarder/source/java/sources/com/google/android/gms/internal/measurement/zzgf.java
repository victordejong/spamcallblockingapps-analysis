package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgf.class */
public final class zzgf {
    public static int zza(byte[] bArr, int i, zzge zzgeVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzgeVar.zza = b;
            return i2;
        }
        return zzb(b, bArr, i2, zzgeVar);
    }

    public static int zzb(int i, byte[] bArr, int i2, zzge zzgeVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzgeVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzgeVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgeVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgeVar.zza = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgeVar.zza = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    public static int zzc(byte[] bArr, int i, zzge zzgeVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzgeVar.zzb = j;
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
        zzgeVar.zzb = c;
        return i3;
    }

    public static int zzd(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static long zze(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int zzf(byte[] bArr, int i, zzge zzgeVar) throws zzic {
        int zza = zza(bArr, i, zzgeVar);
        int i2 = zzgeVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgeVar.zzc = "";
                return zza;
            }
            zzgeVar.zzc = new String(bArr, zza, i2, zzia.zza);
            return zza + i2;
        }
        throw zzic.zzb();
    }

    public static int zzg(byte[] bArr, int i, zzge zzgeVar) throws zzic {
        int zza = zza(bArr, i, zzgeVar);
        int i2 = zzgeVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgeVar.zzc = "";
                return zza;
            }
            zzgeVar.zzc = zzkn.zze(bArr, zza, i2);
            return zza + i2;
        }
        throw zzic.zzb();
    }

    public static int zzh(byte[] bArr, int i, zzge zzgeVar) throws zzic {
        int zza = zza(bArr, i, zzgeVar);
        int i2 = zzgeVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzic.zza();
            }
            if (i2 == 0) {
                zzgeVar.zzc = zzgs.zzb;
                return zza;
            }
            zzgeVar.zzc = zzgs.zzj(bArr, zza, i2);
            return zza + i2;
        }
        throw zzic.zzb();
    }

    public static int zzi(zzji zzjiVar, byte[] bArr, int i, int i2, zzge zzgeVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zzb(b, bArr, i3, zzgeVar);
            i5 = zzgeVar.zza;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzic.zza();
        }
        Object zza = zzjiVar.zza();
        int i6 = i5 + i4;
        zzjiVar.zzh(zza, bArr, i4, i6, zzgeVar);
        zzjiVar.zzi(zza);
        zzgeVar.zzc = zza;
        return i6;
    }

    public static int zzj(zzji zzjiVar, byte[] bArr, int i, int i2, int i3, zzge zzgeVar) throws IOException {
        zzja zzjaVar = (zzja) zzjiVar;
        Object zza = zzjaVar.zza();
        int zzg = zzjaVar.zzg(zza, bArr, i, i2, i3, zzgeVar);
        zzjaVar.zzi(zza);
        zzgeVar.zzc = zza;
        return zzg;
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzhz<?> zzhzVar, zzge zzgeVar) {
        zzht zzhtVar = (zzht) zzhzVar;
        int zza = zza(bArr, i2, zzgeVar);
        zzhtVar.zzh(zzgeVar.zza);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzgeVar);
            if (i != zzgeVar.zza) {
                break;
            }
            zza = zza(bArr, zza2, zzgeVar);
            zzhtVar.zzh(zzgeVar.zza);
        }
        return zza;
    }

    public static int zzl(byte[] bArr, int i, zzhz<?> zzhzVar, zzge zzgeVar) throws IOException {
        zzht zzhtVar = (zzht) zzhzVar;
        int zza = zza(bArr, i, zzgeVar);
        int i2 = zzgeVar.zza + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzgeVar);
            zzhtVar.zzh(zzgeVar.zza);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzic.zza();
    }

    public static int zzm(zzji<?> zzjiVar, int i, byte[] bArr, int i2, int i3, zzhz<?> zzhzVar, zzge zzgeVar) throws IOException {
        int zzi = zzi(zzjiVar, bArr, i2, i3, zzgeVar);
        zzhzVar.add(zzgeVar.zzc);
        while (zzi < i3) {
            int zza = zza(bArr, zzi, zzgeVar);
            if (i != zzgeVar.zza) {
                break;
            }
            zzi = zzi(zzjiVar, bArr, zza, i3, zzgeVar);
            zzhzVar.add(zzgeVar.zzc);
        }
        return zzi;
    }

    public static int zzn(int i, byte[] bArr, int i2, int i3, zzjx zzjxVar, zzge zzgeVar) throws zzic {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int zzc = zzc(bArr, i2, zzgeVar);
                zzjxVar.zzh(i, Long.valueOf(zzgeVar.zzb));
                return zzc;
            } else if (i5 == 1) {
                zzjxVar.zzh(i, Long.valueOf(zze(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int zza = zza(bArr, i2, zzgeVar);
                int i6 = zzgeVar.zza;
                if (i6 < 0) {
                    throw zzic.zzb();
                }
                if (i6 > bArr.length - zza) {
                    throw zzic.zza();
                }
                if (i6 == 0) {
                    zzjxVar.zzh(i, zzgs.zzb);
                } else {
                    zzjxVar.zzh(i, zzgs.zzj(bArr, zza, i6));
                }
                return zza + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzic.zzc();
                }
                zzjxVar.zzh(i, Integer.valueOf(zzd(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                zzjx zzb = zzjx.zzb();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    i4 = zza(bArr, i2, zzgeVar);
                    i8 = zzgeVar.zza;
                    if (i8 == i7) {
                        break;
                    }
                    i2 = zzn(i8, bArr, i4, i3, zzb, zzgeVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzic.zze();
                }
                zzjxVar.zzh(i, zzb);
                return i4;
            }
        }
        throw zzic.zzc();
    }
}
