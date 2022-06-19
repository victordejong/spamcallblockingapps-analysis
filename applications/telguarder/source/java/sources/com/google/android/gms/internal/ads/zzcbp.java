package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbp.class */
public final class zzcbp implements zzeqb<zzbkm> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzqt> zzgde;

    public zzcbp(zzeqo<zzqt> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<Context> zzeqoVar3, zzeqo<Clock> zzeqoVar4) {
        this.zzgde = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzewk = zzeqoVar3;
        this.zzfsz = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzqt zzqtVar = this.zzgde.get();
        return (zzbkm) zzeqh.zza(new zzbkm(this.zzewf.get(), new zzbjx(this.zzewk.get(), zzqtVar), this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
