package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/n11.class */
final /* synthetic */ class n11 implements Callable {

    /* renamed from: a */
    private final q11 f7680a;

    /* renamed from: b */
    private final ml1 f7681b;

    /* renamed from: c */
    private final al1 f7682c;

    n11(q11 q11Var, ml1 ml1Var, al1 al1Var) {
        this.f7680a = q11Var;
        this.f7681b = ml1Var;
        this.f7682c = al1Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f7680a.c(this.f7681b, this.f7682c);
    }
}
