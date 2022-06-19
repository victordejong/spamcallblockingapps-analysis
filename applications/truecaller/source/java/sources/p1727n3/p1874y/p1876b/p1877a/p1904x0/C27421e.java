package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.os.Handler;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27421e;
/* renamed from: n3.y.b.a.x0.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/e.class */
public final class C27421e<T> {

    /* renamed from: a */
    public final CopyOnWriteArrayList<C27423b<T>> f77163a = new CopyOnWriteArrayList<>();

    /* renamed from: n3.y.b.a.x0.e$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/e$a.class */
    public interface AbstractC27422a<T> {
        /* renamed from: a */
        void m368a(T t);
    }

    /* renamed from: n3.y.b.a.x0.e$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/e$b.class */
    public static final class C27423b<T> {

        /* renamed from: a */
        public final Handler f77164a;

        /* renamed from: b */
        public final T f77165b;

        /* renamed from: c */
        public boolean f77166c;

        public C27423b(Handler handler, T t) {
            this.f77164a = handler;
            this.f77165b = t;
        }
    }

    /* renamed from: a */
    public void m371a(Handler handler, T t) {
        MediaSessionCompat.m43211p((handler == null || t == null) ? false : true);
        m369c(t);
        this.f77163a.add(new C27423b<>(handler, t));
    }

    /* renamed from: b */
    public void m370b(AbstractC27422a<T> abstractC27422a) {
        Iterator<C27423b<T>> it = this.f77163a.iterator();
        while (it.hasNext()) {
            C27423b<T> next = it.next();
            next.f77164a.post(new Runnable(next, abstractC27422a) { // from class: n3.y.b.a.x0.f

                /* renamed from: a */
                public final C27421e.C27423b f77167a;

                /* renamed from: b */
                public final C27421e.AbstractC27422a f77168b;

                {
                    this.f77167a = next;
                    this.f77168b = abstractC27422a;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C27421e.C27423b c27423b = this.f77167a;
                    C27421e.AbstractC27422a abstractC27422a2 = this.f77168b;
                    if (!c27423b.f77166c) {
                        abstractC27422a2.m368a(c27423b.f77165b);
                    }
                }
            });
        }
    }

    /* renamed from: c */
    public void m369c(T t) {
        Iterator<C27423b<T>> it = this.f77163a.iterator();
        while (it.hasNext()) {
            C27423b<T> next = it.next();
            if (next.f77165b == t) {
                next.f77166c = true;
                this.f77163a.remove(next);
            }
        }
    }
}
