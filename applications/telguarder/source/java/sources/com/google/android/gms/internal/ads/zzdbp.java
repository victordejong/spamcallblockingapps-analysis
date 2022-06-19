package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbp.class */
public final class zzdbp implements zzdfi<zzdfj<Bundle>> {
    private final Executor executor;
    private final zzayo zzbqd;

    public zzdbp(Executor executor, zzayo zzayoVar) {
        this.executor = executor;
        this.zzbqd = zzayoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcse)).booleanValue() ? zzdzk.zzag(null) : zzdzk.zzb(this.zzbqd.zzxt(), zzdbo.zzeaj, this.executor);
    }
}
