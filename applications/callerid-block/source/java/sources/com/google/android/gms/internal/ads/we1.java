package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/we1.class */
final /* synthetic */ class we1 implements Callable {

    /* renamed from: a */
    private final rz1 f9007a;

    /* renamed from: b */
    private final rz1 f9008b;

    we1(rz1 rz1Var, rz1 rz1Var2) {
        this.f9007a = rz1Var;
        this.f9008b = rz1Var2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new ye1((String) this.f9007a.get(), (String) this.f9008b.get());
    }
}
