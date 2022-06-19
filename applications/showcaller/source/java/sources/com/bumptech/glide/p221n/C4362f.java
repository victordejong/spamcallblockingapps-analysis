package com.bumptech.glide.p221n;

import com.bumptech.glide.load.AbstractC4147g;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.n.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/f.class */
public class C4362f {

    /* renamed from: a */
    private final List<C4363a<?>> f13358a = new ArrayList();

    /* renamed from: com.bumptech.glide.n.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/f$a.class */
    public static final class C4363a<T> {

        /* renamed from: a */
        private final Class<T> f13359a;

        /* renamed from: b */
        final AbstractC4147g<T> f13360b;

        C4363a(Class<T> cls, AbstractC4147g<T> abstractC4147g) {
            this.f13359a = cls;
            this.f13360b = abstractC4147g;
        }

        /* renamed from: a */
        boolean m22761a(Class<?> cls) {
            return this.f13359a.isAssignableFrom(cls);
        }
    }

    /* renamed from: a */
    public <Z> void m22763a(Class<Z> cls, AbstractC4147g<Z> abstractC4147g) {
        synchronized (this) {
            this.f13358a.add(new C4363a<>(cls, abstractC4147g));
        }
    }

    /* renamed from: b */
    public <Z> AbstractC4147g<Z> m22762b(Class<Z> cls) {
        synchronized (this) {
            int size = this.f13358a.size();
            for (int i = 0; i < size; i++) {
                C4363a<?> c4363a = this.f13358a.get(i);
                if (c4363a.m22761a(cls)) {
                    return (AbstractC4147g<Z>) c4363a.f13360b;
                }
            }
            return null;
        }
    }
}
