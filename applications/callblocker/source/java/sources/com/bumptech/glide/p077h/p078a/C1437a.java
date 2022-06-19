package com.bumptech.glide.p077h.p078a;

import android.util.Log;
import androidx.core.p025g.C0523e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.h.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/a.class */
public final class C1437a {

    /* renamed from: a */
    private static final AbstractC1444d<Object> f4749a = new AbstractC1444d<Object>() { // from class: com.bumptech.glide.h.a.a.1
        @Override // com.bumptech.glide.p077h.p078a.C1437a.AbstractC1444d
        /* renamed from: a */
        public void mo17019a(Object obj) {
        }
    };

    /* renamed from: com.bumptech.glide.h.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/a$a.class */
    public interface AbstractC1441a<T> {
        /* renamed from: b */
        T mo16349b();
    }

    /* renamed from: com.bumptech.glide.h.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/a$b.class */
    public static final class C1442b<T> implements C0523e.AbstractC0524a<T> {

        /* renamed from: a */
        private final AbstractC1441a<T> f4750a;

        /* renamed from: b */
        private final AbstractC1444d<T> f4751b;

        /* renamed from: c */
        private final C0523e.AbstractC0524a<T> f4752c;

        C1442b(C0523e.AbstractC0524a<T> abstractC0524a, AbstractC1441a<T> abstractC1441a, AbstractC1444d<T> abstractC1444d) {
            this.f4752c = abstractC0524a;
            this.f4750a = abstractC1441a;
            this.f4751b = abstractC1444d;
        }

        @Override // androidx.core.p025g.C0523e.AbstractC0524a
        /* renamed from: a */
        public T mo17021a() {
            T mo17021a = this.f4752c.mo17021a();
            T t = mo17021a;
            if (mo17021a == null) {
                T mo16349b = this.f4750a.mo16349b();
                t = mo16349b;
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + mo16349b.getClass());
                    t = mo16349b;
                }
            }
            if (t instanceof AbstractC1443c) {
                ((AbstractC1443c) t).mo16351c_().mo17013a(false);
            }
            return t;
        }

        @Override // androidx.core.p025g.C0523e.AbstractC0524a
        /* renamed from: a */
        public boolean mo17020a(T t) {
            if (t instanceof AbstractC1443c) {
                ((AbstractC1443c) t).mo16351c_().mo17013a(true);
            }
            this.f4751b.mo17019a(t);
            return this.f4752c.mo17020a(t);
        }
    }

    /* renamed from: com.bumptech.glide.h.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/a$c.class */
    public interface AbstractC1443c {
        /* renamed from: c_ */
        AbstractC1446c mo16351c_();
    }

    /* renamed from: com.bumptech.glide.h.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/a$d.class */
    public interface AbstractC1444d<T> {
        /* renamed from: a */
        void mo17019a(T t);
    }

    /* renamed from: a */
    public static <T> C0523e.AbstractC0524a<List<T>> m17030a() {
        return m17029a(20);
    }

    /* renamed from: a */
    public static <T> C0523e.AbstractC0524a<List<T>> m17029a(int i) {
        return m17026a(new C0523e.C0526c(i), new AbstractC1441a<List<T>>() { // from class: com.bumptech.glide.h.a.a.2
            /* renamed from: a */
            public List<T> mo16349b() {
                return new ArrayList();
            }
        }, new AbstractC1444d<List<T>>() { // from class: com.bumptech.glide.h.a.a.3
            /* renamed from: a */
            public void mo17019a(List<T> list) {
                list.clear();
            }
        });
    }

    /* renamed from: a */
    public static <T extends AbstractC1443c> C0523e.AbstractC0524a<T> m17028a(int i, AbstractC1441a<T> abstractC1441a) {
        return m17027a(new C0523e.C0525b(i), abstractC1441a);
    }

    /* renamed from: a */
    private static <T extends AbstractC1443c> C0523e.AbstractC0524a<T> m17027a(C0523e.AbstractC0524a<T> abstractC0524a, AbstractC1441a<T> abstractC1441a) {
        return m17026a(abstractC0524a, abstractC1441a, m17025b());
    }

    /* renamed from: a */
    private static <T> C0523e.AbstractC0524a<T> m17026a(C0523e.AbstractC0524a<T> abstractC0524a, AbstractC1441a<T> abstractC1441a, AbstractC1444d<T> abstractC1444d) {
        return new C1442b(abstractC0524a, abstractC1441a, abstractC1444d);
    }

    /* renamed from: b */
    public static <T extends AbstractC1443c> C0523e.AbstractC0524a<T> m17024b(int i, AbstractC1441a<T> abstractC1441a) {
        return m17027a(new C0523e.C0526c(i), abstractC1441a);
    }

    /* renamed from: b */
    private static <T> AbstractC1444d<T> m17025b() {
        return (AbstractC1444d<T>) f4749a;
    }
}
