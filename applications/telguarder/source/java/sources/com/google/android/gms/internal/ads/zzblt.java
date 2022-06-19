package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblt.class */
public final class zzblt implements zzeqb<ViewGroup> {
    private final zzblu zzful;

    private zzblt(zzblu zzbluVar) {
        this.zzful = zzbluVar;
    }

    public static zzblt zze(zzblu zzbluVar) {
        return new zzblt(zzbluVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzful.zzajy();
    }
}
