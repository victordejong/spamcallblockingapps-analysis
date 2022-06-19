package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqx;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmb.class */
final class cmb<R extends aqx<? extends anp>> {

    /* renamed from: a */
    final cqz f46067a;

    /* renamed from: b */
    final cmk f46068b;

    /* renamed from: c */
    final cmj<R> f46069c;

    /* renamed from: d */
    final Executor f46070d;

    /* renamed from: e */
    cmf f46071e;

    public cmb(cqz cqzVar, cmk cmkVar, cmj<R> cmjVar, Executor executor) {
        this.f46067a = cqzVar;
        this.f46068b = cmkVar;
        this.f46069c = cmjVar;
        this.f46070d = executor;
    }

    @Deprecated
    /* renamed from: a */
    public final cri m17414a() {
        cpo mo18452a = this.f46069c.mo17386a(this.f46068b).mo18453b().mo18452a();
        return this.f46067a.mo17301a(mo18452a.f46324d, mo18452a.f46326f, mo18452a.f46330j);
    }
}
