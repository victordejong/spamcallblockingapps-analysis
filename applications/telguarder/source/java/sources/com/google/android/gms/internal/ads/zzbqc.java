package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqc.class */
public final class zzbqc implements zzeqb<zzbya<zzbvq>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckb> zzfxt;
    private final zzeqo<zzcpf> zzfxu;

    private zzbqc(zzeqo<zzckb> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcpf> zzeqoVar3) {
        this.zzfxt = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzfxu = zzeqoVar3;
    }

    public static zzbqc zzj(zzeqo<zzckb> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcpf> zzeqoVar3) {
        return new zzbqc(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzckb zzckbVar = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        return (zzbya) zzeqh.zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue() ? new zzbya(this.zzfxu.get(), executor) : new zzbya(zzckbVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }
}
