package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrt.class */
public final class zzrt {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean zza(zznv zznvVar) throws IOException {
        return zzc(zznvVar, true, false);
    }

    public static boolean zzb(zznv zznvVar, boolean z) throws IOException {
        return zzc(zznvVar, false, false);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    private static boolean zzc(zznv zznvVar, boolean z, boolean z2) throws IOException {
        boolean z3;
        char c;
        boolean z4;
        boolean z5;
        ?? zzo = zznvVar.zzo();
        int i = (zzo > (-1L) ? 1 : (zzo == (-1L) ? 0 : -1));
        char c2 = 4096;
        if (i != 0) {
            c2 = zzo > 4096 ? (char) 4096 : zzo;
        }
        int i2 = c2;
        zzamf zzamfVar = new zzamf(64);
        int i3 = 0;
        boolean z6 = false;
        while (i3 < i2) {
            zzamfVar.zza(8);
            if (!zznvVar.zzh(zzamfVar.zzi(), 0, 8, true)) {
                z3 = false;
                break;
            }
            ?? zzt = zzamfVar.zzt();
            int zzv = zzamfVar.zzv();
            int i4 = 16;
            if (zzt == 1) {
                zznvVar.zzi(zzamfVar.zzi(), 8, 8);
                zzamfVar.zzf(16);
                c = zzamfVar.zzx();
            } else {
                c = zzt;
                if (zzt == 0) {
                    long zzo2 = zznvVar.zzo();
                    c = zzt;
                    if (zzo2 != -1) {
                        c = (zzo2 - zznvVar.zzm()) + 8;
                    }
                }
                i4 = 8;
            }
            long j = i4;
            if (c < j) {
                return false;
            }
            int i5 = i3 + i4;
            if (zzv == 1836019574) {
                int i6 = i2 + c;
                int i7 = i6;
                if (i != 0) {
                    i7 = i6;
                    if (i6 > zzo) {
                        i7 = (int) zzo;
                    }
                }
                i2 = i7;
                i3 = i5;
            } else if (zzv == 1836019558 || zzv == 1836475768) {
                z3 = true;
                break;
            } else if ((i5 + c) - j >= i2) {
                break;
            } else {
                int i8 = (int) (c - j);
                int i9 = i5 + i8;
                if (zzv != 1718909296) {
                    z4 = z6;
                    if (i8 != 0) {
                        zznvVar.zzk(i8);
                        z4 = z6;
                    }
                } else if (i8 < 8) {
                    return false;
                } else {
                    zzamfVar.zza(i8);
                    zznvVar.zzi(zzamfVar.zzi(), 0, i8);
                    int i10 = 0;
                    while (true) {
                        z5 = z6;
                        if (i10 >= (i8 >> 2)) {
                            break;
                        }
                        if (i10 == 1) {
                            zzamfVar.zzk(4);
                        } else {
                            int zzv2 = zzamfVar.zzv();
                            if ((zzv2 >>> 8) == 3368816) {
                                break;
                            }
                            int i11 = zzv2;
                            if (zzv2 == 1751476579) {
                                i11 = 1751476579;
                            }
                            int[] iArr = zza;
                            for (int i12 = 0; i12 < 29; i12++) {
                                if (iArr[i12] == i11) {
                                    break;
                                }
                            }
                            continue;
                        }
                        i10++;
                    }
                    z5 = true;
                    if (!z5) {
                        return false;
                    }
                    z4 = z5;
                }
                i3 = i9;
                z6 = z4;
            }
        }
        z3 = false;
        return z6 && z == z3;
    }
}
