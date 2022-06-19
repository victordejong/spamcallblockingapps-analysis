package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzerb.class */
public final class zzerb implements zzevn<zzevm<Bundle>> {
    private final Executor zza;
    private final zzcik zzb;

    public zzerb(Executor executor, zzcik zzcikVar) {
        this.zza = executor;
        this.zzb = zzcikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<Bundle>> zzb() {
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzbT)).booleanValue() ? zzfwq.zzi(null) : zzfwq.zzm(this.zzb.zzj(), zzera.zza, this.zza);
    }
}
