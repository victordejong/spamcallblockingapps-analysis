package p193e.p1451f.p1452a.p1457n.p1460o;

import java.util.Objects;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d;
import p193e.p1451f.p1452a.p1480t.p1481k.C22625a;
/* renamed from: e.f.a.n.o.v */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/v.class */
public final class C22392v<Z> implements AbstractC22394w<Z>, C22625a.AbstractC22629d {

    /* renamed from: e */
    public static final AbstractC26555e<C22392v<?>> f62215e = C22625a.m8013a(20, new C22393a());

    /* renamed from: a */
    public final AbstractC22633d f62216a = new AbstractC22633d.C22635b();

    /* renamed from: b */
    public AbstractC22394w<Z> f62217b;

    /* renamed from: c */
    public boolean f62218c;

    /* renamed from: d */
    public boolean f62219d;

    /* renamed from: e.f.a.n.o.v$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/v$a.class */
    public class C22393a implements C22625a.AbstractC22627b<C22392v<?>> {
        @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22627b
        public C22392v<?> create() {
            return new C22392v<>();
        }
    }

    /* renamed from: e */
    public static <Z> C22392v<Z> m8249e(AbstractC22394w<Z> abstractC22394w) {
        C22392v<Z> c22392v = (C22392v<Z>) f62215e.mo1689a();
        Objects.requireNonNull(c22392v, "Argument must not be null");
        c22392v.f62219d = false;
        c22392v.f62218c = true;
        c22392v.f62217b = abstractC22394w;
        return c22392v;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: a */
    public int mo8163a() {
        return this.f62217b.mo8163a();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: b */
    public void mo8162b() {
        synchronized (this) {
            this.f62216a.mo8010a();
            this.f62219d = true;
            if (!this.f62218c) {
                this.f62217b.mo8162b();
                this.f62217b = null;
                f62215e.mo1688b(this);
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: c */
    public Class<Z> mo8161c() {
        return this.f62217b.mo8161c();
    }

    @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22629d
    /* renamed from: d */
    public AbstractC22633d mo8012d() {
        return this.f62216a;
    }

    /* renamed from: f */
    public void m8248f() {
        synchronized (this) {
            this.f62216a.mo8010a();
            if (!this.f62218c) {
                throw new IllegalStateException("Already unlocked");
            }
            this.f62218c = false;
            if (this.f62219d) {
                mo8162b();
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    public Z get() {
        return this.f62217b.get();
    }
}
