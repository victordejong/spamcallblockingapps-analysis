package p193e.p1451f.p1452a.p1457n.p1460o;

import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
/* renamed from: e.f.a.n.o.q */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/q.class */
public class C22385q<Z> implements AbstractC22394w<Z> {

    /* renamed from: a */
    public final boolean f62195a;

    /* renamed from: b */
    public final boolean f62196b;

    /* renamed from: c */
    public final AbstractC22394w<Z> f62197c;

    /* renamed from: d */
    public final AbstractC22386a f62198d;

    /* renamed from: e */
    public final AbstractC22263f f62199e;

    /* renamed from: f */
    public int f62200f;

    /* renamed from: g */
    public boolean f62201g;

    /* renamed from: e.f.a.n.o.q$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/q$a.class */
    public interface AbstractC22386a {
        /* renamed from: a */
        void mo8257a(AbstractC22263f abstractC22263f, C22385q<?> c22385q);
    }

    public C22385q(AbstractC22394w<Z> abstractC22394w, boolean z, boolean z2, AbstractC22263f abstractC22263f, AbstractC22386a abstractC22386a) {
        Objects.requireNonNull(abstractC22394w, "Argument must not be null");
        this.f62197c = abstractC22394w;
        this.f62195a = z;
        this.f62196b = z2;
        this.f62199e = abstractC22263f;
        Objects.requireNonNull(abstractC22386a, "Argument must not be null");
        this.f62198d = abstractC22386a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: a */
    public int mo8163a() {
        return this.f62197c.mo8163a();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: b */
    public void mo8162b() {
        synchronized (this) {
            if (this.f62200f > 0) {
                throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
            }
            if (this.f62201g) {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
            this.f62201g = true;
            if (this.f62196b) {
                this.f62197c.mo8162b();
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: c */
    public Class<Z> mo8161c() {
        return this.f62197c.mo8161c();
    }

    /* renamed from: d */
    public void m8259d() {
        synchronized (this) {
            if (this.f62201g) {
                throw new IllegalStateException("Cannot acquire a recycled resource");
            }
            this.f62200f++;
        }
    }

    /* renamed from: e */
    public void m8258e() {
        boolean z;
        synchronized (this) {
            int i = this.f62200f;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f62200f = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f62198d.mo8257a(this.f62199e, this);
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    public Z get() {
        return this.f62197c.get();
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = "EngineResource{isMemoryCacheable=" + this.f62195a + ", listener=" + this.f62198d + ", key=" + this.f62199e + ", acquired=" + this.f62200f + ", isRecycled=" + this.f62201g + ", resource=" + this.f62197c + '}';
        }
        return str;
    }
}
