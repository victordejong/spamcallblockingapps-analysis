package com.criteo.publisher.advancednative;

import com.criteo.publisher.advancednative.C8241i;
import java.lang.ref.Reference;
import java.net.URL;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.criteo.publisher.advancednative.j */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/j.class */
public final class C8244j implements AbstractC8250p {

    /* renamed from: a */
    private final Iterable<URL> f29785a;

    /* renamed from: b */
    private final Reference<CriteoNativeAdListener> f29786b;

    /* renamed from: c */
    private final C8241i f29787c;

    /* renamed from: d */
    private final AtomicBoolean f29788d = new AtomicBoolean(false);

    public C8244j(Iterable<URL> iterable, Reference<CriteoNativeAdListener> reference, C8241i c8241i) {
        this.f29785a = iterable;
        this.f29786b = reference;
        this.f29787c = c8241i;
    }

    @Override // com.criteo.publisher.advancednative.AbstractC8250p
    /* renamed from: a */
    public final void mo25966a() {
        if (!this.f29788d.compareAndSet(false, true)) {
            return;
        }
        C8241i c8241i = this.f29787c;
        for (URL url : this.f29785a) {
            c8241i.f29780b.execute(new C8241i.C8243b(url, c8241i.f29779a, null));
        }
        CriteoNativeAdListener criteoNativeAdListener = this.f29786b.get();
        if (criteoNativeAdListener == null) {
            return;
        }
        C8241i c8241i2 = this.f29787c;
        c8241i2.f29781c.m25926a(new C8241i.C8242a(c8241i2, criteoNativeAdListener));
    }
}
