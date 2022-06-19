package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacj.class */
final class zzacj {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean zza(zzwq zzwqVar) throws IOException {
        return zzc(zzwqVar, true, false);
    }

    public static boolean zzb(zzwq zzwqVar, boolean z) throws IOException {
        return zzc(zzwqVar, false, false);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    private static boolean zzc(zzwq zzwqVar, boolean z, boolean z2) throws IOException {
        boolean z3;
        char c;
        boolean z4;
        boolean z5;
        ?? zzc = zzwqVar.zzc();
        int i = (zzc > (-1L) ? 1 : (zzc == (-1L) ? 0 : -1));
        char c2 = 4096;
        if (i != 0) {
            c2 = zzc > 4096 ? (char) 4096 : zzc;
        }
        int i2 = c2;
        zzfd zzfdVar = new zzfd(64);
        int i3 = 0;
        boolean z6 = false;
        while (i3 < i2) {
            zzfdVar.zzC(8);
            if (!zzwqVar.zzm(zzfdVar.zzH(), 0, 8, true)) {
                break;
            }
            ?? zzs = zzfdVar.zzs();
            int zze = zzfdVar.zze();
            int i4 = 16;
            if (zzs == 1) {
                zzwqVar.zzh(zzfdVar.zzH(), 8, 8);
                zzfdVar.zzE(16);
                c = zzfdVar.zzr();
            } else {
                c = zzs;
                if (zzs == 0) {
                    long zzc2 = zzwqVar.zzc();
                    c = zzs;
                    if (zzc2 != -1) {
                        c = (zzc2 - zzwqVar.zzd()) + 8;
                    }
                }
                i4 = 8;
            }
            long j = i4;
            if (c < j) {
                return false;
            }
            int i5 = i3 + i4;
            if (zze == 1836019574) {
                int i6 = i2 + c;
                int i7 = i6;
                if (i != 0) {
                    i7 = i6;
                    if (i6 > zzc) {
                        i7 = (int) zzc;
                    }
                }
                i2 = i7;
                i3 = i5;
            } else if (zze == 1836019558 || zze == 1836475768) {
                z3 = true;
                break;
            } else if ((i5 + c) - j >= i2) {
                break;
            } else {
                int i8 = (int) (c - j);
                int i9 = i5 + i8;
                if (zze != 1718909296) {
                    z4 = z6;
                    if (i8 != 0) {
                        zzwqVar.zzf(i8);
                        z4 = z6;
                    }
                } else if (i8 < 8) {
                    return false;
                } else {
                    zzfdVar.zzC(i8);
                    zzwqVar.zzh(zzfdVar.zzH(), 0, i8);
                    int i10 = 0;
                    while (true) {
                        z5 = z6;
                        if (i10 >= (i8 >> 2)) {
                            break;
                        }
                        if (i10 == 1) {
                            zzfdVar.zzG(4);
                        } else {
                            int zze2 = zzfdVar.zze();
                            if ((zze2 >>> 8) == 3368816) {
                                break;
                            }
                            int i11 = zze2;
                            if (zze2 == 1751476579) {
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
