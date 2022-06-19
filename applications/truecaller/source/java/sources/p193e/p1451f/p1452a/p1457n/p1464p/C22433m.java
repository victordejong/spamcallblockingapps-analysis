package p193e.p1451f.p1452a.p1457n.p1464p;

import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;
import p193e.p1451f.p1452a.p1480t.C22620g;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.p.m */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/m.class */
public class C22433m<A, B> {

    /* renamed from: a */
    public final C22620g<C22435b<A>, B> f62278a;

    /* renamed from: e.f.a.n.p.m$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/m$a.class */
    public class C22434a extends C22620g<C22435b<A>, B> {
        public C22434a(C22433m c22433m, long j) {
            super(j);
        }

        @Override // p193e.p1451f.p1452a.p1480t.C22620g
        /* renamed from: c */
        public void mo8028c(Object obj, Object obj2) {
            C22435b<?> c22435b = (C22435b) obj;
            Objects.requireNonNull(c22435b);
            Queue<C22435b<?>> queue = C22435b.f62279d;
            synchronized (queue) {
                queue.offer(c22435b);
            }
        }
    }

    /* renamed from: e.f.a.n.p.m$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/m$b.class */
    public static final class C22435b<A> {

        /* renamed from: d */
        public static final Queue<C22435b<?>> f62279d = new ArrayDeque(0);

        /* renamed from: a */
        public int f62280a;

        /* renamed from: b */
        public int f62281b;

        /* renamed from: c */
        public A f62282c;

        static {
            char[] cArr = C22623j.f62648a;
        }

        /* renamed from: a */
        public static <A> C22435b<A> m8232a(A a, int i, int i2) {
            C22435b<?> poll;
            Queue<C22435b<?>> queue = f62279d;
            synchronized (queue) {
                poll = queue.poll();
            }
            C22435b<?> c22435b = poll;
            if (poll == null) {
                c22435b = new C22435b<>();
            }
            c22435b.f62282c = a;
            c22435b.f62281b = i;
            c22435b.f62280a = i2;
            return (C22435b<A>) c22435b;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C22435b) {
                C22435b c22435b = (C22435b) obj;
                z = false;
                if (this.f62281b == c22435b.f62281b) {
                    z = false;
                    if (this.f62280a == c22435b.f62280a) {
                        z = false;
                        if (this.f62282c.equals(c22435b.f62282c)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f62280a;
            return this.f62282c.hashCode() + (((i * 31) + this.f62281b) * 31);
        }
    }

    public C22433m(long j) {
        this.f62278a = new C22434a(this, j);
    }
}
