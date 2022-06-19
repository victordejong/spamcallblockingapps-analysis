package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuu.class */
public final class zzcuu extends zzcun<zzchb> {
    private final zzbwg zzezg;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcuu(zzbgc zzbgcVar, zzbqx.zza zzaVar, zzbwg zzbwgVar) {
        this.zzguy = zzbgcVar;
        this.zzguz = zzaVar;
        this.zzezg = zzbwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcun
    protected final zzdzw<zzchb> zza(zzdnp zzdnpVar, Bundle bundle) {
        return this.zzguy.zzafp().zzf(this.zzguz.zza(zzdnpVar).zze(bundle).zzalo()).zzf(this.zzezg).zzaid().zzagj().zzalb();
    }
}
