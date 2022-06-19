package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpi.class */
public final class zzbpi implements zzeqb<zzbpf> {
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzayn> zzfxo;

    private zzbpi(zzeqo<Clock> zzeqoVar, zzeqo<zzayn> zzeqoVar2) {
        this.zzfsz = zzeqoVar;
        this.zzfxo = zzeqoVar2;
    }

    public static zzbpi zze(zzeqo<Clock> zzeqoVar, zzeqo<zzayn> zzeqoVar2) {
        return new zzbpi(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbpf(this.zzfsz.get(), this.zzfxo.get());
    }
}
