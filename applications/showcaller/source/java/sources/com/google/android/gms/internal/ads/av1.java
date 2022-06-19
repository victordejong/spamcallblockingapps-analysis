package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/av1.class */
final /* synthetic */ class av1 implements Callable {

    /* renamed from: a */
    private final yu1 f20140a;

    private av1(yu1 yu1Var) {
        this.f20140a = yu1Var;
    }

    /* renamed from: a */
    public static Callable m16479a(yu1 yu1Var) {
        return new av1(yu1Var);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f20140a.getWritableDatabase();
    }
}
