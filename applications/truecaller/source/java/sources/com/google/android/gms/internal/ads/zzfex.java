package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfex.class */
public final class zzfex implements zzgla<zzbug> {
    private final zzfew zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcgz> zzc;

    public zzfex(zzfew zzfewVar, zzgln<Context> zzglnVar, zzgln<zzcgz> zzglnVar2) {
        this.zza = zzfewVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbug zzb = new zzbtx().zzb(((zzcoo) this.zzb).zza(), ((zzcox) this.zzc).zza());
        zzgli.zzb(zzb);
        return zzb;
    }
}
