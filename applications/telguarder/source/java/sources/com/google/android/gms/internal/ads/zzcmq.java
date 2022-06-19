package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmq.class */
public final class zzcmq implements zzeqb<ApplicationInfo> {
    private final zzeqo<Context> zzewk;

    private zzcmq(zzeqo<Context> zzeqoVar) {
        this.zzewk = zzeqoVar;
    }

    public static zzcmq zzab(zzeqo<Context> zzeqoVar) {
        return new zzcmq(zzeqoVar);
    }

    public static ApplicationInfo zzcg(Context context) {
        return (ApplicationInfo) zzeqh.zza(context.getApplicationInfo(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzcg(this.zzewk.get());
    }
}
