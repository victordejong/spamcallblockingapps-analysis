package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcul.class */
public final class zzcul extends zzcun<zzbnz> {
    private final zzcaq zzezb;
    private final zzbwg zzezg;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcul(zzbgc zzbgcVar, zzcaq zzcaqVar, zzbqx.zza zzaVar, zzbwg zzbwgVar) {
        this.zzguy = zzbgcVar;
        this.zzezb = zzcaqVar;
        this.zzguz = zzaVar;
        this.zzezg = zzbwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcun
    protected final zzdzw<zzbnz> zza(zzdnp zzdnpVar, Bundle bundle) {
        return this.zzguy.zzafo().zza(this.zzguz.zza(zzdnpVar).zze(bundle).zzalo()).zza(this.zzezg).zza(this.zzezb).zza(new zzblu(null)).zzagl().zzagj().zzalb();
    }
}
