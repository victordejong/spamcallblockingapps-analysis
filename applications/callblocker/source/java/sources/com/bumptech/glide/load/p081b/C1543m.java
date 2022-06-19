package com.bumptech.glide.load.p081b;

import com.bumptech.glide.p077h.C1453f;
import com.bumptech.glide.p077h.C1457j;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.b.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/m.class */
public class C1543m<A, B> {

    /* renamed from: a */
    private final C1453f<C1545a<A>, B> f4897a;

    /* renamed from: com.bumptech.glide.load.b.m$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/m$a.class */
    public static final class C1545a<A> {

        /* renamed from: a */
        private static final Queue<C1545a<?>> f4899a = C1457j.m16981a(0);

        /* renamed from: b */
        private int f4900b;

        /* renamed from: c */
        private int f4901c;

        /* renamed from: d */
        private A f4902d;

        private C1545a() {
        }

        /* renamed from: a */
        static <A> C1545a<A> m16844a(A a, int i, int i2) {
            C1545a<?> poll;
            synchronized (f4899a) {
                poll = f4899a.poll();
            }
            C1545a<?> c1545a = poll;
            if (poll == null) {
                c1545a = new C1545a<>();
            }
            c1545a.m16843b(a, i, i2);
            return (C1545a<A>) c1545a;
        }

        /* renamed from: b */
        private void m16843b(A a, int i, int i2) {
            this.f4902d = a;
            this.f4901c = i;
            this.f4900b = i2;
        }

        /* renamed from: a */
        public void m16845a() {
            synchronized (f4899a) {
                f4899a.offer(this);
            }
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C1545a) {
                C1545a c1545a = (C1545a) obj;
                z = false;
                if (this.f4901c == c1545a.f4901c) {
                    z = false;
                    if (this.f4900b == c1545a.f4900b) {
                        z = false;
                        if (this.f4902d.equals(c1545a.f4902d)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((this.f4900b * 31) + this.f4901c) * 31) + this.f4902d.hashCode();
        }
    }

    public C1543m() {
        this(250L);
    }

    public C1543m(long j) {
        this.f4897a = new C1453f<C1545a<A>, B>(j) { // from class: com.bumptech.glide.load.b.m.1
            /* renamed from: a */
            protected void m16846a(C1545a<A> c1545a, B b) {
                c1545a.m16845a();
            }

            @Override // com.bumptech.glide.p077h.C1453f
            /* renamed from: a */
            protected /* bridge */ /* synthetic */ void mo16496a(Object obj, Object obj2) {
                m16846a((C1545a) ((C1545a) obj), (C1545a<A>) obj2);
            }
        };
    }

    /* renamed from: a */
    public B m16848a(A a, int i, int i2) {
        C1545a<A> m16844a = C1545a.m16844a(a, i, i2);
        B m16997b = this.f4897a.m16997b(m16844a);
        m16844a.m16845a();
        return m16997b;
    }

    /* renamed from: a */
    public void m16847a(A a, int i, int i2, B b) {
        this.f4897a.m16996b(C1545a.m16844a(a, i, i2), b);
    }
}
