package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbip.class */
public final class zzbip implements zzeqb<zzdtm> {
    private final zzeqo<Context> zzewk;

    public zzbip(zzeqo<Context> zzeqoVar) {
        this.zzewk = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdtm) zzeqh.zza(new zzdtm(this.zzewk.get(), zzr.zzlf().zzzp()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
