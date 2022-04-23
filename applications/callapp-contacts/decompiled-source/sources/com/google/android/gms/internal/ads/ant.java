package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ant.class */
public final class ant<AdT> implements anu<AdT> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, bsk<AdT>> f23640a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ant(Map<String, bsk<AdT>> map) {
        this.f23640a = map;
    }

    @Override // com.google.android.gms.internal.ads.anu
    public final bsk<AdT> a(int i, String str) {
        return this.f23640a.get(str);
    }
}
