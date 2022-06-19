package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeiu.class */
public final class zzeiu implements zzgla<zzeit> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzdsb> zzc;

    public zzeiu(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzdsb> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeit(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
