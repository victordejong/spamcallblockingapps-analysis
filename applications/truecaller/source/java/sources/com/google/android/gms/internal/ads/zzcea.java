package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcea.class */
public final class zzcea implements zzgla<zzcdz> {
    private final zzgln<Context> zza;
    private final zzgln<zzg> zzb;
    private final zzgln<zzcfa> zzc;

    public zzcea(zzgln<Context> zzglnVar, zzgln<zzg> zzglnVar2, zzgln<zzcfa> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcdz(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
