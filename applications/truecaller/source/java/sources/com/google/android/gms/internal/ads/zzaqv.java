package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqv.class */
public final class zzaqv {
    public final zzare zza = new zzare();
    public final zzapx zzb;
    public zzarc zzc;
    public zzaqs zzd;
    public int zze;
    public int zzf;
    public int zzg;
    public zzapw zzh;
    public zzard zzi;

    public zzaqv(zzapx zzapxVar) {
        this.zzb = zzapxVar;
    }

    public final void zza(zzarc zzarcVar, zzaqs zzaqsVar) {
        Objects.requireNonNull(zzarcVar);
        this.zzc = zzarcVar;
        Objects.requireNonNull(zzaqsVar);
        this.zzd = zzaqsVar;
        this.zzb.zza(zzarcVar.zzf);
        zzb();
    }

    public final void zzb() {
        zzare zzareVar = this.zza;
        zzareVar.zzd = 0;
        zzareVar.zzr = 0L;
        zzareVar.zzl = false;
        zzareVar.zzq = false;
        zzareVar.zzn = null;
        this.zze = 0;
        this.zzg = 0;
        this.zzf = 0;
        this.zzh = null;
        this.zzi = null;
    }
}
