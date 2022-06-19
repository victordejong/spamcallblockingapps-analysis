package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagv.class */
public final class zzagv implements zzhp, zzfb {
    public final /* synthetic */ zzagz zza;
    private final zzagx zzb;
    private zzho zzc;
    private zzfa zzd;

    public zzagv(zzagz zzagzVar, zzagx zzagxVar) {
        zzho zzhoVar;
        zzfa zzfaVar;
        this.zza = zzagzVar;
        zzhoVar = zzagzVar.zze;
        this.zzc = zzhoVar;
        zzfaVar = zzagzVar.zzf;
        this.zzd = zzfaVar;
        this.zzb = zzagxVar;
    }

    private final boolean zza(int i, zzhf zzhfVar) {
        zzfa zzfaVar;
        zzho zzhoVar;
        zzhf zzhfVar2 = null;
        if (zzhfVar != null) {
            zzagx zzagxVar = this.zzb;
            int i2 = 0;
            while (true) {
                zzhfVar2 = null;
                if (i2 >= zzagxVar.zzc.size()) {
                    break;
                } else if (zzagxVar.zzc.get(i2).zzd == zzhfVar.zzd) {
                    zzhfVar2 = zzhfVar.zzc(Pair.create(zzagxVar.zzb, zzhfVar.zza));
                    break;
                } else {
                    i2++;
                }
            }
            if (zzhfVar2 == null) {
                return false;
            }
        }
        int i3 = i + this.zzb.zzd;
        zzho zzhoVar2 = this.zzc;
        if (zzhoVar2.zza != i3 || !zzamq.zzc(zzhoVar2.zzb, zzhfVar2)) {
            zzhoVar = this.zza.zze;
            this.zzc = zzhoVar.zza(i3, zzhfVar2, 0L);
        }
        zzfa zzfaVar2 = this.zzd;
        if (zzfaVar2.zza != i3 || !zzamq.zzc(zzfaVar2.zzb, zzhfVar2)) {
            zzfaVar = this.zza.zzf;
            this.zzd = zzfaVar.zza(i3, zzhfVar2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zzC(int i, zzhf zzhfVar, zzgx zzgxVar, zzhc zzhcVar) {
        if (zza(i, zzhfVar)) {
            this.zzc.zze(zzgxVar, zzhcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zzD(int i, zzhf zzhfVar, zzgx zzgxVar, zzhc zzhcVar) {
        if (zza(i, zzhfVar)) {
            this.zzc.zzg(zzgxVar, zzhcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zzE(int i, zzhf zzhfVar, zzgx zzgxVar, zzhc zzhcVar) {
        if (zza(i, zzhfVar)) {
            this.zzc.zzi(zzgxVar, zzhcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zzF(int i, zzhf zzhfVar, zzgx zzgxVar, zzhc zzhcVar, IOException iOException, boolean z) {
        if (zza(i, zzhfVar)) {
            this.zzc.zzk(zzgxVar, zzhcVar, iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zzG(int i, zzhf zzhfVar, zzhc zzhcVar) {
        if (zza(i, zzhfVar)) {
            this.zzc.zzm(zzhcVar);
        }
    }
}
