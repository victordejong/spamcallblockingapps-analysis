package com.bumptech.glide.p028m;

import com.bumptech.glide.load.AbstractC0728a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.m.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/a.class */
public class C0826a {

    /* renamed from: a */
    private final List<C0827a<?>> f3771a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.m.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/a$a.class */
    public static final class C0827a<T> {

        /* renamed from: a */
        private final Class<T> f3772a;

        /* renamed from: b */
        final AbstractC0728a<T> f3773b;

        C0827a(Class<T> cls, AbstractC0728a<T> abstractC0728a) {
            this.f3772a = cls;
            this.f3773b = abstractC0728a;
        }

        /* renamed from: a */
        boolean m10849a(Class<?> cls) {
            return this.f3772a.isAssignableFrom(cls);
        }
    }

    /* renamed from: a */
    public <T> void m10851a(Class<T> cls, AbstractC0728a<T> abstractC0728a) {
        synchronized (this) {
            this.f3771a.add(new C0827a<>(cls, abstractC0728a));
        }
    }

    /* renamed from: b */
    public <T> AbstractC0728a<T> m10850b(Class<T> cls) {
        C0827a<?> next;
        synchronized (this) {
            Iterator<C0827a<?>> it = this.f3771a.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.m10849a(cls));
            return (AbstractC0728a<T>) next.f3773b;
        }
    }
}
