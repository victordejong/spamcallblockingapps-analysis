package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqu.class */
final /* synthetic */ class bqu implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final bqt f24910a;

    private bqu(bqt bqtVar) {
        this.f24910a = bqtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Callable a(bqt bqtVar) {
        return new bqu(bqtVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f24910a.getWritableDatabase();
    }
}
