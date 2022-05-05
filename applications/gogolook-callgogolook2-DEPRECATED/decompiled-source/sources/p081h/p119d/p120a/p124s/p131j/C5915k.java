package p081h.p119d.p120a.p124s.p131j;

import java.util.Queue;
import p081h.p119d.p120a.p149y.C6093e;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.j.k */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/k.class */
public class C5915k<A, B> {

    /* renamed from: a */
    public final C6093e<C5917b<A>, B> f14852a;

    /* renamed from: h.d.a.s.j.k$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/k$a.class */
    public class C5916a extends C6093e<C5917b<A>, B> {
        public C5916a(C5915k kVar, int i) {
            super(i);
        }

        /* renamed from: a */
        public void m24142a(C5917b<A> bVar, B b) {
            bVar.m24141a();
        }

        @Override // p081h.p119d.p120a.p149y.C6093e
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo23875a(Object obj, Object obj2) {
            m24142a((C5917b) ((C5917b) obj), (C5917b<A>) obj2);
        }
    }

    /* renamed from: h.d.a.s.j.k$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/k$b.class */
    public static final class C5917b<A> {

        /* renamed from: d */
        public static final Queue<C5917b<?>> f14853d = C6096h.m23864a(0);

        /* renamed from: a */
        public int f14854a;

        /* renamed from: b */
        public int f14855b;

        /* renamed from: c */
        public A f14856c;

        /* renamed from: b */
        public static <A> C5917b<A> m24139b(A a, int i, int i2) {
            C5917b<?> poll = f14853d.poll();
            C5917b<A> bVar = (C5917b<A>) poll;
            if (poll == null) {
                bVar = new C5917b<>();
            }
            bVar.m24140a(a, i, i2);
            return bVar;
        }

        /* renamed from: a */
        public void m24141a() {
            f14853d.offer(this);
        }

        /* renamed from: a */
        public final void m24140a(A a, int i, int i2) {
            this.f14856c = a;
            this.f14855b = i;
            this.f14854a = i2;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C5917b) {
                C5917b bVar = (C5917b) obj;
                z = false;
                if (this.f14855b == bVar.f14855b) {
                    z = false;
                    if (this.f14854a == bVar.f14854a) {
                        z = false;
                        if (this.f14856c.equals(bVar.f14856c)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((this.f14854a * 31) + this.f14855b) * 31) + this.f14856c.hashCode();
        }
    }

    public C5915k(int i) {
        this.f14852a = new C5916a(this, i);
    }

    /* renamed from: a */
    public B m24144a(A a, int i, int i2) {
        C5917b<A> b = C5917b.m24139b(a, i, i2);
        B a2 = this.f14852a.m23876a(b);
        b.m24141a();
        return a2;
    }

    /* renamed from: a */
    public void m24143a(A a, int i, int i2, B b) {
        this.f14852a.m23871b(C5917b.m24139b(a, i, i2), b);
    }
}
