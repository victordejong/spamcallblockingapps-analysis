package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjh.class */
public final class zzcjh implements zzeqb<Set<zzbya<zzdrp>>> {
    private final zzeqo<zzcjx> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcjh(zzeqo<Executor> zzeqoVar, zzeqo<zzcjx> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzewe = zzeqoVar2;
    }

    public static zzcjh zzac(zzeqo<Executor> zzeqoVar, zzeqo<zzcjx> zzeqoVar2) {
        return new zzcjh(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Executor executor = this.zzewf.get();
        return (Set) zzeqh.zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue() ? Collections.singleton(new zzbya(this.zzewe.get(), executor)) : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
