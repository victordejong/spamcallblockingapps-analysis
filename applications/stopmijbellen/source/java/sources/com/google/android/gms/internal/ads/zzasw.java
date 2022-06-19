package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasw.class */
public final class zzasw implements zzarj, zzarq {
    public static final zzarl zza = new zzasu();
    private static final int zzb = zzaxb.zzg("qt  ");
    private int zzg;
    private int zzh;
    private long zzi;
    private int zzj;
    private zzawu zzk;
    private int zzl;
    private int zzm;
    private zzark zzn;
    private zzasv[] zzo;
    private long zzp;
    private boolean zzq;
    private final zzawu zze = new zzawu(16);
    private final Stack<zzase> zzf = new Stack<>();
    private final zzawu zzc = new zzawu(zzaws.zza);
    private final zzawu zzd = new zzawu(4);

    private final void zzh() {
        this.zzg = 0;
        this.zzj = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    private final void zzi(long j) throws zzapj {
        zzatr zzatrVar;
        zzasy zza2;
        while (!this.zzf.isEmpty() && this.zzf.peek().zza == j) {
            zzase pop = this.zzf.pop();
            if (pop.zzaR == zzasg.zzE) {
                ArrayList arrayList = new ArrayList();
                zzarn zzarnVar = new zzarn();
                zzasf zzb2 = pop.zzb(zzasg.zzaC);
                if (zzb2 != null) {
                    zzatr zzc = zzasn.zzc(zzb2, this.zzq);
                    zzatrVar = zzc;
                    if (zzc != null) {
                        zzarnVar.zzb(zzc);
                        zzatrVar = zzc;
                    }
                } else {
                    zzatrVar = null;
                }
                char c = 1;
                char c2 = 65535;
                zzatr zzatrVar2 = zzatrVar;
                for (int i = 0; i < pop.zzc.size(); i++) {
                    zzase zzaseVar = pop.zzc.get(i);
                    if (zzaseVar.zzaR == zzasg.zzG && (zza2 = zzasn.zza(zzaseVar, pop.zzb(zzasg.zzF), -9223372036854775807L, null, this.zzq)) != null) {
                        zzatb zzb3 = zzasn.zzb(zza2, zzaseVar.zza(zzasg.zzH).zza(zzasg.zzI).zza(zzasg.zzJ), zzarnVar);
                        if (zzb3.zza != 0) {
                            zzasv zzasvVar = new zzasv(zza2, zzb3, this.zzn.zzbq(i, zza2.zzb));
                            zzapg zze = zza2.zzf.zze(zzb3.zzd + 30);
                            zzapg zzapgVar = zze;
                            if (zza2.zzb == 1) {
                                zzapg zzapgVar2 = zze;
                                if (zzarnVar.zza()) {
                                    zzapgVar2 = zze.zzd(zzarnVar.zzb, zzarnVar.zzc);
                                }
                                zzapgVar = zzapgVar2;
                                if (zzatrVar2 != null) {
                                    zzapgVar = zzapgVar2.zzf(zzatrVar2);
                                }
                            }
                            zzasvVar.zzc.zza(zzapgVar);
                            c = Math.max((long) c, zza2.zze);
                            arrayList.add(zzasvVar);
                            ?? r0 = zzb3.zzb[0];
                            if (r0 < c2) {
                                c2 = r0;
                            }
                        }
                    }
                }
                this.zzp = c;
                this.zzo = (zzasv[]) arrayList.toArray(new zzasv[arrayList.size()]);
                this.zzn.zzb();
                this.zzn.zzc(this);
                this.zzf.clear();
                this.zzg = 2;
            } else if (!this.zzf.isEmpty()) {
                this.zzf.peek().zzc(pop);
            }
        }
        if (this.zzg != 2) {
            zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final long zza() {
        return this.zzp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzarq
    public final long zzb(long j) {
        zzasv[] zzasvVarArr = this.zzo;
        int length = zzasvVarArr.length;
        char c = 65535;
        int i = 0;
        while (i < length) {
            zzatb zzatbVar = zzasvVarArr[i].zzb;
            int zza2 = zzatbVar.zza(j);
            int i2 = zza2;
            if (zza2 == -1) {
                i2 = zzatbVar.zzb(j);
            }
            ?? r0 = zzatbVar.zzb[i2];
            char c2 = c;
            if (r0 < c) {
                c2 = r0;
            }
            i++;
            c = c2;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final boolean zzc() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zzd(zzark zzarkVar) {
        this.zzn = zzarkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zze(long j, long j2) {
        this.zzf.clear();
        this.zzj = 0;
        this.zzl = 0;
        this.zzm = 0;
        if (j == 0) {
            zzh();
            return;
        }
        zzasv[] zzasvVarArr = this.zzo;
        if (zzasvVarArr == null) {
            return;
        }
        for (zzasv zzasvVar : zzasvVarArr) {
            zzatb zzatbVar = zzasvVar.zzb;
            int zza2 = zzatbVar.zza(j2);
            int i = zza2;
            if (zza2 == -1) {
                i = zzatbVar.zzb(j2);
            }
            zzasvVar.zzd = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzarj
    public final int zzf(zzari zzariVar, zzaro zzaroVar) throws IOException, InterruptedException {
        zzasv[] zzasvVarArr;
        int i;
        int i2;
        char c;
        boolean z;
        boolean z2;
        while (true) {
            int i3 = this.zzg;
            if (i3 == 0) {
                if (this.zzj == 0) {
                    if (!zzariVar.zzh(this.zze.zza, 0, 8, true)) {
                        return -1;
                    }
                    this.zzj = 8;
                    this.zze.zzv(0);
                    this.zzi = this.zze.zzm();
                    this.zzh = this.zze.zze();
                }
                if (this.zzi == 1) {
                    zzariVar.zzh(this.zze.zza, 8, 8, false);
                    this.zzj += 8;
                    this.zzi = this.zze.zzn();
                }
                int i4 = this.zzh;
                if (i4 == zzasg.zzE || i4 == zzasg.zzG || i4 == zzasg.zzH || i4 == zzasg.zzI || i4 == zzasg.zzJ || i4 == zzasg.zzS) {
                    long zzd = (zzariVar.zzd() + this.zzi) - this.zzj;
                    this.zzf.add(new zzase(this.zzh, zzd));
                    if (this.zzi == this.zzj) {
                        zzi(zzd);
                    } else {
                        zzh();
                    }
                } else {
                    if (i4 == zzasg.zzU || i4 == zzasg.zzF || i4 == zzasg.zzV || i4 == zzasg.zzW || i4 == zzasg.zzao || i4 == zzasg.zzap || i4 == zzasg.zzaq || i4 == zzasg.zzT || i4 == zzasg.zzar || i4 == zzasg.zzas || i4 == zzasg.zzat || i4 == zzasg.zzau || i4 == zzasg.zzav || i4 == zzasg.zzR || i4 == zzasg.zzd || i4 == zzasg.zzaC) {
                        zzawm.zze(this.zzj == 8);
                        zzawm.zze(this.zzi <= 2147483647L);
                        zzawu zzawuVar = new zzawu((int) this.zzi);
                        this.zzk = zzawuVar;
                        System.arraycopy(this.zze.zza, 0, zzawuVar.zza, 0, 8);
                    } else {
                        this.zzk = null;
                    }
                    this.zzg = 1;
                }
            } else if (i3 != 1) {
                char c2 = 65535;
                int i5 = 0;
                int i6 = -1;
                while (true) {
                    zzasvVarArr = this.zzo;
                    if (i5 >= zzasvVarArr.length) {
                        break;
                    }
                    zzasv zzasvVar = zzasvVarArr[i5];
                    int i7 = zzasvVar.zzd;
                    zzatb zzatbVar = zzasvVar.zzb;
                    if (i7 == zzatbVar.zza) {
                        c = c2;
                    } else {
                        ?? r0 = zzatbVar.zzb[i7];
                        c = c2;
                        if (r0 < c2) {
                            i6 = i5;
                            c = r0;
                        }
                    }
                    i5++;
                    c2 = c;
                }
                if (i6 == -1) {
                    i = -1;
                } else {
                    zzasv zzasvVar2 = zzasvVarArr[i6];
                    zzars zzarsVar = zzasvVar2.zzc;
                    int i8 = zzasvVar2.zzd;
                    zzatb zzatbVar2 = zzasvVar2.zzb;
                    ?? r02 = zzatbVar2.zzb[i8];
                    int i9 = zzatbVar2.zzc[i8];
                    int i10 = i9;
                    char c3 = r02;
                    if (zzasvVar2.zza.zzg == 1) {
                        c3 = r02 + 8;
                        i10 = i9 - 8;
                    }
                    long zzd2 = (c3 - zzariVar.zzd()) + this.zzl;
                    if (zzd2 < 0 || zzd2 >= 262144) {
                        zzaroVar.zza = c3;
                        i = 1;
                    } else {
                        zzariVar.zzi((int) zzd2, false);
                        int i11 = zzasvVar2.zza.zzk;
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
                                    zzariVar.zzh(this.zzd.zza, i12, i11, false);
                                    this.zzd.zzv(0);
                                    this.zzm = this.zzd.zzi();
                                    this.zzc.zzv(0);
                                    zzarsVar.zzb(this.zzc, 4);
                                    this.zzl += 4;
                                    i10 += i12;
                                } else {
                                    int zzd3 = zzarsVar.zzd(zzariVar, i13, false);
                                    this.zzl += zzd3;
                                    this.zzm -= zzd3;
                                }
                            }
                        } else {
                            while (true) {
                                int i14 = this.zzl;
                                i2 = i10;
                                if (i14 >= i10) {
                                    break;
                                }
                                int zzd4 = zzarsVar.zzd(zzariVar, i10 - i14, false);
                                this.zzl += zzd4;
                                this.zzm -= zzd4;
                            }
                        }
                        zzatb zzatbVar3 = zzasvVar2.zzb;
                        zzarsVar.zzc(zzatbVar3.zze[i8], zzatbVar3.zzf[i8], i2, 0, null);
                        zzasvVar2.zzd++;
                        this.zzl = 0;
                        this.zzm = 0;
                        i = 0;
                    }
                }
                return i;
            } else {
                long j = this.zzi - this.zzj;
                long zzd5 = zzariVar.zzd();
                zzawu zzawuVar2 = this.zzk;
                if (zzawuVar2 != null) {
                    zzariVar.zzh(zzawuVar2.zza, this.zzj, (int) j, false);
                    if (this.zzh == zzasg.zzd) {
                        zzawu zzawuVar3 = this.zzk;
                        zzawuVar3.zzv(8);
                        if (zzawuVar3.zze() == zzb) {
                            z2 = true;
                            break;
                        }
                        zzawuVar3.zzw(4);
                        while (zzawuVar3.zza() > 0) {
                            if (zzawuVar3.zze() == zzb) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                        this.zzq = z2;
                    } else if (!this.zzf.isEmpty()) {
                        this.zzf.peek().zzd(new zzasf(this.zzh, this.zzk));
                    }
                } else if (j < 262144) {
                    zzariVar.zzi((int) j, false);
                } else {
                    zzaroVar.zza = zzariVar.zzd() + j;
                    z = true;
                    zzi(zzd5 + j);
                    if (z && this.zzg != 2) {
                        return 1;
                    }
                }
                z = false;
                zzi(zzd5 + j);
                if (z) {
                    return 1;
                }
                continue;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final boolean zzg(zzari zzariVar) throws IOException, InterruptedException {
        return zzasx.zzb(zzariVar);
    }
}
