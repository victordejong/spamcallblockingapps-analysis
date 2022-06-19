package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzft.class */
public final class zzft {
    public static int zza(int i, byte[] bArr, int i2, int i3, zzfw zzfwVar) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return zzb(bArr, i2, zzfwVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return zza(bArr, i2, zzfwVar) + zzfwVar.zzor;
            }
            if (i5 != 3) {
                if (i5 != 5) {
                    throw zzhq.zzhh();
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
                int zza = zza(bArr, i2, zzfwVar);
                int i8 = zzfwVar.zzor;
                i7 = i8;
                i4 = zza;
                if (i8 == i6) {
                    break;
                }
                i7 = i8;
                i2 = zza(i8, bArr, zza, i3, zzfwVar);
            }
            if (i4 <= i3 && i7 == i6) {
                return i4;
            }
            throw zzhq.zzhl();
        }
        throw zzhq.zzhh();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzhn<?> zzhnVar, zzfw zzfwVar) {
        zzhk zzhkVar = (zzhk) zzhnVar;
        int zza = zza(bArr, i2, zzfwVar);
        zzhkVar.zzbb(zzfwVar.zzor);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzfwVar);
            if (i != zzfwVar.zzor) {
                break;
            }
            zza = zza(bArr, zza2, zzfwVar);
            zzhkVar.zzbb(zzfwVar.zzor);
        }
        return zza;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzka zzkaVar, zzfw zzfwVar) {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                int zzb = zzb(bArr, i2, zzfwVar);
                zzkaVar.zzb(i, Long.valueOf(zzfwVar.zzos));
                return zzb;
            } else if (i6 == 1) {
                zzkaVar.zzb(i, Long.valueOf(zzb(bArr, i2)));
                return i2 + 8;
            } else if (i6 == 2) {
                int zza = zza(bArr, i2, zzfwVar);
                int i7 = zzfwVar.zzor;
                if (i7 < 0) {
                    throw zzhq.zzhf();
                }
                if (i7 > bArr.length - zza) {
                    throw zzhq.zzhe();
                }
                if (i7 == 0) {
                    zzkaVar.zzb(i, zzfx.zzov);
                } else {
                    zzkaVar.zzb(i, zzfx.zza(bArr, zza, i7));
                }
                return zza + i7;
            } else if (i6 != 3) {
                if (i6 != 5) {
                    throw zzhq.zzhh();
                }
                zzkaVar.zzb(i, Integer.valueOf(zza(bArr, i2)));
                return i2 + 4;
            } else {
                zzka zzjb = zzka.zzjb();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzfwVar);
                    i9 = zzfwVar.zzor;
                    if (i9 == i8) {
                        i5 = zza2;
                        i4 = i9;
                        break;
                    }
                    i2 = zza(i9, bArr, zza2, i3, zzjb, zzfwVar);
                }
                if (i5 > i3 || i4 != i8) {
                    throw zzhq.zzhl();
                }
                zzkaVar.zzb(i, zzjb);
                return i5;
            }
        }
        throw zzhq.zzhh();
    }

    public static int zza(int i, byte[] bArr, int i2, zzfw zzfwVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzfwVar.zzor = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzfwVar.zzor = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzfwVar.zzor = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzfwVar.zzor = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzfwVar.zzor = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    public static int zza(zzjf<?> zzjfVar, int i, byte[] bArr, int i2, int i3, zzhn<?> zzhnVar, zzfw zzfwVar) {
        int zza = zza(zzjfVar, bArr, i2, i3, zzfwVar);
        zzhnVar.add(zzfwVar.zzot);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzfwVar);
            if (i != zzfwVar.zzor) {
                break;
            }
            zza = zza(zzjfVar, bArr, zza2, i3, zzfwVar);
            zzhnVar.add(zzfwVar.zzot);
        }
        return zza;
    }

    public static int zza(zzjf zzjfVar, byte[] bArr, int i, int i2, int i3, zzfw zzfwVar) {
        zziu zziuVar = (zziu) zzjfVar;
        Object newInstance = zziuVar.newInstance();
        int zza = zziuVar.zza((zziu) newInstance, bArr, i, i2, i3, zzfwVar);
        zziuVar.zzm(newInstance);
        zzfwVar.zzot = newInstance;
        return zza;
    }

    public static int zza(zzjf zzjfVar, byte[] bArr, int i, int i2, zzfw zzfwVar) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zza(b, bArr, i3, zzfwVar);
            i5 = zzfwVar.zzor;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzhq.zzhe();
        }
        Object newInstance = zzjfVar.newInstance();
        int i6 = i5 + i4;
        zzjfVar.zza(newInstance, bArr, i4, i6, zzfwVar);
        zzjfVar.zzm(newInstance);
        zzfwVar.zzot = newInstance;
        return i6;
    }

    public static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zza(byte[] bArr, int i, zzfw zzfwVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzfwVar.zzor = b;
            return i2;
        }
        return zza(b, bArr, i2, zzfwVar);
    }

    public static int zza(byte[] bArr, int i, zzhn<?> zzhnVar, zzfw zzfwVar) {
        zzhk zzhkVar = (zzhk) zzhnVar;
        int zza = zza(bArr, i, zzfwVar);
        int i2 = zzfwVar.zzor + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzfwVar);
            zzhkVar.zzbb(zzfwVar.zzor);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzhq.zzhe();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static int zzb(byte[] bArr, int i, zzfw zzfwVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzfwVar.zzos = j;
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
        zzfwVar.zzos = c;
        return i3;
    }

    public static long zzb(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static double zzc(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzb(bArr, i));
    }

    public static int zzc(byte[] bArr, int i, zzfw zzfwVar) {
        int zza = zza(bArr, i, zzfwVar);
        int i2 = zzfwVar.zzor;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzfwVar.zzot = "";
                return zza;
            }
            zzfwVar.zzot = new String(bArr, zza, i2, zzhm.UTF_8);
            return zza + i2;
        }
        throw zzhq.zzhf();
    }

    public static float zzd(byte[] bArr, int i) {
        return Float.intBitsToFloat(zza(bArr, i));
    }

    public static int zzd(byte[] bArr, int i, zzfw zzfwVar) {
        int zza = zza(bArr, i, zzfwVar);
        int i2 = zzfwVar.zzor;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzfwVar.zzot = "";
                return zza;
            }
            zzfwVar.zzot = zzkg.zzg(bArr, zza, i2);
            return zza + i2;
        }
        throw zzhq.zzhf();
    }

    public static int zze(byte[] bArr, int i, zzfw zzfwVar) {
        int zza = zza(bArr, i, zzfwVar);
        int i2 = zzfwVar.zzor;
        if (i2 >= 0) {
            if (i2 > bArr.length - zza) {
                throw zzhq.zzhe();
            }
            if (i2 == 0) {
                zzfwVar.zzot = zzfx.zzov;
                return zza;
            }
            zzfwVar.zzot = zzfx.zza(bArr, zza, i2);
            return zza + i2;
        }
        throw zzhq.zzhf();
    }
}
