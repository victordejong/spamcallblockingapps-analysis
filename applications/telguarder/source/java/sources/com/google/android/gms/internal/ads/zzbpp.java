package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpp.class */
public final class zzbpp implements zzeqb<zza> {
    private final zzeqo<Context> zzewk;
    private final zzbpq zzfxr;
    private final zzeqo<zzawz> zzfxs;

    private zzbpp(zzbpq zzbpqVar, zzeqo<Context> zzeqoVar, zzeqo<zzawz> zzeqoVar2) {
        this.zzfxr = zzbpqVar;
        this.zzewk = zzeqoVar;
        this.zzfxs = zzeqoVar2;
    }

    public static zzbpp zza(zzbpq zzbpqVar, zzeqo<Context> zzeqoVar, zzeqo<zzawz> zzeqoVar2) {
        return new zzbpp(zzbpqVar, zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zza) zzeqh.zza(new zza(this.zzewk.get(), this.zzfxs.get(), null), "Cannot return null from a non-@Nullable @Provides method");
    }
}
