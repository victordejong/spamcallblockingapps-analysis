package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboa.class */
public final class zzboa<AdT> implements zzeqb<zzbnx<AdT>> {
    private final zzeqo<Map<String, zzcrj<AdT>>> zzfwl;

    private zzboa(zzeqo<Map<String, zzcrj<AdT>>> zzeqoVar) {
        this.zzfwl = zzeqoVar;
    }

    public static <AdT> zzboa<AdT> zzd(zzeqo<Map<String, zzcrj<AdT>>> zzeqoVar) {
        return new zzboa<>(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnx(this.zzfwl.get());
    }
}
