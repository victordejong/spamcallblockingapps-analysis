package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24784l;
/* renamed from: e.m.a.c.q1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/l.class */
public final class C24784l<T> {

    /* renamed from: a */
    public final CopyOnWriteArrayList<C24786b<T>> f69459a = new CopyOnWriteArrayList<>();

    /* renamed from: e.m.a.c.q1.l$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/l$a.class */
    public interface AbstractC24785a<T> {
        /* renamed from: a */
        void mo4585a(T t);
    }

    /* renamed from: e.m.a.c.q1.l$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/l$b.class */
    public static final class C24786b<T> {

        /* renamed from: a */
        public final Handler f69460a;

        /* renamed from: b */
        public final T f69461b;

        /* renamed from: c */
        public boolean f69462c;

        public C24786b(Handler handler, T t) {
            this.f69460a = handler;
            this.f69461b = t;
        }
    }

    /* renamed from: a */
    public void m4588a(Handler handler, T t) {
        C26232y.m2310r((handler == null || t == null) ? false : true);
        m4586c(t);
        this.f69459a.add(new C24786b<>(handler, t));
    }

    /* renamed from: b */
    public void m4587b(final AbstractC24785a<T> abstractC24785a) {
        Iterator<C24786b<T>> it = this.f69459a.iterator();
        while (it.hasNext()) {
            final C24786b<T> next = it.next();
            next.f69460a.post(new Runnable() { // from class: e.m.a.c.q1.a
                @Override // java.lang.Runnable
                public final void run() {
                    C24784l.C24786b c24786b = C24784l.C24786b.this;
                    C24784l.AbstractC24785a abstractC24785a2 = abstractC24785a;
                    if (!c24786b.f69462c) {
                        abstractC24785a2.mo4585a(c24786b.f69461b);
                    }
                }
            });
        }
    }

    /* renamed from: c */
    public void m4586c(T t) {
        Iterator<C24786b<T>> it = this.f69459a.iterator();
        while (it.hasNext()) {
            C24786b<T> next = it.next();
            if (next.f69461b == t) {
                next.f69462c = true;
                this.f69459a.remove(next);
            }
        }
    }
}
