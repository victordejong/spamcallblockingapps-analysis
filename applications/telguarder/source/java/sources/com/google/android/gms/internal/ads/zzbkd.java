package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkd.class */
public final class zzbkd implements zzeqb<zzbju> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzqt> zzfsu;
    private final zzeqo<zzamo> zzfsv;

    private zzbkd(zzeqo<zzqt> zzeqoVar, zzeqo<zzamo> zzeqoVar2, zzeqo<Executor> zzeqoVar3) {
        this.zzfsu = zzeqoVar;
        this.zzfsv = zzeqoVar2;
        this.zzewf = zzeqoVar3;
    }

    public static zzbkd zza(zzeqo<zzqt> zzeqoVar, zzeqo<zzamo> zzeqoVar2, zzeqo<Executor> zzeqoVar3) {
        return new zzbkd(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbju) zzeqh.zza(new zzbju(this.zzfsu.get().getUniqueId(), this.zzfsv.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
