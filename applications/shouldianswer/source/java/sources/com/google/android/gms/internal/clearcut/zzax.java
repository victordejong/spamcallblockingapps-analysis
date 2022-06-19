package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzax.class */
public final class zzax {
    public static int zza(int i, byte[] bArr, int i2, int i3, zzay zzayVar) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return zzb(bArr, i2, zzayVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return zza(bArr, i2, zzayVar) + zzayVar.zzfd;
            }
            if (i5 != 3) {
                if (i5 != 5) {
                    throw zzco.zzbm();
                }
                return i2 + 4;
            }
            int i6 = (i & (-8)) | 4;
            int i7 = 0;
            while (true) {
                i4 = i2;
                if (i2 >= i3) {
                    break;
                }
                int zza = zza(bArr, i2, zzayVar);
                int i8 = zzayVar.zzfd;
                i7 = i8;
                i4 = zza;
                if (i8 == i6) {
                    break;
                }
                i7 = i8;
                i2 = zza(i8, bArr, zza, i3, zzayVar);
            }
            if (i4 <= i3 && i7 == i6) {
                return i4;
            }
            throw zzco.zzbo();
        }
        throw zzco.zzbm();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzcn<?> zzcnVar, zzay zzayVar) {
        int i4;
        zzch zzchVar = (zzch) zzcnVar;
        int zza = zza(bArr, i2, zzayVar);
        while (true) {
            i4 = zza;
            zzchVar.zzac(zzayVar.zzfd);
            if (i4 >= i3) {
                break;
            }
            int zza2 = zza(bArr, i4, zzayVar);
            if (i != zzayVar.zzfd) {
                break;
            }
            zza = zza(bArr, zza2, zzayVar);
        }
        return i4;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzey zzeyVar, zzay zzayVar) {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                int zzb = zzb(bArr, i2, zzayVar);
                zzeyVar.zzb(i, Long.valueOf(zzayVar.zzfe));
                return zzb;
            } else if (i6 == 1) {
                zzeyVar.zzb(i, Long.valueOf(zzd(bArr, i2)));
                return i2 + 8;
            } else if (i6 == 2) {
                int zza = zza(bArr, i2, zzayVar);
                int i7 = zzayVar.zzfd;
                zzeyVar.zzb(i, i7 == 0 ? zzbb.zzfi : zzbb.zzb(bArr, zza, i7));
                return zza + i7;
            } else if (i6 != 3) {
                if (i6 != 5) {
                    throw zzco.zzbm();
                }
                zzeyVar.zzb(i, Integer.valueOf(zzc(bArr, i2)));
                return i2 + 4;
            } else {
                zzey zzeb = zzey.zzeb();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzayVar);
                    i9 = zzayVar.zzfd;
                    if (i9 == i8) {
                        i5 = zza2;
                        i4 = i9;
                        break;
                    }
                    i2 = zza(i9, bArr, zza2, i3, zzeb, zzayVar);
                }
                if (i5 > i3 || i4 != i8) {
                    throw zzco.zzbo();
                }
                zzeyVar.zzb(i, zzeb);
                return i5;
            }
        }
        throw zzco.zzbm();
    }

    public static int zza(int i, byte[] bArr, int i2, zzay zzayVar) {
        int i3;
        int i4;
        int i5;
        int i6 = i & 127;
        int i7 = i2 + 1;
        byte b = bArr[i2];
        if (b < 0) {
            int i8 = i6 | ((b & Byte.MAX_VALUE) << 7);
            int i9 = i7 + 1;
            byte b2 = bArr[i7];
            if (b2 >= 0) {
                i4 = b2 << 14;
                i3 = i9;
            } else {
                i6 = i8 | ((b2 & Byte.MAX_VALUE) << 14);
                int i10 = i9 + 1;
                byte b3 = bArr[i9];
                if (b3 >= 0) {
                    i7 = i10;
                    i5 = b3 << 21;
                } else {
                    i8 = i6 | ((b3 & Byte.MAX_VALUE) << 21);
                    i3 = i10 + 1;
                    byte b4 = bArr[i10];
                    if (b4 >= 0) {
                        i4 = b4 << 28;
                    } else {
                        while (true) {
                            int i11 = i3 + 1;
                            if (bArr[i3] >= 0) {
                                zzayVar.zzfd = i8 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i11;
                            }
                            i3 = i11;
                        }
                    }
                }
            }
            zzayVar.zzfd = i8 | i4;
            return i3;
        }
        i5 = b << 7;
        zzayVar.zzfd = i6 | i5;
        return i7;
    }

    public static int zza(byte[] bArr, int i, zzay zzayVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzayVar.zzfd = b;
            return i2;
        }
        return zza(b, bArr, i2, zzayVar);
    }

    public static int zza(byte[] bArr, int i, zzcn<?> zzcnVar, zzay zzayVar) {
        zzch zzchVar = (zzch) zzcnVar;
        int zza = zza(bArr, i, zzayVar);
        int i2 = zzayVar.zzfd + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzayVar);
            zzchVar.zzac(zzayVar.zzfd);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzco.zzbl();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static int zzb(byte[] bArr, int i, zzay zzayVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzayVar.zzfe = j;
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
        zzayVar.zzfe = c;
        return i3;
    }

    public static int zzc(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzc(byte[] bArr, int i, zzay zzayVar) {
        int zza = zza(bArr, i, zzayVar);
        int i2 = zzayVar.zzfd;
        if (i2 == 0) {
            zzayVar.zzff = "";
            return zza;
        }
        zzayVar.zzff = new String(bArr, zza, i2, zzci.UTF_8);
        return zza + i2;
    }

    public static int zzd(byte[] bArr, int i, zzay zzayVar) {
        int zza = zza(bArr, i, zzayVar);
        int i2 = zzayVar.zzfd;
        if (i2 == 0) {
            zzayVar.zzff = "";
            return zza;
        }
        int i3 = zza + i2;
        if (!zzff.zze(bArr, zza, i3)) {
            throw zzco.zzbp();
        }
        zzayVar.zzff = new String(bArr, zza, i2, zzci.UTF_8);
        return i3;
    }

    public static long zzd(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static double zze(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzd(bArr, i));
    }

    public static int zze(byte[] bArr, int i, zzay zzayVar) {
        int zza = zza(bArr, i, zzayVar);
        int i2 = zzayVar.zzfd;
        if (i2 == 0) {
            zzayVar.zzff = zzbb.zzfi;
            return zza;
        }
        zzayVar.zzff = zzbb.zzb(bArr, zza, i2);
        return zza + i2;
    }

    public static float zzf(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzc(bArr, i));
    }
}
