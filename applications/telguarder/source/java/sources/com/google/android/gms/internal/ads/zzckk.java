package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckk.class */
public final class zzckk implements zzeqb<zzbya<zzdrp>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckr> zzfxt;
    private final zzeqo<zzcpn> zzfxu;

    private zzckk(zzeqo<zzckr> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcpn> zzeqoVar3) {
        this.zzfxt = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzfxu = zzeqoVar3;
    }

    public static zzckk zzv(zzeqo<zzckr> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcpn> zzeqoVar3) {
        return new zzckk(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzckr zzckrVar = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        return (zzbya) zzeqh.zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue() ? new zzbya(this.zzfxu.get(), executor) : new zzbya(zzckrVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }
}
