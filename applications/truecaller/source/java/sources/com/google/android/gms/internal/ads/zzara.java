package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzara.class */
public final class zzara implements zzapo, zzapv {
    public static final zzapq zza = new zzaqy();
    private static final int zzb = zzave.zzl("qt  ");
    private int zzg;
    private int zzh;
    private long zzi;
    private int zzj;
    private zzaux zzk;
    private int zzl;
    private int zzm;
    private zzapp zzn;
    private zzaqz[] zzo;
    private long zzp;
    private boolean zzq;
    private final zzaux zze = new zzaux(16);
    private final Stack<zzaqi> zzf = new Stack<>();
    private final zzaux zzc = new zzaux(zzauv.zza);
    private final zzaux zzd = new zzaux(4);

    private final void zzh() {
        this.zzg = 0;
        this.zzj = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    private final void zzi(long j) throws zzanp {
        zzaru zzaruVar;
        zzarc zza2;
        while (!this.zzf.isEmpty() && this.zzf.peek().zza == j) {
            zzaqi pop = this.zzf.pop();
            if (pop.zzaR == zzaqk.zzE) {
                ArrayList arrayList = new ArrayList();
                zzaps zzapsVar = new zzaps();
                zzaqj zzc = pop.zzc(zzaqk.zzaC);
                if (zzc != null) {
                    zzaru zzc2 = zzaqr.zzc(zzc, this.zzq);
                    zzaruVar = zzc2;
                    if (zzc2 != null) {
                        zzapsVar.zza(zzc2);
                        zzaruVar = zzc2;
                    }
                } else {
                    zzaruVar = null;
                }
                char c = 1;
                char c2 = 65535;
                zzaru zzaruVar2 = zzaruVar;
                for (int i = 0; i < pop.zzc.size(); i++) {
                    zzaqi zzaqiVar = pop.zzc.get(i);
                    if (zzaqiVar.zzaR == zzaqk.zzG && (zza2 = zzaqr.zza(zzaqiVar, pop.zzc(zzaqk.zzF), -9223372036854775807L, null, this.zzq)) != null) {
                        zzarf zzb2 = zzaqr.zzb(zza2, zzaqiVar.zzd(zzaqk.zzH).zzd(zzaqk.zzI).zzd(zzaqk.zzJ), zzapsVar);
                        if (zzb2.zza != 0) {
                            zzaqz zzaqzVar = new zzaqz(zza2, zzb2, this.zzn.zzbf(i, zza2.zzb));
                            zzanm zzg = zza2.zzf.zzg(zzb2.zzd + 30);
                            zzanm zzanmVar = zzg;
                            if (zza2.zzb == 1) {
                                zzanm zzanmVar2 = zzg;
                                if (zzapsVar.zzb()) {
                                    zzanmVar2 = zzg.zzh(zzapsVar.zzb, zzapsVar.zzc);
                                }
                                zzanmVar = zzanmVar2;
                                if (zzaruVar2 != null) {
                                    zzanmVar = zzanmVar2.zzj(zzaruVar2);
                                }
                            }
                            zzaqzVar.zzc.zza(zzanmVar);
                            c = Math.max((long) c, zza2.zze);
                            arrayList.add(zzaqzVar);
                            ?? r0 = zzb2.zzb[0];
                            if (r0 < c2) {
                                c2 = r0;
                            }
                        }
                    }
                }
                this.zzp = c;
                this.zzo = (zzaqz[]) arrayList.toArray(new zzaqz[arrayList.size()]);
                this.zzn.zzbg();
                this.zzn.zzc(this);
                this.zzf.clear();
                this.zzg = 2;
            } else if (!this.zzf.isEmpty()) {
                this.zzf.peek().zzb(pop);
            }
        }
        if (this.zzg != 2) {
            zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final long zzb() {
        return this.zzp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzapv
    public final long zzc(long j) {
        zzaqz[] zzaqzVarArr = this.zzo;
        int length = zzaqzVarArr.length;
        char c = 65535;
        int i = 0;
        while (i < length) {
            zzarf zzarfVar = zzaqzVarArr[i].zzb;
            int zza2 = zzarfVar.zza(j);
            int i2 = zza2;
            if (zza2 == -1) {
                i2 = zzarfVar.zzb(j);
            }
            ?? r0 = zzarfVar.zzb[i2];
            char c2 = c;
            if (r0 < c) {
                c2 = r0;
            }
            i++;
            c = c2;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void zzd(zzapp zzappVar) {
        this.zzn = zzappVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void zze(long j, long j2) {
        this.zzf.clear();
        this.zzj = 0;
        this.zzl = 0;
        this.zzm = 0;
        if (j == 0) {
            zzh();
            return;
        }
        zzaqz[] zzaqzVarArr = this.zzo;
        if (zzaqzVarArr == null) {
            return;
        }
        for (zzaqz zzaqzVar : zzaqzVarArr) {
            zzarf zzarfVar = zzaqzVar.zzb;
            int zza2 = zzarfVar.zza(j2);
            int i = zza2;
            if (zza2 == -1) {
                i = zzarfVar.zzb(j2);
            }
            zzaqzVar.zzd = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final boolean zzf(zzapn zzapnVar) throws IOException, InterruptedException {
        return zzarb.zzb(zzapnVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzapo
    public final int zzg(zzapn zzapnVar, zzapt zzaptVar) throws IOException, InterruptedException {
        zzaqz[] zzaqzVarArr;
        int i;
        int i2;
        char c;
        boolean z;
        boolean z2;
        while (true) {
            int i3 = this.zzg;
            if (i3 == 0) {
                if (this.zzj == 0) {
                    if (!zzapnVar.zzb(this.zze.zza, 0, 8, true)) {
                        return -1;
                    }
                    this.zzj = 8;
                    this.zze.zzi(0);
                    this.zzi = this.zze.zzp();
                    this.zzh = this.zze.zzr();
                }
                if (this.zzi == 1) {
                    zzapnVar.zzb(this.zze.zza, 8, 8, false);
                    this.zzj += 8;
                    this.zzi = this.zze.zzv();
                }
                int i4 = this.zzh;
                if (i4 == zzaqk.zzE || i4 == zzaqk.zzG || i4 == zzaqk.zzH || i4 == zzaqk.zzI || i4 == zzaqk.zzJ || i4 == zzaqk.zzS) {
                    long zzh = (zzapnVar.zzh() + this.zzi) - this.zzj;
                    this.zzf.add(new zzaqi(this.zzh, zzh));
                    if (this.zzi == this.zzj) {
                        zzi(zzh);
                    } else {
                        zzh();
                    }
                } else {
                    if (i4 == zzaqk.zzU || i4 == zzaqk.zzF || i4 == zzaqk.zzV || i4 == zzaqk.zzW || i4 == zzaqk.zzao || i4 == zzaqk.zzap || i4 == zzaqk.zzaq || i4 == zzaqk.zzT || i4 == zzaqk.zzar || i4 == zzaqk.zzas || i4 == zzaqk.zzat || i4 == zzaqk.zzau || i4 == zzaqk.zzav || i4 == zzaqk.zzR || i4 == zzaqk.zzd || i4 == zzaqk.zzaC) {
                        zzaup.zzd(this.zzj == 8);
                        zzaup.zzd(this.zzi <= 2147483647L);
                        zzaux zzauxVar = new zzaux((int) this.zzi);
                        this.zzk = zzauxVar;
                        System.arraycopy(this.zze.zza, 0, zzauxVar.zza, 0, 8);
                    } else {
                        this.zzk = null;
                    }
                    this.zzg = 1;
                }
            } else if (i3 != 1) {
                char c2 = 65535;
                int i5 = -1;
                int i6 = 0;
                while (true) {
                    zzaqzVarArr = this.zzo;
                    if (i6 >= zzaqzVarArr.length) {
                        break;
                    }
                    zzaqz zzaqzVar = zzaqzVarArr[i6];
                    int i7 = zzaqzVar.zzd;
                    zzarf zzarfVar = zzaqzVar.zzb;
                    if (i7 == zzarfVar.zza) {
                        c = c2;
                    } else {
                        ?? r0 = zzarfVar.zzb[i7];
                        c = c2;
                        if (r0 < c2) {
                            i5 = i6;
                            c = r0;
                        }
                    }
                    i6++;
                    c2 = c;
                }
                if (i5 == -1) {
                    i = -1;
                } else {
                    zzaqz zzaqzVar2 = zzaqzVarArr[i5];
                    zzapx zzapxVar = zzaqzVar2.zzc;
                    int i8 = zzaqzVar2.zzd;
                    zzarf zzarfVar2 = zzaqzVar2.zzb;
                    ?? r02 = zzarfVar2.zzb[i8];
                    int i9 = zzarfVar2.zzc[i8];
                    int i10 = i9;
                    char c3 = r02;
                    if (zzaqzVar2.zza.zzg == 1) {
                        c3 = r02 + 8;
                        i10 = i9 - 8;
                    }
                    long zzh2 = (c3 - zzapnVar.zzh()) + this.zzl;
                    if (zzh2 < 0 || zzh2 >= 262144) {
                        zzaptVar.zza = c3;
                        i = 1;
                    } else {
                        zzapnVar.zzd((int) zzh2, false);
                        int i11 = zzaqzVar2.zza.zzk;
                        if (i11 != 0) {
                            byte[] bArr = this.zzd.zza;
                            bArr[0] = (byte) 0;
                            bArr[1] = (byte) 0;
                            bArr[2] = (byte) 0;
                            int i12 = 4 - i11;
                            while (true) {
                                i2 = i10;
                                if (this.zzl >= i10) {
                                    break;
                                }
                                int i13 = this.zzm;
                                if (i13 == 0) {
                                    zzapnVar.zzb(this.zzd.zza, i12, i11, false);
                                    this.zzd.zzi(0);
                                    this.zzm = this.zzd.zzu();
                                    this.zzc.zzi(0);
                                    zzapxVar.zzb(this.zzc, 4);
                                    this.zzl += 4;
                                    i10 += i12;
                                } else {
                                    int zzd = zzapxVar.zzd(zzapnVar, i13, false);
                                    this.zzl += zzd;
                                    this.zzm -= zzd;
                                }
                            }
                        } else {
                            while (true) {
                                int i14 = this.zzl;
                                i2 = i10;
                                if (i14 >= i10) {
                                    break;
                                }
                                int zzd2 = zzapxVar.zzd(zzapnVar, i10 - i14, false);
                                this.zzl += zzd2;
                                this.zzm -= zzd2;
                            }
                        }
                        zzarf zzarfVar3 = zzaqzVar2.zzb;
                        zzapxVar.zzc(zzarfVar3.zze[i8], zzarfVar3.zzf[i8], i2, 0, null);
                        zzaqzVar2.zzd++;
                        this.zzl = 0;
                        this.zzm = 0;
                        i = 0;
                    }
                }
                return i;
            } else {
                long j = this.zzi - this.zzj;
                long zzh3 = zzapnVar.zzh();
                zzaux zzauxVar2 = this.zzk;
                if (zzauxVar2 != null) {
                    zzapnVar.zzb(zzauxVar2.zza, this.zzj, (int) j, false);
                    if (this.zzh == zzaqk.zzd) {
                        zzaux zzauxVar3 = this.zzk;
                        zzauxVar3.zzi(8);
                        if (zzauxVar3.zzr() == zzb) {
                            z2 = true;
                            break;
                        }
                        zzauxVar3.zzj(4);
                        while (zzauxVar3.zzd() > 0) {
                            if (zzauxVar3.zzr() == zzb) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                        this.zzq = z2;
                    } else if (!this.zzf.isEmpty()) {
                        this.zzf.peek().zza(new zzaqj(this.zzh, this.zzk));
                    }
                } else if (j < 262144) {
                    zzapnVar.zzd((int) j, false);
                } else {
                    zzaptVar.zza = zzapnVar.zzh() + j;
                    z = true;
                    zzi(zzh3 + j);
                    if (z && this.zzg != 2) {
                        return 1;
                    }
                }
                z = false;
                zzi(zzh3 + j);
                if (z) {
                    return 1;
                }
                continue;
            }
        }
    }
}
