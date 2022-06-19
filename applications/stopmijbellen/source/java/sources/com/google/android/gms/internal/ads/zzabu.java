package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.ArrayList;
import p007a6.C0028d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabu.class */
public final class zzabu {
    private static final byte[] zza = zzfn.zzW("OpusHead");

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b6, code lost:
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0115, code lost:
        if (r0 != 13) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0158, code lost:
        r13 = null;
        r10 = r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<com.google.android.gms.internal.ads.zzdd, com.google.android.gms.internal.ads.zzdd> zza(com.google.android.gms.internal.ads.zzabm r10) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabu.zza(com.google.android.gms.internal.ads.zzabm):android.util.Pair");
    }

    public static zzdd zzb(zzabl zzablVar) {
        zzaah zzaahVar;
        zzabm zzb = zzablVar.zzb(1751411826);
        zzabm zzb2 = zzablVar.zzb(1801812339);
        zzabm zzb3 = zzablVar.zzb(1768715124);
        if (zzb == null || zzb2 == null || zzb3 == null || zzg(zzb.zza) != 1835299937) {
            return null;
        }
        zzfd zzfdVar = zzb2.zza;
        zzfdVar.zzF(12);
        int zze = zzfdVar.zze();
        String[] strArr = new String[zze];
        for (int i = 0; i < zze; i++) {
            int zze2 = zzfdVar.zze();
            zzfdVar.zzG(4);
            strArr[i] = zzfdVar.zzx(zze2 - 8, zzfpt.zzc);
        }
        zzfd zzfdVar2 = zzb3.zza;
        zzfdVar2.zzF(8);
        ArrayList arrayList = new ArrayList();
        while (zzfdVar2.zza() > 8) {
            int zzc = zzfdVar2.zzc();
            int zze3 = zzfdVar2.zze();
            int zze4 = zzfdVar2.zze() - 1;
            if (zze4 < 0 || zze4 >= zze) {
                C0028d.m8913g(52, "Skipped metadata with unknown key index: ", zze4, "AtomParsers");
            } else {
                String str = strArr[zze4];
                while (true) {
                    int zzc2 = zzfdVar2.zzc();
                    if (zzc2 >= zzc + zze3) {
                        zzaahVar = null;
                        break;
                    }
                    int zze5 = zzfdVar2.zze();
                    if (zzfdVar2.zze() == 1684108385) {
                        int zze6 = zzfdVar2.zze();
                        int zze7 = zzfdVar2.zze();
                        int i2 = zze5 - 16;
                        byte[] bArr = new byte[i2];
                        zzfdVar2.zzB(bArr, 0, i2);
                        zzaahVar = new zzaah(str, bArr, zze7, zze6);
                        break;
                    }
                    zzfdVar2.zzF(zzc2 + zze5);
                }
                if (zzaahVar != null) {
                    arrayList.add(zzaahVar);
                }
            }
            zzfdVar2.zzF(zzc + zze3);
        }
        if (!arrayList.isEmpty()) {
            return new zzdd(arrayList);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0123, code lost:
        if (r0 == 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0fac, code lost:
        if ("audio/g711-alaw".equals(r0) != false) goto L438;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0c9c  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0d76  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0d7d  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0dcf  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0f8a  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x1163  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x1314 A[LOOP:13: B:507:0x1314->B:512:0x1327, LOOP_START, PHI: r35 
      PHI: (r35v18 int) = (r35v9 int), (r35v19 int) binds: [B:506:0x1311, B:512:0x1327] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:516:0x133b  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x13aa  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x13cb  */
    /* JADX WARN: Removed duplicated region for block: B:536:0x13d3  */
    /* JADX WARN: Removed duplicated region for block: B:541:0x149d  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x14c4  */
    /* JADX WARN: Removed duplicated region for block: B:641:0x18e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:663:0x12f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03ca  */
    /* JADX WARN: Type inference failed for: r0v1170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v1175, types: [long] */
    /* JADX WARN: Type inference failed for: r0v1217, types: [long] */
    /* JADX WARN: Type inference failed for: r0v1219, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r0v316, types: [long] */
    /* JADX WARN: Type inference failed for: r0v426, types: [long] */
    /* JADX WARN: Type inference failed for: r0v429, types: [long] */
    /* JADX WARN: Type inference failed for: r0v474, types: [long] */
    /* JADX WARN: Type inference failed for: r0v513, types: [long] */
    /* JADX WARN: Type inference failed for: r0v522 */
    /* JADX WARN: Type inference failed for: r0v544, types: [long] */
    /* JADX WARN: Type inference failed for: r0v753, types: [long] */
    /* JADX WARN: Type inference failed for: r0v755, types: [long] */
    /* JADX WARN: Type inference failed for: r0v757, types: [long] */
    /* JADX WARN: Type inference failed for: r0v759, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.google.android.gms.internal.ads.zzacn> zzc(com.google.android.gms.internal.ads.zzabl r17, com.google.android.gms.internal.ads.zzxf r18, long r19, com.google.android.gms.internal.ads.zzs r21, boolean r22, boolean r23, com.google.android.gms.internal.ads.zzfpv<com.google.android.gms.internal.ads.zzack, com.google.android.gms.internal.ads.zzack> r24) throws com.google.android.gms.internal.ads.zzbj {
        /*
            Method dump skipped, instructions count: 6383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabu.zzc(com.google.android.gms.internal.ads.zzabl, com.google.android.gms.internal.ads.zzxf, long, com.google.android.gms.internal.ads.zzs, boolean, boolean, com.google.android.gms.internal.ads.zzfpv):java.util.List");
    }

    public static void zzd(zzfd zzfdVar) {
        int zzc = zzfdVar.zzc();
        zzfdVar.zzG(4);
        int i = zzc;
        if (zzfdVar.zze() != 1751411826) {
            i = zzc + 4;
        }
        zzfdVar.zzF(i);
    }

    private static int zze(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    private static int zzf(zzfd zzfdVar) {
        int zzk = zzfdVar.zzk();
        int i = zzk & 127;
        while (true) {
            int i2 = i;
            if ((zzk & 128) == 128) {
                zzk = zzfdVar.zzk();
                i = (i2 << 7) | (zzk & 127);
            } else {
                return i2;
            }
        }
    }

    private static int zzg(zzfd zzfdVar) {
        zzfdVar.zzF(16);
        return zzfdVar.zze();
    }

    private static Pair<String, byte[]> zzh(zzfd zzfdVar, int i) {
        zzfdVar.zzF(i + 12);
        zzfdVar.zzG(1);
        zzf(zzfdVar);
        zzfdVar.zzG(2);
        int zzk = zzfdVar.zzk();
        if ((zzk & 128) != 0) {
            zzfdVar.zzG(2);
        }
        if ((zzk & 64) != 0) {
            zzfdVar.zzG(zzfdVar.zzo());
        }
        if ((zzk & 32) != 0) {
            zzfdVar.zzG(2);
        }
        zzfdVar.zzG(1);
        zzf(zzfdVar);
        String zzd = zzbi.zzd(zzfdVar.zzk());
        if ("audio/mpeg".equals(zzd) || "audio/vnd.dts".equals(zzd) || "audio/vnd.dts.hd".equals(zzd)) {
            return Pair.create(zzd, null);
        }
        zzfdVar.zzG(12);
        zzfdVar.zzG(1);
        int zzf = zzf(zzfdVar);
        byte[] bArr = new byte[zzf];
        zzfdVar.zzB(bArr, 0, zzf);
        return Pair.create(zzd, bArr);
    }

    private static Pair<Integer, zzacl> zzi(zzfd zzfdVar, int i, int i2) throws zzbj {
        Integer num;
        Pair<Integer, zzacl> pair;
        zzacl zzaclVar;
        int i3;
        int i4;
        byte[] bArr;
        String str;
        Integer num2;
        int zzc = zzfdVar.zzc();
        while (true) {
            int i5 = zzc;
            if (i5 - i < i2) {
                zzfdVar.zzF(i5);
                int zze = zzfdVar.zze();
                zzwt.zzb(zze > 0, "childAtomSize must be positive");
                if (zzfdVar.zze() == 1936289382) {
                    int i6 = i5 + 8;
                    int i7 = -1;
                    int i8 = 0;
                    String str2 = null;
                    Integer num3 = null;
                    while (true) {
                        num = num3;
                        if (i6 - i5 >= zze) {
                            break;
                        }
                        zzfdVar.zzF(i6);
                        int zze2 = zzfdVar.zze();
                        int zze3 = zzfdVar.zze();
                        if (zze3 == 1718775137) {
                            num2 = Integer.valueOf(zzfdVar.zze());
                            str = str2;
                        } else if (zze3 == 1935894637) {
                            zzfdVar.zzG(4);
                            str = zzfdVar.zzx(4, zzfpt.zzc);
                            num2 = num;
                        } else {
                            str = str2;
                            num2 = num;
                            if (zze3 == 1935894633) {
                                i7 = i6;
                                i8 = zze2;
                                num2 = num;
                                str = str2;
                            }
                        }
                        i6 += zze2;
                        str2 = str;
                        num3 = num2;
                    }
                    if ("cenc".equals(str2) || "cbc1".equals(str2) || "cens".equals(str2) || "cbcs".equals(str2)) {
                        zzwt.zzb(num != null, "frma atom is mandatory");
                        zzwt.zzb(i7 != -1, "schi atom is mandatory");
                        int i9 = i7;
                        int i10 = 8;
                        while (true) {
                            int i11 = i9 + i10;
                            if (i11 - i7 >= i8) {
                                zzaclVar = null;
                                break;
                            }
                            zzfdVar.zzF(i11);
                            int zze4 = zzfdVar.zze();
                            if (zzfdVar.zze() == 1952804451) {
                                int zze5 = zzfdVar.zze();
                                zzfdVar.zzG(1);
                                if (zzabn.zze(zze5) == 0) {
                                    zzfdVar.zzG(1);
                                    i3 = 0;
                                    i4 = 0;
                                } else {
                                    int zzk = zzfdVar.zzk();
                                    i3 = zzk & 15;
                                    i4 = (zzk & 240) >> 4;
                                }
                                boolean z = zzfdVar.zzk() == 1;
                                int zzk2 = zzfdVar.zzk();
                                byte[] bArr2 = new byte[16];
                                zzfdVar.zzB(bArr2, 0, 16);
                                if (!z || zzk2 != 0) {
                                    bArr = null;
                                } else {
                                    int zzk3 = zzfdVar.zzk();
                                    bArr = new byte[zzk3];
                                    zzfdVar.zzB(bArr, 0, zzk3);
                                }
                                zzaclVar = new zzacl(z, str2, zzk2, bArr2, i4, i3, bArr);
                            } else {
                                i9 = i11;
                                i10 = zze4;
                            }
                        }
                        zzwt.zzb(zzaclVar != null, "tenc atom is mandatory");
                        int i12 = zzfn.zza;
                        pair = Pair.create(num, zzaclVar);
                    } else {
                        pair = null;
                    }
                    if (pair != null) {
                        return pair;
                    }
                }
                zzc = i5 + zze;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0253  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzj(com.google.android.gms.internal.ads.zzfd r6, int r7, int r8, int r9, int r10, java.lang.String r11, boolean r12, com.google.android.gms.internal.ads.zzs r13, com.google.android.gms.internal.ads.zzabq r14, int r15) throws com.google.android.gms.internal.ads.zzbj {
        /*
            Method dump skipped, instructions count: 1651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabu.zzj(com.google.android.gms.internal.ads.zzfd, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzs, com.google.android.gms.internal.ads.zzabq, int):void");
    }
}
