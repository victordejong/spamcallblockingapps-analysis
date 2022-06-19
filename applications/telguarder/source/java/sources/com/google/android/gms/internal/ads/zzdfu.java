package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfu.class */
public final class zzdfu implements zzeqb<zzdfs> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    private zzdfu(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzewk = zzeqoVar2;
    }

    public static zzdfu zzbb(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        return new zzdfu(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdfs(this.zzewf.get(), this.zzewk.get());
    }
}
