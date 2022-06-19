package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhn.class */
public final class zzhn {
    public zzif zza;
    public int zzb;
    public boolean zzc;
    public int zzd;
    public boolean zze;
    public int zzf;
    private boolean zzg;

    public zzhn(zzif zzifVar) {
        this.zza = zzifVar;
    }

    public final void zza(int i) {
        boolean z = true;
        if (1 != ((this.zzg ? 1 : 0) | i)) {
            z = false;
        }
        this.zzg = z;
        this.zzb += i;
    }

    public final void zzb(int i) {
        this.zzg = true;
        this.zze = true;
        this.zzf = i;
    }

    public final void zzc(zzif zzifVar) {
        this.zzg |= this.zza != zzifVar;
        this.zza = zzifVar;
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
        zzdy.zzd(z);
    }
}
