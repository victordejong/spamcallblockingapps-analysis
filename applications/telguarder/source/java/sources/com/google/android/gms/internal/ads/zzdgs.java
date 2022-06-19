package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgs.class */
public final class zzdgs implements zzeqb<zzdgq> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zztj> zzexx;

    public zzdgs(zzeqo<zztj> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<Context> zzeqoVar3) {
        this.zzexx = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzewk = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgq(this.zzexx.get(), this.zzewf.get(), this.zzewk.get());
    }
}
