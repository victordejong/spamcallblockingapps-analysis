package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zy0.class */
public final class zy0<AdT> implements az0<AdT> {

    /* renamed from: a */
    private final Map<String, qw1<AdT>> f33448a;

    public zy0(Map<String, qw1<AdT>> map) {
        this.f33448a = map;
    }

    @Override // com.google.android.gms.internal.ads.az0
    /* renamed from: a */
    public final qw1<AdT> mo8142a(int i, String str) {
        return this.f33448a.get(str);
    }
}
