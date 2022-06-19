package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzs.class */
public final class zzbzs implements zzeqb<zzbya<zzbvn>> {
    private final zzeqo<Executor> zzewf;
    private final zzbyz zzgbk;

    private zzbzs(zzbyz zzbyzVar, zzeqo<Executor> zzeqoVar) {
        this.zzgbk = zzbyzVar;
        this.zzewf = zzeqoVar;
    }

    public static zzbzs zzf(zzbyz zzbyzVar, zzeqo<Executor> zzeqoVar) {
        return new zzbzs(zzbyzVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(this.zzgbk.zzb(this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
