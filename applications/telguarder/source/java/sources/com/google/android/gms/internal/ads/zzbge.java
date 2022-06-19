package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbge.class */
public final class zzbge implements zzeqb<Context> {
    private final zzbgb zzewc;

    public zzbge(zzbgb zzbgbVar) {
        this.zzewc = zzbgbVar;
    }

    public static Context zza(zzbgb zzbgbVar) {
        return (Context) zzeqh.zza(zzbgbVar.zzaeu(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewc);
    }
}
