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
        AbstractC0738e<T> eVar;
        synchronized (this) {
            C0856j.m10759d(t);
            AbstractC0738e.AbstractC0739a<?> aVar = this.f3517a.get(t.getClass());
            AbstractC0738e.AbstractC0739a<?> aVar2 = aVar;
            if (aVar == null) {
                Iterator<AbstractC0738e.AbstractC0739a<?>> it = this.f3517a.values().iterator();
                do {
                    aVar2 = aVar;
                    if (!it.hasNext()) {
                        break;
                    }
                    aVar2 = it.next();
                } while (!aVar2.m11181a().isAssignableFrom(t.getClass()));
            }
            AbstractC0738e.AbstractC0739a<?> aVar3 = aVar2;
            if (aVar2 == null) {
                aVar3 = f3516b;
            }
            eVar = (AbstractC0738e<T>) aVar3.m11180b(t);
        }
        return eVar;
    }

    /* renamed from: b */
    public void m11178b(AbstractC0738e.AbstractC0739a<?> aVar) {
        synchronized (this) {
            this.f3517a.put(aVar.m11181a(), aVar);
        }
    }
}
