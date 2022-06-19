package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzd.class */
public final class zzbzd implements zzeqb<View> {
    private final zzbyz zzgbk;

    private zzbzd(zzbyz zzbyzVar) {
        this.zzgbk = zzbyzVar;
    }

    public static zzbzd zza(zzbyz zzbyzVar) {
        return new zzbzd(zzbyzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzgbk.zzamv();
    }
}
