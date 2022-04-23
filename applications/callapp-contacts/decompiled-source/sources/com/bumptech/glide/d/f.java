package com.bumptech.glide.d;

import com.bumptech.glide.load.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?>> f7258a = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/f$a.class */
    static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<T> f7259a;

        /* renamed from: b  reason: collision with root package name */
        final k<T> f7260b;

        a(Class<T> cls, k<T> kVar) {
            this.f7259a = cls;
            this.f7260b = kVar;
        }
    }

    public final <Z> k<Z> a(Class<Z> cls) {
        synchronized (this) {
            int size = this.f7258a.size();
            for (int i = 0; i < size; i++) {
                a<?> aVar = this.f7258a.get(i);
                if (aVar.f7259a.isAssignableFrom(cls)) {
                    return (k<Z>) aVar.f7260b;
                }
            }
            return null;
        }
    }

    public final <Z> void a(Class<Z> cls, k<Z> kVar) {
        synchronized (this) {
            this.f7258a.add(new a<>(cls, kVar));
        }
    }
}
