package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.yu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yu.class */
public final class C3664yu implements crh<T> {

    /* renamed from: a */
    private final /* synthetic */ C3665yv f17656a;

    public C3664yu(C3665yv c3665yv) {
        this.f17656a = c3665yv;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6719a(T t) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f17656a.f17658b;
        atomicInteger.set(1);
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f17656a.f17658b;
        atomicInteger.set(-1);
    }
}
