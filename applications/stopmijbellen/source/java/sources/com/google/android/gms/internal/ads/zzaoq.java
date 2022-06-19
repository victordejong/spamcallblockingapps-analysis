package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoq.class */
public abstract class zzaoq implements zzapl, zzapm {
    private final int zza;
    private zzapn zzb;
    private int zzc;
    private int zzd;
    private zzauy zze;
    private long zzf;
    private boolean zzg = true;
    private boolean zzh;

    public zzaoq(int i) {
        this.zza = i;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean zzA() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean zzB() {
        return this.zzh;
    }

    public final boolean zzC() {
        return this.zzg ? this.zzh : this.zze.zze();
    }

    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzapl, com.google.android.gms.internal.ads.zzapm
    public final int zzc() {
        return this.zza;
    }

    public final int zzd(zzaph zzaphVar, zzarb zzarbVar, boolean z) {
        int zzb = this.zze.zzb(zzaphVar, zzarbVar, z);
        if (zzb == -4) {
            if (zzarbVar.zzf()) {
                this.zzg = true;
                return this.zzh ? -4 : -3;
            }
            zzarbVar.zzc += this.zzf;
        } else if (zzb == -5) {
            zzapg zzapgVar = zzaphVar.zza;
            long j = zzapgVar.zzw;
            if (j != Long.MAX_VALUE) {
                zzaphVar.zza = new zzapg(zzapgVar.zza, zzapgVar.zze, zzapgVar.zzf, zzapgVar.zzc, zzapgVar.zzb, zzapgVar.zzg, zzapgVar.zzj, zzapgVar.zzk, zzapgVar.zzl, zzapgVar.zzm, zzapgVar.zzn, zzapgVar.zzp, zzapgVar.zzo, zzapgVar.zzq, zzapgVar.zzr, zzapgVar.zzs, zzapgVar.zzt, zzapgVar.zzu, zzapgVar.zzv, zzapgVar.zzx, zzapgVar.zzy, zzapgVar.zzz, j + this.zzf, zzapgVar.zzh, zzapgVar.zzi, zzapgVar.zzd);
                return -5;
            }
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    public int zze() throws zzaos {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final zzapm zzf() {
        return this;
    }

    public final zzapn zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final zzauy zzh() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public zzawq zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzj() {
        boolean z = true;
        if (this.zzd != 1) {
            z = false;
        }
        zzawm.zze(z);
        this.zzd = 0;
        this.zze = null;
        this.zzh = false;
        zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzk(zzapn zzapnVar, zzapg[] zzapgVarArr, zzauy zzauyVar, long j, boolean z, long j2) throws zzaos {
        zzawm.zze(this.zzd == 0);
        this.zzb = zzapnVar;
        this.zzd = 1;
        zzo(z);
        zzt(zzapgVarArr, zzauyVar, j2);
        zzp(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaou
    public void zzl(int i, Object obj) throws zzaos {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzm() throws IOException {
        this.zze.zzc();
    }

    public void zzn() {
        throw null;
    }

    public void zzo(boolean z) throws zzaos {
    }

    public void zzp(long j, boolean z) throws zzaos {
        throw null;
    }

    public void zzq() throws zzaos {
    }

    public void zzr() throws zzaos {
    }

    public void zzs(zzapg[] zzapgVarArr, long j) throws zzaos {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzt(zzapg[] zzapgVarArr, zzauy zzauyVar, long j) throws zzaos {
        zzawm.zze(!this.zzh);
        this.zze = zzauyVar;
        this.zzg = false;
        this.zzf = j;
        zzs(zzapgVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzu(long j) throws zzaos {
        this.zzh = false;
        this.zzg = false;
        zzp(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzv() {
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzw(int i) {
        this.zzc = i;
    }

    public final void zzx(long j) {
        this.zze.zzd(j - this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzy() throws zzaos {
        boolean z = true;
        if (this.zzd != 1) {
            z = false;
        }
        zzawm.zze(z);
        this.zzd = 2;
        zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzz() throws zzaos {
        zzawm.zze(this.zzd == 2);
        this.zzd = 1;
        zzr();
    }
}
