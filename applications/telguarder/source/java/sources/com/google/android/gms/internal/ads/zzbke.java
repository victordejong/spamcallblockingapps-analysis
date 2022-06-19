package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbke.class */
public final class zzbke implements zzeqb<zzbjz> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzamo> zzfsw;
    private final zzeqo<zzbjx> zzfsx;
    private final zzeqo<zzbju> zzfsy;
    private final zzeqo<Clock> zzfsz;

    private zzbke(zzeqo<zzamo> zzeqoVar, zzeqo<zzbjx> zzeqoVar2, zzeqo<Executor> zzeqoVar3, zzeqo<zzbju> zzeqoVar4, zzeqo<Clock> zzeqoVar5) {
        this.zzfsw = zzeqoVar;
        this.zzfsx = zzeqoVar2;
        this.zzewf = zzeqoVar3;
        this.zzfsy = zzeqoVar4;
        this.zzfsz = zzeqoVar5;
    }

    public static zzbke zza(zzeqo<zzamo> zzeqoVar, zzeqo<zzbjx> zzeqoVar2, zzeqo<Executor> zzeqoVar3, zzeqo<zzbju> zzeqoVar4, zzeqo<Clock> zzeqoVar5) {
        return new zzbke(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbjz(this.zzfsw.get(), this.zzfsx.get(), this.zzewf.get(), this.zzfsy.get(), this.zzfsz.get());
    }
}
