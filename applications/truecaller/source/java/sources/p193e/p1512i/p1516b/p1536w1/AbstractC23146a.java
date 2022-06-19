package p193e.p1512i.p1516b.p1536w1;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: e.i.b.w1.a */
/* loaded from: classes-dex2jar.jar:e/i/b/w1/a.class */
public abstract class AbstractC23146a {

    /* renamed from: e.i.b.w1.a$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/w1/a$a.class */
    public final class C23147a {

        /* renamed from: a */
        public final AtomicBoolean f64117a = new AtomicBoolean(false);

        public C23147a() {
            AbstractC23146a.this = r6;
            r6.mo7465a();
        }

        /* renamed from: a */
        public final void m7466a() {
            if (this.f64117a.compareAndSet(false, true)) {
                AbstractC23146a.this.mo7464b();
            }
        }
    }

    /* renamed from: a */
    public abstract void mo7465a();

    /* renamed from: b */
    public abstract void mo7464b();
}
