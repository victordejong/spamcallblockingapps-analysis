package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcus.class */
public final class zzcus extends zzcun<zzbyy> {
    private final zzbwg zzezg;
    private final zzcxa zzfmf;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcus(zzbgc zzbgcVar, zzbqx.zza zzaVar, zzcxa zzcxaVar, zzbwg zzbwgVar) {
        this.zzguy = zzbgcVar;
        this.zzguz = zzaVar;
        this.zzfmf = zzcxaVar;
        this.zzezg = zzbwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcun
    protected final zzdzw<zzbyy> zza(zzdnp zzdnpVar, Bundle bundle) {
        return this.zzguy.zzafm().zze(this.zzguz.zza(zzdnpVar).zze(bundle).zzalo()).zze(this.zzezg).zzb(this.zzfmf).zzahx().zzagj().zzalb();
    }
}
