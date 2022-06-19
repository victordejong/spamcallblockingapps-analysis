package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnp.class */
public final class zzcnp implements zzeqb<zzcnn> {
    private final zzeqo<Context> zzewk;

    public zzcnp(zzeqo<Context> zzeqoVar) {
        this.zzewk = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcnn(this.zzewk.get());
    }
}
