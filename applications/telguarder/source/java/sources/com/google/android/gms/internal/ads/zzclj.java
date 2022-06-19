package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclj.class */
public final class zzclj implements zzeqb<Set<zzbya<zzvc>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzclo> zzgjp;
    private final zzcle zzgmn;

    private zzclj(zzcle zzcleVar, zzeqo<zzclo> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzgmn = zzcleVar;
        this.zzgjp = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzclj zze(zzcle zzcleVar, zzeqo<zzclo> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzclj(zzcleVar, zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(zzcle.zzg(this.zzgjp.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
