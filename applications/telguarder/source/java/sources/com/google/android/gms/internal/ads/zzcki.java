package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcki.class */
public final class zzcki implements zzeqb<zzbya<zzbrr>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckd> zzfxt;
    private final zzeqo<zzcph> zzfxu;

    private zzcki(zzeqo<zzckd> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcph> zzeqoVar3) {
        this.zzfxt = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzfxu = zzeqoVar3;
    }

    public static zzcki zzu(zzeqo<zzckd> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzcph> zzeqoVar3) {
        return new zzcki(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzckd zzckdVar = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        return (zzbya) zzeqh.zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue() ? new zzbya(this.zzfxu.get(), executor) : new zzbya(zzckdVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }
}
