package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blz.class */
final /* synthetic */ class blz implements Callable {

    /* renamed from: a */
    private final bly f11517a;

    private blz(bly blyVar) {
        this.f11517a = blyVar;
    }

    /* renamed from: a */
    public static Callable m11802a(bly blyVar) {
        return new blz(blyVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f11517a.getWritableDatabase();
    }
}
