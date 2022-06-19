package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzia.class */
public final class zzia implements zzqj, zznf {
    public final /* synthetic */ zzie zza;
    private final zzic zzb;
    private zzqi zzc;
    private zzne zzd;

    public zzia(zzie zzieVar, zzic zzicVar) {
        zzqi zzqiVar;
        zzne zzneVar;
        this.zza = zzieVar;
        zzqiVar = zzieVar.zze;
        this.zzc = zzqiVar;
        zzneVar = zzieVar.zzf;
        this.zzd = zzneVar;
        this.zzb = zzicVar;
    }

    private final boolean zzf(int i, zzpz zzpzVar) {
        zzne zzneVar;
        zzqi zzqiVar;
        zzpz zzpzVar2 = null;
        if (zzpzVar != null) {
            zzic zzicVar = this.zzb;
            int i2 = 0;
            while (true) {
                zzpzVar2 = null;
                if (i2 >= zzicVar.zzc.size()) {
                    break;
                } else if (zzicVar.zzc.get(i2).zzd == zzpzVar.zzd) {
                    zzpzVar2 = zzpzVar.zzc(Pair.create(zzicVar.zzb, zzpzVar.zza));
                    break;
                } else {
                    i2++;
                }
            }
            if (zzpzVar2 == null) {
                return false;
            }
        }
        int i3 = i + this.zzb.zzd;
        zzqi zzqiVar2 = this.zzc;
        if (zzqiVar2.zza != i3 || !zzfn.zzP(zzqiVar2.zzb, zzpzVar2)) {
            zzqiVar = this.zza.zze;
            this.zzc = zzqiVar.zza(i3, zzpzVar2, 0L);
        }
        zzne zzneVar2 = this.zzd;
        if (zzneVar2.zza != i3 || !zzfn.zzP(zzneVar2.zzb, zzpzVar2)) {
            zzneVar = this.zza.zzf;
            this.zzd = zzneVar.zza(i3, zzpzVar2);
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
