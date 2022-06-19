package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrp.class */
public final class zzrp implements zznu, zzot {
    public static final zzoa zza = zzrn.zza;
    private final zzamf zzb;
    private final zzamf zzc;
    private final zzamf zzd;
    private final zzamf zze;
    private final ArrayDeque<zzqv> zzf;
    private final zzrs zzg;
    private final List<zzaiu> zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private int zzl;
    private zzamf zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private zznx zzr;
    private zzro[] zzs;
    private long[][] zzt;
    private int zzu;
    private long zzv;
    private int zzw;
    private zzakn zzx;

    public zzrp() {
        this(0);
    }

    public zzrp(int i) {
        this.zzi = 0;
        this.zzg = new zzrs();
        this.zzh = new ArrayList();
        this.zze = new zzamf(16);
        this.zzf = new ArrayDeque<>();
        this.zzb = new zzamf(zzalw.zza);
        this.zzc = new zzamf(4);
        this.zzd = new zzamf();
        this.zzn = -1;
    }

    private final void zzh() {
        this.zzi = 0;
        this.zzl = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v192, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    private final void zzi(long j) throws zzaha {
        zzaiv zzaivVar;
        zzaiv zzaivVar2;
        zzaiv zzaivVar3;
        int i;
        int i2;
        zzrp zzrpVar = this;
        while (!zzrpVar.zzf.isEmpty() && zzrpVar.zzf.peek().zza == j) {
            zzqv pop = zzrpVar.zzf.pop();
            if (pop.zzd == 1836019574) {
                ArrayList arrayList = new ArrayList();
                boolean z = zzrpVar.zzw == 1;
                zzoj zzojVar = new zzoj();
                zzqw zzc = pop.zzc(1969517665);
                if (zzc != null) {
                    Pair<zzaiv, zzaiv> zzb = zzre.zzb(zzc);
                    zzaivVar2 = (zzaiv) zzb.first;
                    zzaivVar = (zzaiv) zzb.second;
                    if (zzaivVar2 != null) {
                        zzojVar.zza(zzaivVar2);
                    }
                } else {
                    zzaivVar = null;
                    zzaivVar2 = null;
                }
                zzqv zzd = pop.zzd(1835365473);
                zzaiv zzc2 = zzd != null ? zzre.zzc(zzd) : null;
                List<zzrx> zza2 = zzre.zza(pop, zzojVar, -9223372036854775807L, null, false, z, zzrm.zza);
                zznx zznxVar = zzrpVar.zzr;
                Objects.requireNonNull(zznxVar);
                int size = zza2.size();
                char c = 1;
                int i3 = 0;
                int i4 = -1;
                while (i3 < size) {
                    zzrx zzrxVar = zza2.get(i3);
                    if (zzrxVar.zzb != 0) {
                        zzru zzruVar = zzrxVar.zza;
                        char c2 = zzruVar.zze;
                        int i5 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
                        char c3 = c2;
                        if (i5 == 0) {
                            c3 = zzrxVar.zzh;
                        }
                        c = Math.max((long) c, (long) c3);
                        zzro zzroVar = new zzro(zzruVar, zzrxVar, zznxVar.zzB(i3, zzruVar.zzb));
                        int i6 = zzrxVar.zze;
                        zzaft zza3 = zzruVar.zzf.zza();
                        zza3.zzO(i6 + 30);
                        if (zzruVar.zzb == 2 && c3 > 0 && (i2 = zzrxVar.zzb) > 1) {
                            zza3.zzU(i2 / (c3 / 1000000.0f));
                        }
                        if (zzruVar.zzb == 1 && zzojVar.zzb()) {
                            zza3.zzad(zzojVar.zza);
                            zza3.zzae(zzojVar.zzb);
                        }
                        int i7 = zzruVar.zzb;
                        zzaiv zzaivVar4 = this.zzh.isEmpty() ? null : new zzaiv(this.zzh);
                        zzaiv zzaivVar5 = new zzaiv(new zzaiu[0]);
                        if (i7 == 1) {
                            zzaivVar3 = zzaivVar5;
                            if (zzaivVar2 != null) {
                                zzaivVar3 = zzaivVar2;
                            }
                        } else {
                            zzaivVar3 = zzaivVar5;
                            if (i7 == 2) {
                                zzaivVar3 = zzaivVar5;
                                if (zzc2 != null) {
                                    int i8 = 0;
                                    while (true) {
                                        zzaivVar3 = zzaivVar5;
                                        if (i8 >= zzc2.zza()) {
                                            break;
                                        }
                                        zzaiu zzb2 = zzc2.zzb(i8);
                                        if (zzb2 instanceof zzakk) {
                                            zzakk zzakkVar = (zzakk) zzb2;
                                            if ("com.android.capture.fps".equals(zzakkVar.zza)) {
                                                zzaivVar3 = new zzaiv(zzakkVar);
                                                break;
                                            }
                                        }
                                        i8++;
                                    }
                                }
                            }
                        }
                        for (int i9 = 0; i9 < 2; i9++) {
                            zzaivVar3 = zzaivVar3.zzc(new zzaiv[]{zzaivVar, zzaivVar4}[i9]);
                        }
                        if (zzaivVar3.zza() > 0) {
                            zza3.zzL(zzaivVar3);
                        }
                        zzroVar.zzc.zzs(zza3.zzah());
                        if (zzruVar.zzb == 2) {
                            i = i4;
                            if (i4 == -1) {
                                i = arrayList.size();
                            }
                        } else {
                            i = i4;
                        }
                        arrayList.add(zzroVar);
                        i4 = i;
                        zzrpVar = this;
                    }
                    i3++;
                    c = c;
                }
                zzrpVar.zzu = i4;
                zzrpVar.zzv = c;
                zzro[] zzroVarArr = (zzro[]) arrayList.toArray(new zzro[0]);
                zzrpVar.zzs = zzroVarArr;
                int length = zzroVarArr.length;
                ?? r0 = new long[length];
                int[] iArr = new int[length];
                long[] jArr = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i10 = 0; i10 < zzroVarArr.length; i10++) {
                    r0[i10] = new long[zzroVarArr[i10].zzb.zzb];
                    jArr[i10] = zzroVarArr[i10].zzb.zzf[0];
                }
                int i11 = 0;
                char c4 = 0;
                while (i11 < zzroVarArr.length) {
                    char c5 = 65535;
                    int i12 = -1;
                    int i13 = 0;
                    while (i13 < zzroVarArr.length) {
                        char c6 = c5;
                        int i14 = i12;
                        if (!zArr[i13]) {
                            ?? r02 = jArr[i13];
                            c6 = c5;
                            i14 = i12;
                            if (r02 <= c5) {
                                i14 = i13;
                                c6 = r02;
                            }
                        }
                        i13++;
                        c5 = c6;
                        i12 = i14;
                    }
                    int i15 = iArr[i12];
                    long[] jArr2 = r0[i12];
                    jArr2[i15] = c4 == 1 ? 1 : 0;
                    zzrx zzrxVar2 = zzroVarArr[i12].zzb;
                    c4 += zzrxVar2.zzd[i15];
                    int i16 = i15 + 1;
                    iArr[i12] = i16;
                    if (i16 < jArr2.length) {
                        jArr[i12] = zzrxVar2.zzf[i16];
                    } else {
                        zArr[i12] = true;
                        i11++;
                    }
                }
                zzrpVar.zzt = r0;
                zznxVar.zzC();
                zznxVar.zzD(zzrpVar);
                zzrpVar.zzf.clear();
                zzrpVar.zzi = 2;
            } else {
                zzrp zzrpVar2 = zzrpVar;
                zzrpVar = zzrpVar2;
                if (!zzrpVar2.zzf.isEmpty()) {
                    zzrpVar2.zzf.peek().zzb(pop);
                    zzrpVar = zzrpVar2;
                }
            }
        }
        if (zzrpVar.zzi != 2) {
            zzh();
        }
    }

