package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgx.class */
public final class zzdgx implements zzeqb<zzdgv> {
    private final zzeqo<Context> zzfxw;

    public zzdgx(zzeqo<Context> zzeqoVar) {
        this.zzfxw = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgv(this.zzfxw.get());
    }
}
