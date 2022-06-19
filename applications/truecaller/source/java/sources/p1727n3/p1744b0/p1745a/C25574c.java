package p1727n3.p1744b0.p1745a;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p1727n3.p1744b0.p1745a.C25586h;
/* renamed from: n3.b0.a.c */
/* loaded from: classes-dex2jar.jar:n3/b0/a/c.class */
public final class C25574c<T> {

    /* renamed from: a */
    public final Executor f71578a;

    /* renamed from: b */
    public final C25586h.AbstractC25591e<T> f71579b;

    /* renamed from: n3.b0.a.c$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/c$a.class */
    public static final class C25575a<T> {

        /* renamed from: c */
        public static final Object f71580c = new Object();

        /* renamed from: d */
        public static Executor f71581d;

        /* renamed from: a */
        public Executor f71582a;

        /* renamed from: b */
        public final C25586h.AbstractC25591e<T> f71583b;

        public C25575a(C25586h.AbstractC25591e<T> abstractC25591e) {
            this.f71583b = abstractC25591e;
        }

        /* renamed from: a */
        public C25574c<T> m3206a() {
            if (this.f71582a == null) {
                synchronized (f71580c) {
                    if (f71581d == null) {
                        f71581d = Executors.newFixedThreadPool(2);
                    }
                }
                this.f71582a = f71581d;
            }
            return new C25574c<>(null, this.f71582a, this.f71583b);
        }
    }

    public C25574c(Executor executor, Executor executor2, C25586h.AbstractC25591e<T> abstractC25591e) {
        this.f71578a = executor2;
        this.f71579b = abstractC25591e;
    }
}
