package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzef;
import com.google.android.gms.internal.ads.zzei;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzq.class */
public final class zzq implements Callable<zzei> {
    private final /* synthetic */ zzl zzbpv;

    public zzq(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzei call() {
        return new zzei(zzef.zzb(zzl.zzc(this.zzbpv).zzbrp, zzl.zzd(this.zzbpv), false));
    }
}
