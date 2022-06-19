package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacf.class */
public final class zzacf implements zzwp, zzxp {
    public static final zzww zza = zzacc.zza;
    private final zzfd zzb;
    private final zzfd zzc;
    private final zzfd zzd;
    private final zzfd zze;
    private final ArrayDeque<zzabl> zzf;
    private final zzaci zzg;
    private final List<zzdc> zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private int zzl;
    private zzfd zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private zzws zzr;
    private zzace[] zzs;
    private long[][] zzt;
    private int zzu;
    private long zzv;
    private int zzw;
    private zzaak zzx;

    public zzacf() {
        this(0);
    }

    public zzacf(int i) {
        this.zzi = 0;
        this.zzg = new zzaci();
        this.zzh = new ArrayList();
        this.zze = new zzfd(16);
        this.zzf = new ArrayDeque<>();
        this.zzb = new zzfd(zzeu.zza);
        this.zzc = new zzfd(4);
        this.zzd = new zzfd();
        this.zzn = -1;
    }

    private static int zzf(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzi(zzacn zzacnVar, long j) {
        int zza2 = zzacnVar.zza(j);
        return zza2 == -1 ? zzacnVar.zzb(j) : zza2;
    }

    private static long zzj(zzacn zzacnVar, long j, long j2) {
        int zzi = zzi(zzacnVar, j);
        return zzi == -1 ? j2 : Math.min(zzacnVar.zzc[zzi], j2);
    }

    private final void zzk() {
        this.zzi = 0;
        this.zzl = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v193, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    private final void zzl(long j) throws zzbj {
        zzdd zzddVar;
        zzdd zzddVar2;
        int i;
        zzdd zzddVar3;
        int i2;
        int i3;
        zzacf zzacfVar = this;
        while (!zzacfVar.zzf.isEmpty() && zzacfVar.zzf.peek().zza == j) {
            zzabl pop = zzacfVar.zzf.pop();
            if (pop.zzd == 1836019574) {
                ArrayList arrayList = new ArrayList();
                boolean z = zzacfVar.zzw == 1;
                zzxf zzxfVar = new zzxf();
                zzabm zzb = pop.zzb(1969517665);
                if (zzb != null) {
                    Pair<zzdd, zzdd> zza2 = zzabu.zza(zzb);
                    zzddVar2 = (zzdd) zza2.first;
                    zzddVar = (zzdd) zza2.second;
                    if (zzddVar2 != null) {
                        zzxfVar.zzb(zzddVar2);
                    }
                } else {
                    zzddVar = null;
                    zzddVar2 = null;
                }
                zzabl zza3 = pop.zza(1835365473);
                zzdd zzb2 = zza3 != null ? zzabu.zzb(zza3) : null;
                List<zzacn> zzc = zzabu.zzc(pop, zzxfVar, -9223372036854775807L, null, false, z, zzacd.zza);
                zzws zzwsVar = zzacfVar.zzr;
                Objects.requireNonNull(zzwsVar);
                int size = zzc.size();
                char c = 1;
                int i4 = 0;
                int i5 = -1;
                while (i4 < size) {
                    zzacn zzacnVar = zzc.get(i4);
                    if (zzacnVar.zzb != 0) {
                        zzack zzackVar = zzacnVar.zza;
                        char c2 = zzackVar.zze;
                        int i6 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
                        char c3 = c2;
                        if (i6 == 0) {
                            c3 = zzacnVar.zzh;
                        }
                        c = Math.max((long) c, (long) c3);
                        zzace zzaceVar = new zzace(zzackVar, zzacnVar, zzwsVar.zzv(i4, zzackVar.zzb));
                        int i7 = zzacnVar.zze;
                        zzz zzb3 = zzackVar.zzf.zzb();
                        zzb3.zzL(i7 + 30);
                        if (zzackVar.zzb == 2 && c3 > 0 && (i3 = zzacnVar.zzb) > 1) {
                            zzb3.zzE(i3 / (c3 / 1000000.0f));
                        }
                        if (zzackVar.zzb == 1 && zzxfVar.zza()) {
                            zzb3.zzC(zzxfVar.zza);
                            zzb3.zzD(zzxfVar.zzb);
                        }
                        int i8 = zzackVar.zzb;
                        zzdd zzddVar4 = this.zzh.isEmpty() ? null : new zzdd(this.zzh);
                        zzdd zzddVar5 = new zzdd(new zzdc[0]);
                        if (i8 == 1) {
                            zzddVar3 = zzddVar5;
                            if (zzddVar2 != null) {
                                zzddVar3 = zzddVar2;
                            }
                        } else {
                            zzddVar3 = zzddVar5;
                            if (i8 == 2) {
                                zzddVar3 = zzddVar5;
                                if (zzb2 != null) {
                                    int i9 = 0;
                                    while (true) {
                                        zzddVar3 = zzddVar5;
                                        if (i9 >= zzb2.zza()) {
                                            break;
                                        }
                                        zzdc zzb4 = zzb2.zzb(i9);
                                        if (zzb4 instanceof zzaah) {
                                            zzaah zzaahVar = (zzaah) zzb4;
                                            if ("com.android.capture.fps".equals(zzaahVar.zza)) {
                                                zzddVar3 = new zzdd(zzaahVar);
                                                break;
                                            }
                                        }
                                        i9++;
                                    }
                                }
                            }
                        }
                        for (int i10 = 0; i10 < 2; i10++) {
                            zzddVar3 = zzddVar3.zzd(new zzdd[]{zzddVar, zzddVar4}[i10]);
                        }
                        if (zzddVar3.zza() > 0) {
                            zzb3.zzM(zzddVar3);
                        }
                        zzaceVar.zzc.zzk(zzb3.zzY());
                        if (zzackVar.zzb == 2) {
                            i2 = i5;
                            if (i5 == -1) {
                                i2 = arrayList.size();
                            }
                        } else {
                            i2 = i5;
                        }
                        arrayList.add(zzaceVar);
                        i5 = i2;
                        zzacfVar = this;
                    }
                    i4++;
                    c = c;
                }
                zzacfVar.zzu = i5;
                zzacfVar.zzv = c;
                zzace[] zzaceVarArr = (zzace[]) arrayList.toArray(new zzace[0]);
                zzacfVar.zzs = zzaceVarArr;
                int length = zzaceVarArr.length;
                ?? r0 = new long[length];
                int[] iArr = new int[length];
                long[] jArr = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i11 = 0; i11 < zzaceVarArr.length; i11++) {
                    r0[i11] = new long[zzaceVarArr[i11].zzb.zzb];
                    jArr[i11] = zzaceVarArr[i11].zzb.zzf[0];
                }
                int i12 = 0;
                char c4 = 0;
                while (i12 < zzaceVarArr.length) {
                    char c5 = 65535;
                    int i13 = 0;
                    int i14 = -1;
                    while (true) {
                        i = i14;
                        if (i13 >= zzaceVarArr.length) {
                            break;
                        }
                        char c6 = c5;
                        int i15 = i;
                        if (!zArr[i13]) {
                            ?? r02 = jArr[i13];
                            c6 = c5;
                            i15 = i;
                            if (r02 <= c5) {
                                i15 = i13;
                                c6 = r02;
                            }
                        }
                        i13++;
                        c5 = c6;
                        i14 = i15;
                    }
                    int i16 = iArr[i];
                    long[] jArr2 = r0[i];
                    jArr2[i16] = c4 == 1 ? 1 : 0;
                    zzacn zzacnVar2 = zzaceVarArr[i].zzb;
                    c4 += zzacnVar2.zzd[i16];
                    int i17 = i16 + 1;
                    iArr[i] = i17;
                    if (i17 < jArr2.length) {
                        jArr[i] = zzacnVar2.zzf[i17];
                    } else {
                        zArr[i] = true;
                        i12++;
                    }
                }
                zzacfVar.zzt = r0;
                zzwsVar.zzB();
                zzwsVar.zzL(zzacfVar);
                zzacfVar.zzf.clear();
                zzacfVar.zzi = 2;
            } else {
                zzacf zzacfVar2 = zzacfVar;
                zzacfVar = zzacfVar2;
                if (!zzacfVar2.zzf.isEmpty()) {
                    zzacfVar2.zzf.peek().zzc(pop);
                    zzacfVar = zzacfVar2;
                }
            }
        }
        if (zzacfVar.zzi != 2) {
            zzk();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00dc, code lost:
        if (r0 < r25) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010d  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v157, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v337, types: [long] */
    /* JADX WARN: Type inference failed for: r0v351, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r17, com.google.android.gms.internal.ads.zzxm r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1870
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacf.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzr = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        this.zzf.clear();
        this.zzl = 0;
        this.zzn = -1;
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        if (j == 0) {
            zzk();
            return;
        }
        zzace[] zzaceVarArr = this.zzs;
        if (zzaceVarArr == null) {
            return;
        }
        for (zzace zzaceVar : zzaceVarArr) {
            zzacn zzacnVar = zzaceVar.zzb;
            int zza2 = zzacnVar.zza(j2);
            int i = zza2;
            if (zza2 == -1) {
                i = zzacnVar.zzb(j2);
            }
            zzaceVar.zzd = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        return zzacj.zzb(zzwqVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzv;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        int zzb;
        zzace[] zzaceVarArr = this.zzs;
        Objects.requireNonNull(zzaceVarArr);
        if (zzaceVarArr.length == 0) {
            zzxq zzxqVar = zzxq.zza;
            return new zzxn(zzxqVar, zzxqVar);
        }
        int i = this.zzu;
        if (i != -1) {
            zzacn zzacnVar = zzaceVarArr[i].zzb;
            int zzi = zzi(zzacnVar, j);
            if (zzi == -1) {
                zzxq zzxqVar2 = zzxq.zza;
                return new zzxn(zzxqVar2, zzxqVar2);
            }
            c2 = zzacnVar.zzf[zzi];
            ?? r0 = zzacnVar.zzc[zzi];
            if (c2 >= j || zzi >= zzacnVar.zzb - 1 || (zzb = zzacnVar.zzb(j)) == -1 || zzb == zzi) {
                c5 = 1;
                c4 = 65535;
            } else {
                c5 = zzacnVar.zzf[zzb];
                c4 = zzacnVar.zzc[zzb];
            }
            c3 = c5;
            c = r0;
        } else {
            c = 65535;
            c2 = j;
            c4 = 65535;
            c3 = 1;
        }
        int i2 = 0;
        while (true) {
            zzace[] zzaceVarArr2 = this.zzs;
            if (i2 >= zzaceVarArr2.length) {
                break;
            }
            char c6 = c4;
            char c7 = c;
            if (i2 != this.zzu) {
                zzacn zzacnVar2 = zzaceVarArr2[i2].zzb;
                c7 = zzj(zzacnVar2, c2, c);
                char c8 = c4;
                if (c3 != -9223372036854775807L) {
                    c8 = zzj(zzacnVar2, c3, c4);
                }
                c6 = c8;
            }
            i2++;
            c4 = c6;
            c = c7;
        }
        zzxq zzxqVar3 = new zzxq(c2, c);
        return c3 == -9223372036854775807L ? new zzxn(zzxqVar3, zzxqVar3) : new zzxn(zzxqVar3, new zzxq(c3, c4));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
