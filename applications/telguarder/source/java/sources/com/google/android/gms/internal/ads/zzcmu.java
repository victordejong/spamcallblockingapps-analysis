package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmu.class */
public final class zzcmu implements zzeqb<String> {
    private final zzeqo<Context> zzewk;

    private zzcmu(zzeqo<Context> zzeqoVar) {
        this.zzewk = zzeqoVar;
    }

    public static zzcmu zzad(zzeqo<Context> zzeqoVar) {
        return new zzcmu(zzeqoVar);
    }

    public static String zzch(Context context) {
        return (String) zzeqh.zza(context.getPackageName(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzch(this.zzewk.get());
    }
}
