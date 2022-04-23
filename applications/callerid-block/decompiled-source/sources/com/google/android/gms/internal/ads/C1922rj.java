package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.ads.rj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rj.class */
public final class C1922rj {

    /* renamed from: a */
    private final WeakHashMap<Context, C1906qj> f8342a = new WeakHashMap<>();

    /* renamed from: a */
    public final Future<C1876oj> m5964a(Context context) {
        return C2073zo.f9410a.m5553a(new CallableC1891pj(this, context));
    }
}
