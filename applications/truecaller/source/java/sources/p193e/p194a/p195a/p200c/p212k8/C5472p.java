package p193e.p194a.p195a.p200c.p212k8;

import java.util.Objects;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7267u;
import p193e.p194a.p195a.C7282v;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.k8.p */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/p.class */
public final class C5472p {

    /* renamed from: a */
    public final C5471o f18595a;

    /* renamed from: b */
    public final AbstractC15539j2 f18596b;

    /* renamed from: c */
    public final C5472p f18597c = this;

    /* renamed from: d */
    public Provider<AbstractC6248w> f18598d = new C5474b(this, 1);

    /* renamed from: e */
    public Provider<C5458e> f18599e;

    /* renamed from: f */
    public Provider<C6395c> f18600f;

    /* renamed from: g */
    public Provider<AbstractC6394b> f18601g;

    /* renamed from: h */
    public Provider<C7282v> f18602h;

    /* renamed from: i */
    public Provider<AbstractC7267u> f18603i;

    /* renamed from: j */
    public Provider<C5447a> f18604j;

    /* renamed from: e.a.a.c.k8.p$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/p$b.class */
    public static final class C5474b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5472p f18605a;

        /* renamed from: b */
        public final int f18606b;

        public C5474b(C5472p c5472p, int i) {
            this.f18605a = c5472p;
            this.f18606b = i;
        }

        public T get() {
            int i = this.f18606b;
            if (i == 0) {
                C5472p c5472p = this.f18605a;
                C5471o c5471o = c5472p.f18595a;
                AbstractC19870l mo12119z1 = c5472p.f18596b.mo12119z1();
                Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c5471o);
                l.e(mo12119z1, "actorsThreads");
                AbstractC19868j mo11845d = mo12119z1.mo11845d();
                l.d(mo11845d, "actorsThreads.ui()");
                f mo12378g = c5472p.f18596b.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                AbstractC19854f<AbstractC6233m> mo12453a7 = c5472p.f18596b.mo12453a7();
                Objects.requireNonNull(mo12453a7, "Cannot return null from a non-@Nullable component method");
                a a = b.a(c5472p.f18598d);
                AbstractC19510i0 mo12264o4 = c5472p.f18596b.mo12264o4();
                Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
                return (T) new C5458e(mo11845d, mo12378g, mo12453a7, a, mo12264o4);
            } else if (i == 1) {
                T t = (T) this.f18605a.f18596b.mo12144x3();
                Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                return t;
            } else if (i == 2) {
                C5472p c5472p2 = this.f18605a;
                AbstractC5465i abstractC5465i = (AbstractC5465i) c5472p2.f18599e.get();
                AbstractC5464h abstractC5464h = (AbstractC5464h) c5472p2.f18599e.get();
                AbstractC5468l abstractC5468l = (AbstractC5468l) c5472p2.f18599e.get();
                AbstractC6394b abstractC6394b = (AbstractC6394b) c5472p2.f18601g.get();
                C19235i0 c19235i0 = new C19235i0(c5472p2.f18595a.f18594a);
                C20592g mo11648b = c5472p2.f18596b.mo11648b();
                Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                AbstractC6708t mo12524V0 = c5472p2.f18596b.mo12524V0();
                Objects.requireNonNull(mo12524V0, "Cannot return null from a non-@Nullable component method");
                return (T) new C5447a(abstractC5465i, abstractC5464h, abstractC5468l, abstractC6394b, c19235i0, mo11648b, mo12524V0, (AbstractC7267u) c5472p2.f18603i.get(), c5472p2.f18596b.mo12263o5());
            } else if (i != 3) {
                if (i != 4) {
                    throw new AssertionError(this.f18606b);
                }
                C5472p c5472p3 = this.f18605a;
                C19235i0 c19235i02 = new C19235i0(c5472p3.f18595a.f18594a);
                AbstractC17405c mo12289m6 = c5472p3.f18596b.mo12289m6();
                Objects.requireNonNull(mo12289m6, "Cannot return null from a non-@Nullable component method");
                AbstractC19222c mo11637k = c5472p3.f18596b.mo11637k();
                Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                return (T) new C7282v(c19235i02, mo12289m6, mo11637k);
            } else {
                C5472p c5472p4 = this.f18605a;
                AbstractC19223c0 mo12349i = c5472p4.f18596b.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                AbstractC6489q mo12466Z5 = c5472p4.f18596b.mo12466Z5();
                Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                AbstractC18951b0 mo12399e7 = c5472p4.f18596b.mo12399e7();
                Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
                C20592g mo11648b2 = c5472p4.f18596b.mo11648b();
                Objects.requireNonNull(mo11648b2, "Cannot return null from a non-@Nullable component method");
                AbstractC14840m mo11655T = c5472p4.f18596b.mo11655T();
                Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S = c5472p4.f18596b.mo12565S();
                Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                AbstractC19222c mo11637k2 = c5472p4.f18596b.mo11637k();
                Objects.requireNonNull(mo11637k2, "Cannot return null from a non-@Nullable component method");
                return (T) new C6395c(mo12349i, mo12466Z5, mo12399e7, mo11648b2, mo11655T, mo12565S, mo11637k2);
            }
        }
    }

    public C5472p(C5471o c5471o, AbstractC15539j2 abstractC15539j2, C5473a c5473a) {
        this.f18595a = c5471o;
        this.f18596b = abstractC15539j2;
        Provider c5474b = new C5474b(this, 0);
        Object obj = b.c;
        this.f18599e = !(c5474b instanceof b) ? new b(c5474b) : c5474b;
        C5474b c5474b2 = new C5474b(this, 3);
        this.f18600f = c5474b2;
        this.f18601g = b.b(c5474b2);
        C5474b c5474b3 = new C5474b(this, 4);
        this.f18602h = c5474b3;
        this.f18603i = b.b(c5474b3);
        Provider c5474b4 = new C5474b(this, 2);
        this.f18604j = !(c5474b4 instanceof b) ? new b(c5474b4) : c5474b4;
    }
}
