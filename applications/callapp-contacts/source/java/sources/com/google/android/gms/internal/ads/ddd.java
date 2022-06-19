package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddd.class */
public final class ddd<P> {

    /* renamed from: a */
    final ConcurrentMap<ddi, List<ddf<P>>> f46969a = new ConcurrentHashMap();

    /* renamed from: b */
    ddf<P> f46970b;

    /* renamed from: c */
    final Class<P> f46971c;

    public ddd(Class<P> cls) {
        this.f46971c = cls;
    }
}
