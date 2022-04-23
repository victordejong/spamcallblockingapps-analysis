package p012b.p076s.p078b.p079a.p080a1;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p012b.p076s.p078b.p079a.p080a1.C1168e;
/* renamed from: b.s.b.a.a1.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/e.class */
public final class C1168e<T> {

    /* renamed from: a */
    public final CopyOnWriteArrayList<C1170b<T>> f4696a = new CopyOnWriteArrayList<>();

    /* renamed from: b.s.b.a.a1.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/a1/e$a.class */
    public interface AbstractC1169a<T> {
        /* renamed from: a */
        void mo32373a(T t);
    }

    /* renamed from: b.s.b.a.a1.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/a1/e$b.class */
    public static final class C1170b<T> {

        /* renamed from: a */
        public final Handler f4697a;

        /* renamed from: b */
        public final T f4698b;

        /* renamed from: c */
        public boolean f4699c;

        public C1170b(Handler handler, T t) {
            this.f4697a = handler;
            this.f4698b = t;
        }

        /* renamed from: a */
        public void m34427a() {
            this.f4699c = true;
        }

        /* renamed from: a */
        public void m34426a(final AbstractC1169a<T> aVar) {
            this.f4697a.post(new Runnable(this, aVar) { // from class: b.s.b.a.a1.f

                /* renamed from: a */
                public final C1168e.C1170b f4700a;

                /* renamed from: b */
                public final C1168e.AbstractC1169a f4701b;

                {
                    this.f4700a = this;
                    this.f4701b = aVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f4700a.m34424b(this.f4701b);
                }
            });
        }

        /* renamed from: b */
        public final /* synthetic */ void m34424b(AbstractC1169a aVar) {
            if (!this.f4699c) {
                aVar.mo32373a(this.f4698b);
            }
        }
    }

    /* renamed from: a */
    public void m34430a(Handler handler, T t) {
        C1160a.m34520a((handler == null || t == null) ? false : true);
        m34428a((C1168e<T>) t);
        this.f4696a.add(new C1170b<>(handler, t));
    }

    /* renamed from: a */
    public void m34429a(AbstractC1169a<T> aVar) {
        Iterator<C1170b<T>> it = this.f4696a.iterator();
        while (it.hasNext()) {
            it.next().m34426a(aVar);
        }
    }

    /* renamed from: a */
    public void m34428a(T t) {
        Iterator<C1170b<T>> it = this.f4696a.iterator();
        while (it.hasNext()) {
            C1170b<T> next = it.next();
            if (next.f4698b == t) {
                next.m34427a();
                this.f4696a.remove(next);
            }
        }
    }
}
