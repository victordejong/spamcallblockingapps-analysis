package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclf.class */
public final class zzclf implements zzeqb<Set<zzbya<zzbsh>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzclo> zzgjp;
    private final zzcle zzgmn;

    private zzclf(zzcle zzcleVar, zzeqo<zzclo> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzgmn = zzcleVar;
        this.zzgjp = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzclf zzb(zzcle zzcleVar, zzeqo<zzclo> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzclf(zzcleVar, zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(zzcle.zza(this.zzgjp.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