    private static long zzj(zzrx zzrxVar, long j, long j2) {
        int zzk = zzk(zzrxVar, j);
        return zzk == -1 ? j2 : Math.min(zzrxVar.zzc[zzk], j2);
    }

    private static int zzk(zzrx zzrxVar, long j) {
        int zza2 = zzrxVar.zza(j);
        return zza2 == -1 ? zzrxVar.zzb(j) : zza2;
    }

    private static int zzl(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        return zzrt.zzb(zznvVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzr = zznxVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00de, code lost:
        if (r0 < r29) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:245:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010f  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v157, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v337, types: [long] */
    /* JADX WARN: Type inference failed for: r0v351, types: [long] */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(com.google.android.gms.internal.ads.zznv r17, com.google.android.gms.internal.ads.zzoq r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrp.zzc(com.google.android.gms.internal.ads.zznv, com.google.android.gms.internal.ads.zzoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        this.zzf.clear();
        this.zzl = 0;
        this.zzn = -1;
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        if (j == 0) {
            zzh();
            return;
        }
        zzro[] zzroVarArr = this.zzs;
        if (zzroVarArr == null) {
            return;
        }
        for (zzro zzroVar : zzroVarArr) {
            zzrx zzrxVar = zzroVar.zzb;
            int zza2 = zzrxVar.zza(j2);
            int i = zza2;
            if (zza2 == -1) {
                i = zzrxVar.zzb(j2);
            }
            zzroVar.zzd = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        int zzb;
        zzro[] zzroVarArr = this.zzs;
        Objects.requireNonNull(zzroVarArr);
        if (zzroVarArr.length == 0) {
            zzou zzouVar = zzou.zza;
            return new zzor(zzouVar, zzouVar);
        }
        int i = this.zzu;
        if (i != -1) {
            zzrx zzrxVar = zzroVarArr[i].zzb;
            int zzk = zzk(zzrxVar, j);
            if (zzk == -1) {
                zzou zzouVar2 = zzou.zza;
                return new zzor(zzouVar2, zzouVar2);
            }
            c2 = zzrxVar.zzf[zzk];
            ?? r0 = zzrxVar.zzc[zzk];
            if (c2 >= j || zzk >= zzrxVar.zzb - 1 || (zzb = zzrxVar.zzb(j)) == -1 || zzb == zzk) {
                c5 = 1;
                c4 = 65535;
            } else {
                c5 = zzrxVar.zzf[zzb];
                c4 = zzrxVar.zzc[zzb];
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
            zzro[] zzroVarArr2 = this.zzs;
            if (i2 >= zzroVarArr2.length) {
                break;
            }
            char c6 = c4;
            char c7 = c;
            if (i2 != this.zzu) {
                zzrx zzrxVar2 = zzroVarArr2[i2].zzb;
                c7 = zzj(zzrxVar2, c2, c);
                char c8 = c4;
                if (c3 != -9223372036854775807L) {
                    c8 = zzj(zzrxVar2, c3, c4);
                }
                c6 = c8;
            }
            i2++;
            c4 = c6;
            c = c7;
        }
        zzou zzouVar3 = new zzou(c2, c);
        return c3 == -9223372036854775807L ? new zzor(zzouVar3, zzouVar3) : new zzor(zzouVar3, new zzou(c3, c4));
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzv;
    }
}
