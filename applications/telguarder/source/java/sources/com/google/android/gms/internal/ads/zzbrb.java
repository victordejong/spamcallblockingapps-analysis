package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrb.class */
public final class zzbrb implements zzeqb<Context> {
    private final zzeqo<Context> zzfxw;
    private final zzbqx zzfyz;

    private zzbrb(zzbqx zzbqxVar, zzeqo<Context> zzeqoVar) {
        this.zzfyz = zzbqxVar;
        this.zzfxw = zzeqoVar;
    }

    public static zzbrb zza(zzbqx zzbqxVar, zzeqo<Context> zzeqoVar) {
        return new zzbrb(zzbqxVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Context) zzeqh.zza(this.zzfyz.zzce(this.zzfxw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
