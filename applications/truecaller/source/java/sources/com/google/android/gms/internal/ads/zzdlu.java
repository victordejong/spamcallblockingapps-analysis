package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlu.class */
public final class zzdlu implements zzgla<zzdij> {
    private final zzgln<Context> zza;
    private final zzgln<zzezz> zzb;

    public zzdlu(zzgln<Context> zzglnVar, zzgln<zzezz> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdij(this.zza.zzb(), new HashSet(), ((zzcxw) this.zzb).zza());
    }
}
