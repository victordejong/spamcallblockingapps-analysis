package p033i.p034a.p046d.p050e;

import java.util.concurrent.atomic.AtomicLong;
import p033i.p034a.p046d.p050e.p051a0.AbstractC0368h;
/* renamed from: i.a.d.e.h */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/h.class */
abstract class AbstractC0390h {

    /* renamed from: f */
    private final AtomicLong f913f = new AtomicLong(2);

    /* renamed from: g */
    private final AbstractC0368h f914g;

    AbstractC0390h(AbstractC0368h hVar) {
        this.f914g = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m263a() {
        return (this.f913f.addAndGet(2L) & 1) == 0;
    }

    /* renamed from: b */
    final void m262b(long j) {
        this.f914g.m316d(j);
    }
}
