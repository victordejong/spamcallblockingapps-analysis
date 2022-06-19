package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczd.class */
public final class zzczd implements zzgla<zzb> {
    private final zzczc zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcdy> zzc;

    public zzczd(zzczc zzczcVar, zzgln<Context> zzglnVar, zzgln<zzcdy> zzglnVar2) {
        this.zza = zzczcVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzb(this.zzb.zzb(), this.zzc.zzb(), null);
    }
}
