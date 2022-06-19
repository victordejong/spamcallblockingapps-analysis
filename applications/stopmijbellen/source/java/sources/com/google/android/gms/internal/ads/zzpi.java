package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpi.class */
public final class zzpi implements zzqj, zznf {
    public final /* synthetic */ zzpk zza;
    private final Object zzb;
    private zzqi zzc;
    private zzne zzd;

    public zzpi(zzpk zzpkVar, Object obj) {
        this.zza = zzpkVar;
        this.zzc = zzpkVar.zzd(null);
        this.zzd = zzpkVar.zzb(null);
        this.zzb = obj;
    }

    private final boolean zzf(int i, zzpz zzpzVar) {
        zzpz zzpzVar2;
        if (zzpzVar != null) {
            zzpzVar2 = this.zza.zzu(this.zzb, zzpzVar);
            if (zzpzVar2 == null) {
                return false;
            }
        } else {
            zzpzVar2 = null;
        }
        zzqi zzqiVar = this.zzc;
        if (zzqiVar.zza != i || !zzfn.zzP(zzqiVar.zzb, zzpzVar2)) {
            this.zzc = this.zza.zze(i, zzpzVar2, 0L);
        }
        zzne zzneVar = this.zzd;
        if (zzneVar.zza != i || !zzfn.zzP(zzneVar.zzb, zzpzVar2)) {
            this.zzd = this.zza.zzc(i, zzpzVar2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzbe(int i, zzpz zzpzVar, zzpw zzpwVar) {
        if (zzf(i, zzpzVar)) {
            this.zzc.zzc(zzpwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzbf(int i, zzpz zzpzVar, zzpr zzprVar, zzpw zzpwVar) {
        if (zzf(i, zzpzVar)) {
            this.zzc.zze(zzprVar, zzpwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzbg(int i, zzpz zzpzVar, zzpr zzprVar, zzpw zzpwVar) {
        if (zzf(i, zzpzVar)) {
            this.zzc.zzg(zzprVar, zzpwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzd(int i, zzpz zzpzVar, zzpr zzprVar, zzpw zzpwVar, IOException iOException, boolean z) {
        if (zzf(i, zzpzVar)) {
            this.zzc.zzi(zzprVar, zzpwVar, iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zze(int i, zzpz zzpzVar, zzpr zzprVar, zzpw zzpwVar) {
        if (zzf(i, zzpzVar)) {
            this.zzc.zzk(zzprVar, zzpwVar);
        }
    }
}
