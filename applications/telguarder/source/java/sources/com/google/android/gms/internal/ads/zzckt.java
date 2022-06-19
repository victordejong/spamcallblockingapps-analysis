package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckt.class */
public final class zzckt implements zzeqb<zzckr> {
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzckl> zzgly;
    private final zzeqo<Set<zzcku>> zzglz;

    private zzckt(zzeqo<zzckl> zzeqoVar, zzeqo<Set<zzcku>> zzeqoVar2, zzeqo<Clock> zzeqoVar3) {
        this.zzgly = zzeqoVar;
        this.zzglz = zzeqoVar2;
        this.zzfsz = zzeqoVar3;
    }

    public static zzckt zzw(zzeqo<zzckl> zzeqoVar, zzeqo<Set<zzcku>> zzeqoVar2, zzeqo<Clock> zzeqoVar3) {
        return new zzckt(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckr(this.zzgly.get(), this.zzglz.get(), this.zzfsz.get());
    }
}
