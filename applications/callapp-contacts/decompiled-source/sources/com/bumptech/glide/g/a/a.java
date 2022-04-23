package com.bumptech.glide.g.a;

import android.util.Log;
import androidx.core.e.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final d<Object> f7336a = new d<Object>() { // from class: com.bumptech.glide.g.a.a.1
        @Override // com.bumptech.glide.g.a.a.d
        public final void a(Object obj) {
        }
    };

    /* renamed from: com.bumptech.glide.g.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$a.class */
    public interface AbstractC0143a<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$b.class */
    public static final class b<T> implements c.a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AbstractC0143a<T> f7337a;

        /* renamed from: b  reason: collision with root package name */
        private final d<T> f7338b;

        /* renamed from: c  reason: collision with root package name */
        private final c.a<T> f7339c;

        b(c.a<T> aVar, AbstractC0143a<T> aVar2, d<T> dVar) {
            this.f7339c = aVar;
            this.f7337a = aVar2;
            this.f7338b = dVar;
        }

        @Override // androidx.core.e.c.a
        public final T a() {
            T a2 = this.f7339c.a();
            T t = a2;
            if (a2 == null) {
                T a3 = this.f7337a.a();
                t = a3;
                if (Log.isLoggable("FactoryPools", 2)) {
                    new StringBuilder("Created new ").append(a3.getClass());
                    t = a3;
                }
            }
            if (t instanceof c) {
                ((c) t).m_().a(false);
            }
            return t;
        }

        @Override // androidx.core.e.c.a
        public final boolean a(T t) {
            if (t instanceof c) {
                ((c) t).m_().a(true);
            }
            this.f7338b.a(t);
            return this.f7339c.a(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$c.class */
    public interface c {
        com.bumptech.glide.g.a.b m_();
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$d.class */
    public interface d<T> {
        void a(T t);
    }

    private a() {
    }

    public static <T> c.a<List<T>> a() {
        return a(new c.C0049c(20), new AbstractC0143a<List<T>>() { // from class: com.bumptech.glide.g.a.a.2
            @Override // com.bumptech.glide.g.a.a.AbstractC0143a
            public final /* synthetic */ Object a() {
                return new ArrayList();
            }
        }, new d<List<T>>() { // from class: com.bumptech.glide.g.a.a.3
            @Override // com.bumptech.glide.g.a.a.d
            public final /* synthetic */ void a(Object obj) {
                ((List) obj).clear();
            }
        });
    }

    public static <T extends c> c.a<T> a(int i, AbstractC0143a<T> aVar) {
        return a(new c.C0049c(i), aVar, f7336a);
    }

    private static <T> c.a<T> a(c.a<T> aVar, AbstractC0143a<T> aVar2, d<T> dVar) {
        return new b(aVar, aVar2, dVar);
    }
}
