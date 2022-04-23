package com.bumptech.glide.p028m;

import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.m.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/f.class */
public class C0833f {

    /* renamed from: a */
    private final List<C0834a<?>> f3785a = new ArrayList();

    /* renamed from: com.bumptech.glide.m.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/f$a.class */
    private static final class C0834a<T> {

        /* renamed from: a */
        private final Class<T> f3786a;

        /* renamed from: b */
        final g<T> f3787b;

        C0834a(Class<T> cls, g<T> gVar) {
            this.f3786a = cls;
            this.f3787b = gVar;
        }

        /* renamed from: a */
        boolean m10832a(Class<?> cls) {
            return this.f3786a.isAssignableFrom(cls);
        }
    }

    /* renamed from: a */
    public <Z> void m10834a(Class<Z> cls, g<Z> gVar) {
        synchronized (this) {
            this.f3785a.add(new C0834a<>(cls, gVar));
        }
    }

    /* renamed from: b */
    public <Z> g<Z> m10833b(Class<Z> cls) {
        synchronized (this) {
            int size = this.f3785a.size();
            for (int i = 0; i < size; i++) {
                C0834a<?> aVar = this.f3785a.get(i);
                if (aVar.m10832a(cls)) {
                    return (g<Z>) aVar.f3787b;
                }
            }
            return null;
        }
    }
}
