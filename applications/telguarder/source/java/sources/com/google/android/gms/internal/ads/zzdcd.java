package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcd.class */
public final class zzdcd implements zzeqb<zzdcb> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    public zzdcd(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzewk = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdcb(this.zzewf.get(), this.zzewk.get());
    }
}
