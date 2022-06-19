package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.yh2;
import com.google.android.gms.internal.ads.zh2;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/n.class */
final class CallableC1387n implements Callable<zh2> {

    /* renamed from: a */
    final /* synthetic */ q f5503a;

    CallableC1387n(q qVar) {
        this.f5503a = qVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ zh2 call() {
        return new zh2(yh2.y(q.H6(this.f5503a).b, q.I6(this.f5503a), false, 1));
    }
}
