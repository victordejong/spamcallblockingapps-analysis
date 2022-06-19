package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgir.class */
public final class zzgir {
    public static int zza(byte[] bArr, int i, zzgiq zzgiqVar) throws zzgkx {
        int zzj = zzj(bArr, i, zzgiqVar);
        int i2 = zzgiqVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zzj) {
                throw zzgkx.zzj();
            }
            if (i2 == 0) {
                zzgiqVar.zzc = zzgjf.zzb;
                return zzj;
            }
            zzgiqVar.zzc = zzgjf.zzw(bArr, zzj, i2);
            return zzj + i2;
        }
        throw zzgkx.zzf();
    }

    public static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzc(zzgmo zzgmoVar, byte[] bArr, int i, int i2, int i3, zzgiq zzgiqVar) throws IOException {
        zzgly zzglyVar = (zzgly) zzgmoVar;
        Object zze = zzglyVar.zze();
        int zzc = zzglyVar.zzc(zze, bArr, i, i2, i3, zzgiqVar);
        zzglyVar.zzf(zze);
        zzgiqVar.zzc = zze;
        return zzc;
    }

    public static int zzd(zzgmo zzgmoVar, byte[] bArr, int i, int i2, zzgiq zzgiqVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zzk(b, bArr, i3, zzgiqVar);
            i5 = zzgiqVar.zza;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzgkx.zzj();
        }
        Object zze = zzgmoVar.zze();
        int i6 = i5 + i4;
        zzgmoVar.zzi(zze, bArr, i4, i6, zzgiqVar);
        zzgmoVar.zzf(zze);
        zzgiqVar.zzc = zze;
        return i6;
    }

    public static int zze(zzgmo<?> zzgmoVar, int i, byte[] bArr, int i2, int i3, zzgku<?> zzgkuVar, zzgiq zzgiqVar) throws IOException {
        int zzd = zzd(zzgmoVar, bArr, i2, i3, zzgiqVar);
        zzgkuVar.add(zzgiqVar.zzc);
        while (zzd < i3) {
            int zzj = zzj(bArr, zzd, zzgiqVar);
            if (i != zzgiqVar.zza) {
                break;
            }
            zzd = zzd(zzgmoVar, bArr, zzj, i3, zzgiqVar);
            zzgkuVar.add(zzgiqVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzgku<?> zzgkuVar, zzgiq zzgiqVar) throws IOException {
        zzgkm zzgkmVar = (zzgkm) zzgkuVar;
        int zzj = zzj(bArr, i, zzgiqVar);
        int i2 = zzgiqVar.zza + zzj;
        while (zzj < i2) {
            zzj = zzj(bArr, zzj, zzgiqVar);
            zzgkmVar.zzh(zzgiqVar.zza);
        }
        if (zzj == i2) {
            return zzj;
        }
        throw zzgkx.zzj();
    }

    public static int zzg(byte[] bArr, int i, zzgiq zzgiqVar) throws zzgkx {
        int zzj = zzj(bArr, i, zzgiqVar);
        int i2 = zzgiqVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgiqVar.zzc = "";
                return zzj;
            }
            zzgiqVar.zzc = new String(bArr, zzj, i2, zzgkv.zzb);
            return zzj + i2;
        }
        throw zzgkx.zzf();
    }

    public static int zzh(byte[] bArr, int i, zzgiq zzgiqVar) throws zzgkx {
        int zzj = zzj(bArr, i, zzgiqVar);
        int i2 = zzgiqVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgiqVar.zzc = "";
                return zzj;
            }
            zzgiqVar.zzc = zzgnu.zzh(bArr, zzj, i2);
            return zzj + i2;
        }
        throw zzgkx.zzf();
    }

    public static int zzi(int i, byte[] bArr, int i2, int i3, zzgng zzgngVar, zzgiq zzgiqVar) throws zzgkx {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int zzm = zzm(bArr, i2, zzgiqVar);
                zzgngVar.zzh(i, Long.valueOf(zzgiqVar.zzb));
                return zzm;
            } else if (i5 == 1) {
                zzgngVar.zzh(i, Long.valueOf(zzn(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int zzj = zzj(bArr, i2, zzgiqVar);
                int i6 = zzgiqVar.zza;
                if (i6 < 0) {
                    throw zzgkx.zzf();
                }
                if (i6 > bArr.length - zzj) {
                    throw zzgkx.zzj();
                }
                if (i6 == 0) {
                    zzgngVar.zzh(i, zzgjf.zzb);
                } else {
                    zzgngVar.zzh(i, zzgjf.zzw(bArr, zzj, i6));
                }
                return zzj + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzgkx.zzc();
                }
                zzgngVar.zzh(i, Integer.valueOf(zzb(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                zzgng zze = zzgng.zze();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zzj2 = zzj(bArr, i2, zzgiqVar);
                    int i9 = zzgiqVar.zza;
                    if (i9 == i7) {
                        i8 = i9;
                        i4 = zzj2;
                        break;
                    }
                    i8 = i9;
                    i2 = zzi(i9, bArr, zzj2, i3, zze, zzgiqVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzgkx.zzg();
                }
                zzgngVar.zzh(i, zze);
                return i4;
            }
        }
        throw zzgkx.zzc();
    }

    public static int zzj(byte[] bArr, int i, zzgiq zzgiqVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzgiqVar.zza = b;
            return i2;
        }
        return zzk(b, bArr, i2, zzgiqVar);
    }

    public static int zzk(int i, byte[] bArr, int i2, zzgiq zzgiqVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzgiqVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzgiqVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgiqVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgiqVar.zza = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgiqVar.zza = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    public static int zzl(int i, byte[] bArr, int i2, int i3, zzgku<?> zzgkuVar, zzgiq zzgiqVar) {
        zzgkm zzgkmVar = (zzgkm) zzgkuVar;
        int zzj = zzj(bArr, i2, zzgiqVar);
        zzgkmVar.zzh(zzgiqVar.zza);
        while (zzj < i3) {
            int zzj2 = zzj(bArr, zzj, zzgiqVar);
            if (i != zzgiqVar.zza) {
                break;
            }
            zzj = zzj(bArr, zzj2, zzgiqVar);
            zzgkmVar.zzh(zzgiqVar.zza);
        }
        return zzj;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    public static int zzm(byte[] bArr, int i, zzgiq zzgiqVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzgiqVar.zzb = j;
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
        zzgiqVar.zzb = c;
        return i3;
    }

    public static long zzn(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }
}
