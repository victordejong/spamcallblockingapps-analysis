package com.bumptech.glide.load.p212i;

import com.bumptech.glide.p223p.C4378g;
import com.bumptech.glide.p223p.C4383k;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.i.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/m.class */
public class C4188m<A, B> {

    /* renamed from: a */
    private final C4378g<C4190b<A>, B> f13053a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.i.m$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/m$a.class */
    public class C4189a extends C4378g<C4190b<A>, B> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4189a(long j) {
            super(j);
            C4188m.this = r5;
        }

        /* renamed from: n */
        public void mo22729j(C4190b<A> c4190b, B b) {
            c4190b.m23136c();
        }
    }

    /* renamed from: com.bumptech.glide.load.i.m$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/m$b.class */
    public static final class C4190b<A> {

        /* renamed from: a */
        private static final Queue<C4190b<?>> f13055a = C4383k.m22713e(0);

        /* renamed from: b */
        private int f13056b;

        /* renamed from: c */
        private int f13057c;

        /* renamed from: d */
        private A f13058d;

        private C4190b() {
        }

        /* renamed from: a */
        static <A> C4190b<A> m23138a(A a, int i, int i2) {
            C4190b<?> poll;
            Queue<C4190b<?>> queue = f13055a;
            synchronized (queue) {
                poll = queue.poll();
            }
            C4190b<?> c4190b = poll;
            if (poll == null) {
                c4190b = new C4190b<>();
            }
            c4190b.m23137b(a, i, i2);
            return (C4190b<A>) c4190b;
        }

        /* renamed from: b */
        private void m23137b(A a, int i, int i2) {
            this.f13058d = a;
            this.f13057c = i;
            this.f13056b = i2;
        }

        /* renamed from: c */
        public void m23136c() {
            Queue<C4190b<?>> queue = f13055a;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C4190b) {
                C4190b c4190b = (C4190b) obj;
                z = false;
                if (this.f13057c == c4190b.f13057c) {
                    z = false;
                    if (this.f13056b == c4190b.f13056b) {
                        z = false;
                        if (this.f13058d.equals(c4190b.f13058d)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((this.f13056b * 31) + this.f13057c) * 31) + this.f13058d.hashCode();
        }
    }

    public C4188m(long j) {
        this.f13053a = new C4189a(j);
    }

    /* renamed from: a */
    public B m23141a(A a, int i, int i2) {
        C4190b<A> m23138a = C4190b.m23138a(a, i, i2);
        B m22732g = this.f13053a.m22732g(m23138a);
        m23138a.m23136c();
        return m22732g;
    }

    /* renamed from: b */
    public void m23140b(A a, int i, int i2, B b) {
        this.f13053a.m22728k(C4190b.m23138a(a, i, i2), b);
    }
}
