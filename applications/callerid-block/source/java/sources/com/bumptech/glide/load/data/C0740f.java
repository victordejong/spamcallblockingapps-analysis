package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.AbstractC0738e;
import com.bumptech.glide.p029o.C0856j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.data.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f.class */
public class C0740f {

    /* renamed from: b */
    private static final AbstractC0738e.AbstractC0739a<?> f3516b = new a();

    /* renamed from: a */
    private final Map<Class<?>, AbstractC0738e.AbstractC0739a<?>> f3517a = new HashMap();

    /* renamed from: a */
    public <T> AbstractC0738e<T> m11179a(T t) {
        AbstractC0738e<T> abstractC0738e;
        synchronized (this) {
            C0856j.m10759d(t);
            AbstractC0738e.AbstractC0739a<?> abstractC0739a = this.f3517a.get(t.getClass());
            AbstractC0738e.AbstractC0739a<?> abstractC0739a2 = abstractC0739a;
            if (abstractC0739a == null) {
                Iterator<AbstractC0738e.AbstractC0739a<?>> it = this.f3517a.values().iterator();
                do {
                    abstractC0739a2 = abstractC0739a;
                    if (!it.hasNext()) {
                        break;
                    }
                    abstractC0739a2 = it.next();
                } while (!abstractC0739a2.m11181a().isAssignableFrom(t.getClass()));
            }
            AbstractC0738e.AbstractC0739a<?> abstractC0739a3 = abstractC0739a2;
            if (abstractC0739a2 == null) {
                abstractC0739a3 = f3516b;
            }
            abstractC0738e = (AbstractC0738e<T>) abstractC0739a3.m11180b(t);
        }
        return abstractC0738e;
    }

    /* renamed from: b */
    public void m11178b(AbstractC0738e.AbstractC0739a<?> abstractC0739a) {
        synchronized (this) {
            this.f3517a.put(abstractC0739a.m11181a(), abstractC0739a);
        }
    }
}
