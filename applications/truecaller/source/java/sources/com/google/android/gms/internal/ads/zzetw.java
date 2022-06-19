package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetw.class */
public final class zzetw implements zzgla<zzetu> {
    private final zzgln<zzbzu> zza;
    private final zzgln<ScheduledExecutorService> zzb;
    private final zzgln<Context> zzc;

    public zzetw(zzgln<zzbzu> zzglnVar, zzgln<ScheduledExecutorService> zzglnVar2, zzgln<Context> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzetu(new zzbzu(), this.zzb.zzb(), ((zzcoo) this.zzc).zza(), null);
    }
}
