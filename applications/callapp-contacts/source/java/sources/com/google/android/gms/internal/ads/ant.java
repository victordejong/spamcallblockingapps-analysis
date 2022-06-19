package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ant.class */
public final class ant<AdT> implements anu<AdT> {

    /* renamed from: a */
    private final Map<String, bsk<AdT>> f42499a;

    public ant(Map<String, bsk<AdT>> map) {
        this.f42499a = map;
    }

    @Override // com.google.android.gms.internal.ads.anu
    /* renamed from: a */
    public final bsk<AdT> mo18263a(int i, String str) {
        return this.f42499a.get(str);
    }
}
