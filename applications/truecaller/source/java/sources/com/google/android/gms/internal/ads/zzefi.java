package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefi.class */
public final class zzefi implements zzgla<zzefh> {
    private final zzgln<Context> zza;
    private final zzgln<zzcwe> zzb;
    private final zzgln<Executor> zzc;

    public zzefi(zzgln<Context> zzglnVar, zzgln<zzcwe> zzglnVar2, zzgln<Executor> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzefh(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
