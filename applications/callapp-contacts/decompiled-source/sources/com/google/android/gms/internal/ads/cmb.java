package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqx;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmb.class */
public final class cmb<R extends aqx<? extends anp>> {

    /* renamed from: a  reason: collision with root package name */
    final cqz f26060a;

    /* renamed from: b  reason: collision with root package name */
    final cmk f26061b;

    /* renamed from: c  reason: collision with root package name */
    final cmj<R> f26062c;

    /* renamed from: d  reason: collision with root package name */
    final Executor f26063d;
    cmf e;

    public cmb(cqz cqzVar, cmk cmkVar, cmj<R> cmjVar, Executor executor) {
        this.f26060a = cqzVar;
        this.f26061b = cmkVar;
        this.f26062c = cmjVar;
        this.f26063d = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final cri a() {
        cpo a2 = this.f26062c.a(this.f26061b).b().a();
        return this.f26060a.a(a2.f26227d, a2.f, a2.j);
    }
}
