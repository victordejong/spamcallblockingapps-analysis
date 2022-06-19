package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcli.class */
public final class zzcli implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzclo> zzgjp;
    private final zzcle zzgmn;

    private zzcli(zzcle zzcleVar, zzeqo<zzclo> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzgmn = zzcleVar;
        this.zzgjp = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static Set<zzbya<zzbtb>> zzb(zzcle zzcleVar, zzclo zzcloVar, Executor executor) {
        return (Set) zzeqh.zza(zzcle.zzc(zzcloVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzcli zzd(zzcle zzcleVar, zzeqo<zzclo> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzcli(zzcleVar, zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzgmn, this.zzgjp.get(), this.zzewf.get());
    }
}
