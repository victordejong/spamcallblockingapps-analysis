package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzr.class */
public final class zzbzr implements zzeqb<View> {
    private final zzbyz zzgbk;

    private zzbzr(zzbyz zzbyzVar) {
        this.zzgbk = zzbyzVar;
    }

    public static zzbzr zzc(zzbyz zzbyzVar) {
        return new zzbzr(zzbyzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzgbk.zzamu();
    }
}
