package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/af1.class */
final /* synthetic */ class af1 implements Callable {

    /* renamed from: a */
    private final bf1 f5966a;

    af1(bf1 bf1Var) {
        this.f5966a = bf1Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new cf1(this.f5966a.b);
    }
}
