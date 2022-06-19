package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzij.class */
public final class zzij implements zzhq {
    private final zzai zza;
    private final zzhw zzb;
    private final zzex zze = new zzex();
    private final zzku zzd = new zzku(-1);
    private int zzc = 1048576;

    public zzij(zzai zzaiVar, zzoa zzoaVar) {
        zzhw zzhwVar = new zzhw(zzoaVar) { // from class: com.google.android.gms.internal.ads.zzii
            private final zzoa zza;

            {
                this.zza = zzoaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzhw
            public final zzhx zza() {
                return new zzgk(this.zza);
            }
        };
        this.zza = zzaiVar;
        this.zzb = zzhwVar;
    }

    public final zzij zza(int i) {
        this.zzc = i;
        return this;
    }

    public final zzil zzb(zzagk zzagkVar) {
        Objects.requireNonNull(zzagkVar.zzc);
        return new zzil(zzagkVar, this.zza, this.zzb, zzff.zza, this.zzd, this.zzc, null, null);
    }
}
