package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdot.class */
public final class zzdot implements zzeqb<Context> {
    private final zzeqo<Context> zzfxw;
    private final zzdor zzhml;

    private zzdot(zzdor zzdorVar, zzeqo<Context> zzeqoVar) {
        this.zzhml = zzdorVar;
        this.zzfxw = zzeqoVar;
    }

    public static Context zza(zzdor zzdorVar, Context context) {
        return (Context) zzeqh.zza(context, "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzdot zza(zzdor zzdorVar, zzeqo<Context> zzeqoVar) {
        return new zzdot(zzdorVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzhml, this.zzfxw.get());
    }
}
