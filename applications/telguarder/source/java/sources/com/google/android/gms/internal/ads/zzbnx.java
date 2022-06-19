package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnx.class */
public final class zzbnx<AdT> implements zzbny<AdT> {
    private final Map<String, zzcrj<AdT>> zzfwj;

    public zzbnx(Map<String, zzcrj<AdT>> map) {
        this.zzfwj = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbny
    public final zzcrj<AdT> zze(int i, String str) {
        return this.zzfwj.get(str);
    }
}
