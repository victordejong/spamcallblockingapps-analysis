package p193e.p194a.p1263t3.p1264c;

import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20554e;
import p193e.p194a.p1263t3.p1264c.p1265x.C20550a;
import p193e.p194a.p1263t3.p1264c.p1265x.C20551b;
import p193e.p194a.p1263t3.p1264c.p1265x.C20553d;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1272u3.C20602n;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p276p0.p277m.C7172a;
import p193e.p194a.p195a.p276p0.p277m.C7174b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p524b.AbstractC9687f;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p538g.p546y.AbstractC10227k;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.t3.c.d */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/d.class */
public final class C20510d {

    /* renamed from: a */
    public final C20525l f57565a;

    /* renamed from: b */
    public final AbstractC15539j2 f57566b;

    /* renamed from: c */
    public final C20510d f57567c = this;

    /* renamed from: d */
    public Provider<AbstractC20526m> f57568d = new a();

    /* renamed from: e */
    public Provider<AbstractC20519g> f57569e;

    /* renamed from: f */
    public Provider<C20602n> f57570f;

    /* renamed from: g */
    public Provider<AbstractC19854f<AbstractC6233m>> f57571g;

    /* renamed from: h */
    public Provider<C20550a> f57572h;

    /* renamed from: i */
    public Provider<C7174b> f57573i;

    /* renamed from: j */
    public Provider<C20551b> f57574j;

    /* renamed from: k */
    public Provider<AbstractC20554e> f57575k;

    /* renamed from: e.a.t3.c.d$b */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/d$b.class */
    public static final class C20512b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20510d f57576a;

        /* renamed from: b */
        public final int f57577b;

        public C20512b(C20510d c20510d, int i) {
            this.f57576a = c20510d;
            this.f57577b = i;
        }

        public T get() {
            switch (this.f57577b) {
                case 0:
                    C20510d c20510d = this.f57576a;
                    Objects.requireNonNull(c20510d.f57565a);
                    return (T) new C20528n((AbstractC20519g) c20510d.f57569e.get(), (C20602n) c20510d.f57570f.get(), (AbstractC20554e) c20510d.f57575k.get());
                case 1:
                    C20510d c20510d2 = this.f57576a;
                    C20525l c20525l = c20510d2.f57565a;
                    o3.a a = b.a(c20510d2.f57568d);
                    AbstractC9687f mo12253p2 = c20510d2.f57566b.mo12253p2();
                    Objects.requireNonNull(mo12253p2, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c20525l);
                    return (T) new C20524k(a, mo12253p2);
                case 2:
                    C20510d c20510d3 = this.f57576a;
                    C20525l c20525l2 = c20510d3.f57565a;
                    C20592g mo11648b = c20510d3.f57566b.mo11648b();
                    Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c20525l2);
                    return (T) ((C20602n) mo11648b);
                case 3:
                    C20510d c20510d4 = this.f57576a;
                    C20525l c20525l3 = c20510d4.f57565a;
                    C20550a c20550a = (C20550a) c20510d4.f57572h.get();
                    C7174b c7174b = (C7174b) c20510d4.f57573i.get();
                    C20551b c20551b = (C20551b) c20510d4.f57574j.get();
                    Objects.requireNonNull(c20525l3);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    l.e(c20550a, "hook");
                    linkedHashMap.put(c20550a.m11040b(), c20550a);
                    l.e(c7174b, "hook");
                    linkedHashMap.put(c7174b.m30021b(), c7174b);
                    l.e(c20551b, "hook");
                    linkedHashMap.put(c20551b.m11039b(), c20551b);
                    return (T) new C20553d(linkedHashMap, null);
                case 4:
                    C20510d c20510d5 = this.f57576a;
                    C20525l c20525l4 = c20510d5.f57565a;
                    o3.a a2 = b.a(c20510d5.f57571g);
                    AbstractC8541a mo12420d = c20510d5.f57566b.mo12420d();
                    Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c20525l4);
                    return (T) new C20550a(a2, mo12420d);
                case 5:
                    T t = (T) this.f57576a.f57566b.mo12453a7();
                    Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                    return t;
                case 6:
                    C20510d c20510d6 = this.f57576a;
                    C20525l c20525l5 = c20510d6.f57565a;
                    o3.a a3 = b.a(c20510d6.f57571g);
                    AbstractC10227k mo12601P4 = c20510d6.f57566b.mo12601P4();
                    Objects.requireNonNull(mo12601P4, "Cannot return null from a non-@Nullable component method");
                    AbstractC10028o mo12615O4 = c20510d6.f57566b.mo12615O4();
                    Objects.requireNonNull(mo12615O4, "Cannot return null from a non-@Nullable component method");
                    f mo12315k6 = c20510d6.f57566b.mo12315k6();
                    Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                    C7172a c7172a = new C7172a(a3, mo12601P4, mo12615O4, mo12315k6);
                    Objects.requireNonNull(c20525l5);
                    return (T) new C7174b(c7172a);
                case 7:
                    C20510d c20510d7 = this.f57576a;
                    C20525l c20525l6 = c20510d7.f57565a;
                    o3.a a4 = b.a(c20510d7.f57571g);
                    Objects.requireNonNull(c20525l6);
                    return (T) new C20551b(a4);
                default:
                    throw new AssertionError(this.f57577b);
            }
        }
    }

    public C20510d(C20525l c20525l, AbstractC15539j2 abstractC15539j2, C20511a c20511a) {
        this.f57565a = c20525l;
        this.f57566b = abstractC15539j2;
        Provider c20512b = new C20512b(this, 1);
        Object obj = b.c;
        this.f57569e = !(c20512b instanceof b) ? new b(c20512b) : c20512b;
        Provider c20512b2 = new C20512b(this, 2);
        this.f57570f = !(c20512b2 instanceof b) ? new b(c20512b2) : c20512b2;
        this.f57571g = new C20512b(this, 5);
        Provider c20512b3 = new C20512b(this, 4);
        this.f57572h = !(c20512b3 instanceof b) ? new b(c20512b3) : c20512b3;
        Provider c20512b4 = new C20512b(this, 6);
        this.f57573i = !(c20512b4 instanceof b) ? new b(c20512b4) : c20512b4;
        Provider c20512b5 = new C20512b(this, 7);
        this.f57574j = !(c20512b5 instanceof b) ? new b(c20512b5) : c20512b5;
        Provider c20512b6 = new C20512b(this, 3);
        this.f57575k = !(c20512b6 instanceof b) ? new b(c20512b6) : c20512b6;
        Provider<AbstractC20526m> provider = this.f57568d;
        C20512b c20512b7 = new C20512b(this, 0);
        a.a(provider, !(c20512b7 instanceof b) ? new b(c20512b7) : c20512b7);
    }
}
