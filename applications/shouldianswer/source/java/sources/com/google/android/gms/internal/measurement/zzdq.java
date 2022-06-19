package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdq.class */
public final class zzdq {
    public static int zza(int i, byte[] bArr, int i2, int i3, zzdt zzdtVar) {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                return zzb(bArr, i2, zzdtVar);
            }
            if (i6 == 1) {
                return i2 + 8;
            }
            if (i6 == 2) {
                return zza(bArr, i2, zzdtVar) + zzdtVar.zza;
            }
            if (i6 != 3) {
                if (i6 != 5) {
                    throw zzfo.zzd();
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
                int zza = zza(bArr, i2, zzdtVar);
                i8 = zzdtVar.zza;
                i4 = i8;
                i5 = zza;
                if (i8 == i7) {
                    break;
                }
                i2 = zza(i8, bArr, zza, i3, zzdtVar);
            }
            if (i5 <= i3 && i4 == i7) {
                return i5;
            }
            throw zzfo.zzg();
        }
        throw zzfo.zzd();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzfl<?> zzflVar, zzdt zzdtVar) {
        zzfg zzfgVar = (zzfg) zzflVar;
        int zza = zza(bArr, i2, zzdtVar);
        zzfgVar.zzd(zzdtVar.zza);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzdtVar);
            if (i != zzdtVar.zza) {
                break;
            }
            zza = zza(bArr, zza2, zzdtVar);
            zzfgVar.zzd(zzdtVar.zza);
        }
        return zza;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzhy zzhyVar, zzdt zzdtVar) {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                int zzb = zzb(bArr, i2, zzdtVar);
                zzhyVar.zza(i, Long.valueOf(zzdtVar.zzb));
                return zzb;
            } else if (i6 == 1) {
                zzhyVar.zza(i, Long.valueOf(zzb(bArr, i2)));
                return i2 + 8;
            } else if (i6 == 2) {
                int zza = zza(bArr, i2, zzdtVar);
                int i7 = zzdtVar.zza;
                if (i7 < 0) {
                    throw zzfo.zzb();
                }
                if (i7 > bArr.length - zza) {
                    throw zzfo.zza();
                }
                if (i7 == 0) {
                    zzhyVar.zza(i, zzdu.zza);
                } else {
                    zzhyVar.zza(i, zzdu.zza(bArr, zza, i7));
                }
                return zza + i7;
            } else if (i6 != 3) {
                if (i6 != 5) {
                    throw zzfo.zzd();
                }
                zzhyVar.zza(i, Integer.valueOf(zza(bArr, i2)));
                return i2 + 4;
            } else {
                zzhy zzb2 = zzhy.zzb();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzdtVar);
                    i9 = zzdtVar.zza;
                    if (i9 == i8) {
                        i5 = zza2;
                        i4 = i9;
                        break;
                    }
                    i2 = zza(i9, bArr, zza2, i3, zzb2, zzdtVar);
                }
                if (i5 > i3 || i4 != i8) {
                    throw zzfo.zzg();
                }
                zzhyVar.zza(i, zzb2);
                return i5;
            }
        }
        throw zzfo.zzd();
    }

    public static int zza(int i, byte[] bArr, int i2, zzdt zzdtVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzdtVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzdtVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzdtVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzdtVar.zza = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzdtVar.zza = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    public static int zza(zzhd<?> zzhdVar, int i, byte[] bArr, int i2, int i3, zzfl<?> zzflVar, zzdt zzdtVar) {
        int zza = zza(zzhdVar, bArr, i2, i3, zzdtVar);
        zzflVar.add(zzdtVar.zzc);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzdtVar);
            if (i != zzdtVar.zza) {
                break;
            }
            zza = zza(zzhdVar, bArr, zza2, i3, zzdtVar);
            zzflVar.add(zzdtVar.zzc);
        }
        return zza;
    }

    public static int zza(zzhd zzhdVar, byte[] bArr, int i, int i2, int i3, zzdt zzdtVar) {
        zzgs zzgsVar = (zzgs) zzhdVar;
        Object zza = zzgsVar.zza();
        int zza2 = zzgsVar.zza((zzgs) zza, bArr, i, i2, i3, zzdtVar);
        zzgsVar.zzc((zzgs) zza);
        zzdtVar.zzc = zza;
        return zza2;
    }

    public static int zza(zzhd zzhdVar, byte[] bArr, int i, int i2, zzdt zzdtVar) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zza(b, bArr, i3, zzdtVar);
            i5 = zzdtVar.zza;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzfo.zza();
        }
        Object zza = zzhdVar.zza();
        int i6 = i5 + i4;
        zzhdVar.zza(zza, bArr, i4, i6, zzdtVar);
        zzhdVar.zzc(zza);
        zzdtVar.zzc = zza;
        return i6;
    }

    public static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zza(byte[] bArr, int i, zzdt zzdtVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzdtVar.zza = b;
            return i2;
        }
        return zza(b, bArr, i2, zzdtVar);
    }

    public static int zza(byte[] bArr, int i, zzfl<?> zzflVar, zzdt zzdtVar) {
        zzfg zzfgVar = (zzfg) zzflVar;
        int zza = zza(bArr, i, zzdtVar);
        int i2 = zzdtVar.zza + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzdtVar);
            zzfgVar.zzd(zzdtVar.zza);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzfo.zza();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static int zzb(byte[] bArr, int i, zzdt zzdtVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzdtVar.zzb = j;
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
        zzdtVar.zzb = c;
        return i3;
    }

    public static long zzb(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static double zzc(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzb(bArr, i));
    }

    public static int zzc(byte[] bArr, int i, zzdt zzdtVar) {
        int zza = zza(bArr, i, zzdtVar);
        int i2 = zzdtVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzdtVar.zzc = "";
                return zza;
            }
            zzdtVar.zzc = new String(bArr, zza, i2, zzff.zza);
            return zza + i2;
        }
        throw zzfo.zzb();
    }

    public static float zzd(byte[] bArr, int i) {
        return Float.intBitsToFloat(zza(bArr, i));
    }

    public static int zzd(byte[] bArr, int i, zzdt zzdtVar) {
        int zza = zza(bArr, i, zzdtVar);
        int i2 = zzdtVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzdtVar.zzc = "";
                return zza;
            }
            zzdtVar.zzc = zzie.zzb(bArr, zza, i2);
            return zza + i2;
        }
        throw zzfo.zzb();
    }

    public static int zze(byte[] bArr, int i, zzdt zzdtVar) {
        int zza = zza(bArr, i, zzdtVar);
        int i2 = zzdtVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzfo.zza();
            }
            if (i2 == 0) {
                zzdtVar.zzc = zzdu.zza;
                return zza;
            }
            zzdtVar.zzc = zzdu.zza(bArr, zza, i2);
            return zza + i2;
        }
        throw zzfo.zzb();
    }
}
