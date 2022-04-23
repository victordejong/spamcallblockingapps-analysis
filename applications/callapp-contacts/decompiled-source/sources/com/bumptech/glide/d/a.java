package com.bumptech.glide.d;

import com.bumptech.glide.load.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<C0138a<?>> f7244a = new ArrayList();

    /* renamed from: com.bumptech.glide.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/a$a.class */
    static final class C0138a<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<T> f7245a;

        /* renamed from: b  reason: collision with root package name */
        final d<T> f7246b;

        C0138a(Class<T> cls, d<T> dVar) {
            this.f7245a = cls;
            this.f7246b = dVar;
        }
    }

    public final <T> d<T> a(Class<T> cls) {
        C0138a<?> next;
        synchronized (this) {
            Iterator<C0138a<?>> it2 = this.f7244a.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!next.f7245a.isAssignableFrom(cls));
            return (d<T>) next.f7246b;
        }
    }

    public final <T> void a(Class<T> cls, d<T> dVar) {
        synchronized (this) {
            this.f7244a.add(new C0138a<>(cls, dVar));
        }
    }
}
