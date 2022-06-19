package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafm.class */
public final class zzafm {
    public zzahd zza;
    public int zzb;
    public boolean zzc;
    public int zzd;
    public boolean zze;
    public int zzf;
    private boolean zzg;

    public zzafm(zzahd zzahdVar) {
        this.zza = zzahdVar;
    }

    public final void zzb(int i) {
        boolean z = true;
        if (1 != ((this.zzg ? 1 : 0) | i)) {
            z = false;
        }
        this.zzg = z;
        this.zzb += i;
    }

    public final void zzc(zzahd zzahdVar) {
        this.zzg |= this.zza != zzahdVar;
        this.zza = zzahdVar;
    }

    public final void zzd(int i) {
        boolean z = true;
        if (!this.zzc || this.zzd == 5) {
            this.zzg = true;
            this.zzc = true;
            this.zzd = i;
            return;
        }
        if (i != 5) {
            z = false;
        }
        zzakt.zza(z);
    }

    public final void zze(int i) {
        this.zzg = true;
        this.zze = true;
        this.zzf = i;
    }
}
