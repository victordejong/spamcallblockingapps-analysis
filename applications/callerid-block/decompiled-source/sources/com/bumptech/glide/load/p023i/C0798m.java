package com.bumptech.glide.load.p023i;

import com.bumptech.glide.p029o.C0852g;
import com.bumptech.glide.p029o.C0857k;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.i.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/m.class */
public class C0798m<A, B> {

    /* renamed from: a */
    private final C0852g<C0799b<A>, B> f3666a;

    /* renamed from: com.bumptech.glide.load.i.m$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/m$b.class */
    static final class C0799b<A> {

        /* renamed from: d */
        private static final Queue<C0799b<?>> f3667d = C0857k.m10753e(0);

        /* renamed from: a */
        private int f3668a;

        /* renamed from: b */
        private int f3669b;

        /* renamed from: c */
        private A f3670c;

        private C0799b() {
        }

        /* renamed from: a */
        static <A> C0799b<A> m10984a(A a, int i, int i2) {
            C0799b<?> poll;
            Queue<C0799b<?>> queue = f3667d;
            synchronized (queue) {
                poll = queue.poll();
            }
            C0799b<A> bVar = (C0799b<A>) poll;
            if (poll == null) {
                bVar = new C0799b<>();
            }
            bVar.m10983b(a, i, i2);
            return bVar;
        }

        /* renamed from: b */
        private void m10983b(A a, int i, int i2) {
            this.f3670c = a;
            this.f3669b = i;
            this.f3668a = i2;
        }

        /* renamed from: c */
        public void m10982c() {
            Queue<C0799b<?>> queue = f3667d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C0799b) {
                C0799b bVar = (C0799b) obj;
                z = false;
                if (this.f3669b == bVar.f3669b) {
                    z = false;
                    if (this.f3668a == bVar.f3668a) {
                        z = false;
                        if (this.f3670c.equals(bVar.f3670c)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((this.f3668a * 31) + this.f3669b) * 31) + this.f3670c.hashCode();
        }
    }

    public C0798m(long j) {
        this.f3666a = new a(this, j);
    }

    /* renamed from: a */
    public B m10986a(A a, int i, int i2) {
        C0799b<A> a2 = C0799b.m10984a(a, i, i2);
        B g = this.f3666a.m10772g(a2);
        a2.m10982c();
        return g;
    }

    /* renamed from: b */
    public void m10985b(A a, int i, int i2, B b) {
        this.f3666a.m10768k(C0799b.m10984a(a, i, i2), b);
    }
}
