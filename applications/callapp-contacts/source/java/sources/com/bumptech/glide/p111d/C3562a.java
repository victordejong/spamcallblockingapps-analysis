package com.bumptech.glide.p111d;

import com.bumptech.glide.load.AbstractC3661d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.d.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/a.class */
public final class C3562a {

    /* renamed from: a */
    private final List<C3563a<?>> f13563a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.d.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/a$a.class */
    public static final class C3563a<T> {

        /* renamed from: a */
        final Class<T> f13564a;

        /* renamed from: b */
        final AbstractC3661d<T> f13565b;

        C3563a(Class<T> cls, AbstractC3661d<T> abstractC3661d) {
            this.f13564a = cls;
            this.f13565b = abstractC3661d;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC3661d<T> m37712a(Class<T> cls) {
        C3563a<?> next;
        synchronized (this) {
            Iterator<C3563a<?>> it2 = this.f13563a.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!next.f13564a.isAssignableFrom(cls));
            return (AbstractC3661d<T>) next.f13565b;
        }
    }

    /* renamed from: a */
    public final <T> void m37711a(Class<T> cls, AbstractC3661d<T> abstractC3661d) {
        synchronized (this) {
            this.f13563a.add(new C3563a<>(cls, abstractC3661d));
        }
    }
}
