package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqu.class */
final /* synthetic */ class bqu implements Callable {

    /* renamed from: a */
    private final bqt f44513a;

    private bqu(bqt bqtVar) {
        this.f44513a = bqtVar;
    }

    /* renamed from: a */
    public static Callable m17664a(bqt bqtVar) {
        return new bqu(bqtVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f44513a.getWritableDatabase();
    }
}
