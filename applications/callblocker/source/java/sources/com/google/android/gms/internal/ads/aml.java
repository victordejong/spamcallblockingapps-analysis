package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aml.class */
public final class aml<AdT> implements amm<AdT> {

    /* renamed from: a */
    private final Map<String, bmv<AdT>> f10009a;

    public aml(Map<String, bmv<AdT>> map) {
        this.f10009a = map;
    }

    @Override // com.google.android.gms.internal.ads.amm
    /* renamed from: a */
    public final bmv<AdT> mo12358a(int i, String str) {
        return this.f10009a.get(str);
    }
}
