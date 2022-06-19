package com.bumptech.glide.p116g.p117a;

import android.util.Log;
import androidx.core.p036e.C0829c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.g.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a.class */
public final class C3621a {

    /* renamed from: a */
    private static final AbstractC3628d<Object> f13735a = new AbstractC3628d<Object>() { // from class: com.bumptech.glide.g.a.a.1
        @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3628d
        /* renamed from: a */
        public final void mo37605a(Object obj) {
        }
    };

    /* renamed from: com.bumptech.glide.g.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$a.class */
    public interface AbstractC3625a<T> {
        /* renamed from: a */
        T mo37334a();
    }

    /* renamed from: com.bumptech.glide.g.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$b.class */
    public static final class C3626b<T> implements C0829c.AbstractC0830a<T> {

        /* renamed from: a */
        private final AbstractC3625a<T> f13736a;

        /* renamed from: b */
        private final AbstractC3628d<T> f13737b;

        /* renamed from: c */
        private final C0829c.AbstractC0830a<T> f13738c;

        C3626b(C0829c.AbstractC0830a<T> abstractC0830a, AbstractC3625a<T> abstractC3625a, AbstractC3628d<T> abstractC3628d) {
            this.f13738c = abstractC0830a;
            this.f13736a = abstractC3625a;
            this.f13737b = abstractC3628d;
        }

        @Override // androidx.core.p036e.C0829c.AbstractC0830a
        /* renamed from: a */
        public final T mo37607a() {
            T mo37607a = this.f13738c.mo37607a();
            T t = mo37607a;
            if (mo37607a == null) {
                T mo37334a = this.f13736a.mo37334a();
                t = mo37334a;
                if (Log.isLoggable("FactoryPools", 2)) {
                    new StringBuilder("Created new ").append(mo37334a.getClass());
                    t = mo37334a;
                }
            }
            if (t instanceof AbstractC3627c) {
                ((AbstractC3627c) t).mo37335m_().mo37603a(false);
            }
            return t;
        }

        @Override // androidx.core.p036e.C0829c.AbstractC0830a
        /* renamed from: a */
        public final boolean mo37606a(T t) {
            if (t instanceof AbstractC3627c) {
                ((AbstractC3627c) t).mo37335m_().mo37603a(true);
            }
            this.f13737b.mo37605a(t);
            return this.f13738c.mo37606a(t);
        }
    }

    /* renamed from: com.bumptech.glide.g.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$c.class */
    public interface AbstractC3627c {
        /* renamed from: m_ */
        AbstractC3629b mo37335m_();
    }

    /* renamed from: com.bumptech.glide.g.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$d.class */
    public interface AbstractC3628d<T> {
        /* renamed from: a */
        void mo37605a(T t);
    }

    private C3621a() {
    }

    /* renamed from: a */
    public static <T> C0829c.AbstractC0830a<List<T>> m37610a() {
        return m37608a(new C0829c.C0832c(20), new AbstractC3625a<List<T>>() { // from class: com.bumptech.glide.g.a.a.2
            @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3625a
            /* renamed from: a */
            public final /* synthetic */ Object mo37334a() {
                return new ArrayList();
            }
        }, new AbstractC3628d<List<T>>() { // from class: com.bumptech.glide.g.a.a.3
            @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3628d
            /* renamed from: a */
            public final /* synthetic */ void mo37605a(Object obj) {
                ((List) obj).clear();
            }
        });
    }

    /* renamed from: a */
    public static <T extends AbstractC3627c> C0829c.AbstractC0830a<T> m37609a(int i, AbstractC3625a<T> abstractC3625a) {
        return m37608a(new C0829c.C0832c(i), abstractC3625a, f13735a);
    }

    /* renamed from: a */
    private static <T> C0829c.AbstractC0830a<T> m37608a(C0829c.AbstractC0830a<T> abstractC0830a, AbstractC3625a<T> abstractC3625a, AbstractC3628d<T> abstractC3628d) {
        return new C3626b(abstractC0830a, abstractC3625a, abstractC3628d);
    }
}
