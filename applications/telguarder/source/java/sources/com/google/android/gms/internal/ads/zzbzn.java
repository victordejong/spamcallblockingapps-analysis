package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzn.class */
public final class zzbzn implements zzeqb<zzbya<zzbrm>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcam> zzftr;
    private final zzbyz zzgbk;

    private zzbzn(zzbyz zzbyzVar, zzeqo<zzcam> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzgbk = zzbyzVar;
        this.zzftr = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzbzn zzb(zzbyz zzbyzVar, zzeqo<zzcam> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzbzn(zzbyzVar, zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
