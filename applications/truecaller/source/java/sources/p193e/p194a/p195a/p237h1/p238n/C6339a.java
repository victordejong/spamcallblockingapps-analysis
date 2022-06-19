package p193e.p194a.p195a.p237h1.p238n;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1356x2.C21392b;
import p193e.p194a.p195a.p237h1.C6328g;
/* renamed from: e.a.a.h1.n.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/n/a.class */
public final class C6339a {

    /* renamed from: a */
    public final AbstractC15539j2 f21177a;

    /* renamed from: b */
    public final AbstractC19233h0 f21178b;

    /* renamed from: c */
    public final C6339a f21179c = this;

    /* renamed from: d */
    public Provider<C6354m> f21180d;

    /* renamed from: e */
    public Provider<AbstractC6351j> f21181e;

    /* renamed from: e.a.a.h1.n.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/n/a$b.class */
    public static final class C6341b<T> implements Provider<T> {

        /* renamed from: a */
        public final C6339a f21182a;

        public C6341b(C6339a c6339a, int i) {
            this.f21182a = c6339a;
        }

        public T get() {
            AbstractC19510i0 mo12264o4 = this.f21182a.f21177a.mo12264o4();
            Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
            return (T) new C6354m(mo12264o4);
        }
    }

    public C6339a(AbstractC15539j2 abstractC15539j2, AbstractC19233h0 abstractC19233h0, C6340a c6340a) {
        this.f21177a = abstractC15539j2;
        this.f21178b = abstractC19233h0;
        C6341b c6341b = new C6341b(this, 0);
        this.f21180d = c6341b;
        this.f21181e = b.b(c6341b);
    }

    /* renamed from: a */
    public final C6349h m31429a() {
        AbstractC6347f abstractC6347f = (AbstractC6347f) this.f21181e.get();
        C6344c c6344c = new C6344c(this.f21178b);
        AbstractC19022f0 mo12377g0 = this.f21177a.mo12377g0();
        Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
        C6345d c6345d = new C6345d(new C21392b(mo12377g0));
        AbstractC6346e abstractC6346e = (AbstractC6346e) this.f21181e.get();
        C20592g mo11648b = this.f21177a.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        AbstractC19215b mo12666K6 = this.f21177a.mo12666K6();
        Objects.requireNonNull(mo12666K6, "Cannot return null from a non-@Nullable component method");
        return new C6349h(abstractC6347f, c6344c, c6345d, abstractC6346e, new C6328g(mo11648b, mo12666K6));
    }
}
