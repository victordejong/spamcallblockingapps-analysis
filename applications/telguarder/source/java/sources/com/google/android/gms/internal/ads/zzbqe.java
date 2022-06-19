package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqe.class */
public final class zzbqe implements zzeqb<zzbya<zzbse>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckb> zzfxt;
    private final zzeqo<zzcpf> zzfxu;

    private zzbqe(zzeqo<zzckb> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcpf> zzeqoVar3) {
        this.zzfxt = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzfxu = zzeqoVar3;
    }

    public static zzbqe zzk(zzeqo<zzckb> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcpf> zzeqoVar3) {
        return new zzbqe(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzckb zzckbVar = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        return (zzbya) zzeqh.zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue() ? new zzbya(this.zzfxu.get(), executor) : new zzbya(zzckbVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }
}
