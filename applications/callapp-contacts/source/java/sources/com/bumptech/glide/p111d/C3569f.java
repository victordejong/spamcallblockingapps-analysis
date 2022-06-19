package com.bumptech.glide.p111d;

import com.bumptech.glide.load.AbstractC3825k;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.d.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/f.class */
public final class C3569f {

    /* renamed from: a */
    private final List<C3570a<?>> f13577a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.d.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/f$a.class */
    public static final class C3570a<T> {

        /* renamed from: a */
        final Class<T> f13578a;

        /* renamed from: b */
        final AbstractC3825k<T> f13579b;

        C3570a(Class<T> cls, AbstractC3825k<T> abstractC3825k) {
            this.f13578a = cls;
            this.f13579b = abstractC3825k;
        }
    }

    /* renamed from: a */
    public final <Z> AbstractC3825k<Z> m37699a(Class<Z> cls) {
        synchronized (this) {
            int size = this.f13577a.size();
            for (int i = 0; i < size; i++) {
                C3570a<?> c3570a = this.f13577a.get(i);
                if (c3570a.f13578a.isAssignableFrom(cls)) {
                    return (AbstractC3825k<Z>) c3570a.f13579b;
                }
            }
            return null;
        }
    }

    /* renamed from: a */
    public final <Z> void m37698a(Class<Z> cls, AbstractC3825k<Z> abstractC3825k) {
        synchronized (this) {
            this.f13577a.add(new C3570a<>(cls, abstractC3825k));
        }
    }
}
