package com.bumptech.glide.p221n;

import com.bumptech.glide.load.AbstractC3990a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.n.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/a.class */
public class C4355a {

    /* renamed from: a */
    private final List<C4356a<?>> f13344a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.n.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/a$a.class */
    public static final class C4356a<T> {

        /* renamed from: a */
        private final Class<T> f13345a;

        /* renamed from: b */
        final AbstractC3990a<T> f13346b;

        C4356a(Class<T> cls, AbstractC3990a<T> abstractC3990a) {
            this.f13345a = cls;
            this.f13346b = abstractC3990a;
        }

        /* renamed from: a */
        boolean m22779a(Class<?> cls) {
            return this.f13345a.isAssignableFrom(cls);
        }
    }

    /* renamed from: a */
    public <T> void m22781a(Class<T> cls, AbstractC3990a<T> abstractC3990a) {
        synchronized (this) {
            this.f13344a.add(new C4356a<>(cls, abstractC3990a));
        }
    }

    /* renamed from: b */
    public <T> AbstractC3990a<T> m22780b(Class<T> cls) {
        C4356a<?> next;
        synchronized (this) {
            Iterator<C4356a<?>> it = this.f13344a.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.m22779a(cls));
            return (AbstractC3990a<T>) next.f13346b;
        }
    }
}
