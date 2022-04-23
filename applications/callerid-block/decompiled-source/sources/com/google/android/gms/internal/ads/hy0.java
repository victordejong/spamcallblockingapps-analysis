package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hy0.class */
final /* synthetic */ class hy0 implements Callable {

    /* renamed from: a */
    private final fy0 f6791a;

    private hy0(fy0 fy0Var) {
        this.f6791a = fy0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Callable m7210a(fy0 fy0Var) {
        return new hy0(fy0Var);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f6791a.getWritableDatabase();
    }
}
