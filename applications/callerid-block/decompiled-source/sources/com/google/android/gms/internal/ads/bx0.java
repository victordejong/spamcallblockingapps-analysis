package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bx0.class */
final /* synthetic */ class bx0 implements Callable {

    /* renamed from: a */
    private final jx0 f6214a;

    /* renamed from: b */
    private final rz1 f6215b;

    /* renamed from: c */
    private final rz1 f6216c;

    bx0(jx0 jx0Var, rz1 rz1Var, rz1 rz1Var2) {
        this.f6214a = jx0Var;
        this.f6215b = rz1Var;
        this.f6216c = rz1Var2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f6214a.D6(this.f6215b, this.f6216c);
    }
}
