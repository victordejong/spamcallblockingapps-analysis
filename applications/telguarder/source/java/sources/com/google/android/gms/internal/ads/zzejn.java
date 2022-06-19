package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejn.class */
public final class zzejn {
    public static int zza(int i, byte[] bArr, int i2, int i3, zzejm zzejmVar) throws zzelo {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                return zzb(bArr, i2, zzejmVar);
            }
            if (i6 == 1) {
                return i2 + 8;
            }
            if (i6 == 2) {
                return zza(bArr, i2, zzejmVar) + zzejmVar.zzils;
            }
            if (i6 != 3) {
                if (i6 != 5) {
                    throw zzelo.zzbjd();
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
                int zza = zza(bArr, i2, zzejmVar);
                i8 = zzejmVar.zzils;
                i4 = i8;
                i5 = zza;
                if (i8 == i7) {
                    break;
                }
                i2 = zza(i8, bArr, zza, i3, zzejmVar);
            }
            if (i5 <= i3 && i4 == i7) {
                return i5;
            }
            throw zzelo.zzbjh();
        }
        throw zzelo.zzbjd();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzell<?> zzellVar, zzejm zzejmVar) {
        zzele zzeleVar = (zzele) zzellVar;
        int zza = zza(bArr, i2, zzejmVar);
        zzeleVar.zzhh(zzejmVar.zzils);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzejmVar);
            if (i != zzejmVar.zzils) {
                break;
            }
            zza = zza(bArr, zza2, zzejmVar);
            zzeleVar.zzhh(zzejmVar.zzils);
        }
        return zza;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzeoe zzeoeVar, zzejm zzejmVar) throws zzelo {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                int zzb = zzb(bArr, i2, zzejmVar);
                zzeoeVar.zzd(i, Long.valueOf(zzejmVar.zzilt));
                return zzb;
            } else if (i6 == 1) {
                zzeoeVar.zzd(i, Long.valueOf(zzi(bArr, i2)));
                return i2 + 8;
            } else if (i6 == 2) {
                int zza = zza(bArr, i2, zzejmVar);
                int i7 = zzejmVar.zzils;
                if (i7 < 0) {
                    throw zzelo.zzbjb();
                }
                if (i7 > bArr.length - zza) {
                    throw zzelo.zzbja();
                }
                if (i7 == 0) {
                    zzeoeVar.zzd(i, zzejr.zzilz);
                } else {
                    zzeoeVar.zzd(i, zzejr.zzi(bArr, zza, i7));
                }
                return zza + i7;
            } else if (i6 != 3) {
                if (i6 != 5) {
                    throw zzelo.zzbjd();
                }
                zzeoeVar.zzd(i, Integer.valueOf(zzh(bArr, i2)));
                return i2 + 4;
            } else {
                zzeoe zzbla = zzeoe.zzbla();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzejmVar);
                    i9 = zzejmVar.zzils;
                    if (i9 == i8) {
                        i5 = zza2;
                        i4 = i9;
                        break;
                    }
                    i2 = zza(i9, bArr, zza2, i3, zzbla, zzejmVar);
                }
                if (i5 > i3 || i4 != i8) {
                    throw zzelo.zzbjh();
                }
                zzeoeVar.zzd(i, zzbla);
                return i5;
            }
        }
        throw zzelo.zzbjd();
    }

    public static int zza(int i, byte[] bArr, int i2, zzejm zzejmVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzejmVar.zzils = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzejmVar.zzils = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzejmVar.zzils = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzejmVar.zzils = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzejmVar.zzils = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    public static int zza(zzenj<?> zzenjVar, int i, byte[] bArr, int i2, int i3, zzell<?> zzellVar, zzejm zzejmVar) throws IOException {
        int zza = zza(zzenjVar, bArr, i2, i3, zzejmVar);
        zzellVar.add(zzejmVar.zzilu);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzejmVar);
            if (i != zzejmVar.zzils) {
                break;
            }
            zza = zza(zzenjVar, bArr, zza2, i3, zzejmVar);
            zzellVar.add(zzejmVar.zzilu);
        }
        return zza;
    }

    public static int zza(zzenj zzenjVar, byte[] bArr, int i, int i2, int i3, zzejm zzejmVar) throws IOException {
        zzems zzemsVar = (zzems) zzenjVar;
        Object newInstance = zzemsVar.newInstance();
        int zza = zzemsVar.zza((zzems) newInstance, bArr, i, i2, i3, zzejmVar);
        zzemsVar.zzak(newInstance);
        zzejmVar.zzilu = newInstance;
        return zza;
    }

    public static int zza(zzenj zzenjVar, byte[] bArr, int i, int i2, zzejm zzejmVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zza(b, bArr, i3, zzejmVar);
            i5 = zzejmVar.zzils;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzelo.zzbja();
        }
        Object newInstance = zzenjVar.newInstance();
        int i6 = i5 + i4;
        zzenjVar.zza(newInstance, bArr, i4, i6, zzejmVar);
        zzenjVar.zzak(newInstance);
        zzejmVar.zzilu = newInstance;
        return i6;
    }

    public static int zza(byte[] bArr, int i, zzejm zzejmVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzejmVar.zzils = b;
            return i2;
        }
        return zza(b, bArr, i2, zzejmVar);
    }

    public static int zza(byte[] bArr, int i, zzell<?> zzellVar, zzejm zzejmVar) throws IOException {
        zzele zzeleVar = (zzele) zzellVar;
        int zza = zza(bArr, i, zzejmVar);
        int i2 = zzejmVar.zzils + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzejmVar);
            zzeleVar.zzhh(zzejmVar.zzils);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzelo.zzbja();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static int zzb(byte[] bArr, int i, zzejm zzejmVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzejmVar.zzilt = j;
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
        zzejmVar.zzilt = c;
        return i3;
    }

    public static int zzc(byte[] bArr, int i, zzejm zzejmVar) throws zzelo {
        int zza = zza(bArr, i, zzejmVar);
        int i2 = zzejmVar.zzils;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzejmVar.zzilu = "";
                return zza;
            }
            zzejmVar.zzilu = new String(bArr, zza, i2, zzeld.UTF_8);
            return zza + i2;
        }
        throw zzelo.zzbjb();
    }

    public static int zzd(byte[] bArr, int i, zzejm zzejmVar) throws zzelo {
        int zza = zza(bArr, i, zzejmVar);
        int i2 = zzejmVar.zzils;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzejmVar.zzilu = "";
                return zza;
            }
            zzejmVar.zzilu = zzeok.zzo(bArr, zza, i2);
            return zza + i2;
        }
        throw zzelo.zzbjb();
    }

    public static int zze(byte[] bArr, int i, zzejm zzejmVar) throws zzelo {
        int zza = zza(bArr, i, zzejmVar);
        int i2 = zzejmVar.zzils;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzelo.zzbja();
            }
            if (i2 == 0) {
                zzejmVar.zzilu = zzejr.zzilz;
                return zza;
            }
            zzejmVar.zzilu = zzejr.zzi(bArr, zza, i2);
            return zza + i2;
        }
        throw zzelo.zzbjb();
    }

    public static int zzh(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static long zzi(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static double zzj(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzi(bArr, i));
    }

    public static float zzk(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzh(bArr, i));
    }
}
