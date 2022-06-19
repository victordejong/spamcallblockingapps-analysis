package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzis.class */
public final class zzis {
    public static int zza(byte[] bArr, int i, zzir zzirVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzirVar.zza = b;
            return i2;
        }
        return zzb(b, bArr, i2, zzirVar);
    }

    public static int zzb(int i, byte[] bArr, int i2, zzir zzirVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzirVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzirVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzirVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzirVar.zza = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzirVar.zza = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    public static int zzc(byte[] bArr, int i, zzir zzirVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzirVar.zzb = j;
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
        zzirVar.zzb = c;
        return i3;
    }

    public static int zzd(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static long zze(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int zzf(byte[] bArr, int i, zzir zzirVar) throws zzkn {
        int zza = zza(bArr, i, zzirVar);
        int i2 = zzirVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzirVar.zzc = "";
                return zza;
            }
            zzirVar.zzc = new String(bArr, zza, i2, zzkl.zza);
            return zza + i2;
        }
        throw zzkn.zzb();
    }

    public static int zzg(byte[] bArr, int i, zzir zzirVar) throws zzkn {
        int zza = zza(bArr, i, zzirVar);
        int i2 = zzirVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzirVar.zzc = "";
                return zza;
            }
            zzirVar.zzc = zzmw.zze(bArr, zza, i2);
            return zza + i2;
        }
        throw zzkn.zzb();
    }

    public static int zzh(byte[] bArr, int i, zzir zzirVar) throws zzkn {
        int zza = zza(bArr, i, zzirVar);
        int i2 = zzirVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzkn.zza();
            }
            if (i2 == 0) {
                zzirVar.zzc = zzjd.zzb;
                return zza;
            }
            zzirVar.zzc = zzjd.zzj(bArr, zza, i2);
            return zza + i2;
        }
        throw zzkn.zzb();
    }

    public static int zzi(zzlt zzltVar, byte[] bArr, int i, int i2, zzir zzirVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zzb(b, bArr, i3, zzirVar);
            i5 = zzirVar.zza;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzkn.zza();
        }
        Object zza = zzltVar.zza();
        int i6 = i5 + i4;
        zzltVar.zzh(zza, bArr, i4, i6, zzirVar);
        zzltVar.zzi(zza);
        zzirVar.zzc = zza;
        return i6;
    }

    public static int zzj(zzlt zzltVar, byte[] bArr, int i, int i2, int i3, zzir zzirVar) throws IOException {
        zzll zzllVar = (zzll) zzltVar;
        Object zza = zzllVar.zza();
        int zzg = zzllVar.zzg(zza, bArr, i, i2, i3, zzirVar);
        zzllVar.zzi(zza);
        zzirVar.zzc = zza;
        return zzg;
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzkk<?> zzkkVar, zzir zzirVar) {
        zzke zzkeVar = (zzke) zzkkVar;
        int zza = zza(bArr, i2, zzirVar);
        zzkeVar.zzh(zzirVar.zza);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzirVar);
            if (i != zzirVar.zza) {
                break;
            }
            zza = zza(bArr, zza2, zzirVar);
            zzkeVar.zzh(zzirVar.zza);
        }
        return zza;
    }

    public static int zzl(byte[] bArr, int i, zzkk<?> zzkkVar, zzir zzirVar) throws IOException {
        zzke zzkeVar = (zzke) zzkkVar;
        int zza = zza(bArr, i, zzirVar);
        int i2 = zzirVar.zza + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzirVar);
            zzkeVar.zzh(zzirVar.zza);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzkn.zza();
    }

    public static int zzm(zzlt<?> zzltVar, int i, byte[] bArr, int i2, int i3, zzkk<?> zzkkVar, zzir zzirVar) throws IOException {
        int zzi = zzi(zzltVar, bArr, i2, i3, zzirVar);
        zzkkVar.add(zzirVar.zzc);
        while (zzi < i3) {
            int zza = zza(bArr, zzi, zzirVar);
            if (i != zzirVar.zza) {
                break;
            }
            zzi = zzi(zzltVar, bArr, zza, i3, zzirVar);
            zzkkVar.add(zzirVar.zzc);
        }
        return zzi;
    }

    public static int zzn(int i, byte[] bArr, int i2, int i3, zzmi zzmiVar, zzir zzirVar) throws zzkn {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int zzc = zzc(bArr, i2, zzirVar);
                zzmiVar.zzh(i, Long.valueOf(zzirVar.zzb));
                return zzc;
            } else if (i5 == 1) {
                zzmiVar.zzh(i, Long.valueOf(zze(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int zza = zza(bArr, i2, zzirVar);
                int i6 = zzirVar.zza;
                if (i6 < 0) {
                    throw zzkn.zzb();
                }
                if (i6 > bArr.length - zza) {
                    throw zzkn.zza();
                }
                if (i6 == 0) {
                    zzmiVar.zzh(i, zzjd.zzb);
                } else {
                    zzmiVar.zzh(i, zzjd.zzj(bArr, zza, i6));
                }
                return zza + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzkn.zzc();
                }
                zzmiVar.zzh(i, Integer.valueOf(zzd(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                zzmi zzb = zzmi.zzb();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    i4 = zza(bArr, i2, zzirVar);
                    i8 = zzirVar.zza;
                    if (i8 == i7) {
                        break;
                    }
                    i2 = zzn(i8, bArr, i4, i3, zzb, zzirVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzkn.zze();
                }
                zzmiVar.zzh(i, zzb);
                return i4;
            }
        }
        throw zzkn.zzc();
    }
}
