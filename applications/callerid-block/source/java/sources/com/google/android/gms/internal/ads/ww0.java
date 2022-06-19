package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ww0.class */
final /* synthetic */ class ww0 implements Callable {

    /* renamed from: a */
    private final rz1 f9073a;

    /* renamed from: b */
    private final rz1 f9074b;

    ww0(rz1 rz1Var, rz1 rz1Var2) {
        this.f9073a = rz1Var;
        this.f9074b = rz1Var2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        rz1 rz1Var = this.f9073a;
        rz1 rz1Var2 = this.f9074b;
        return new ix0((mx0) rz1Var.get(), ((gx0) rz1Var2.get()).f6726b, ((gx0) rz1Var2.get()).f6725a);
    }
}
