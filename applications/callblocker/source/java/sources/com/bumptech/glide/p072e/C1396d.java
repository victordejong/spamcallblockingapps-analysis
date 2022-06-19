package com.bumptech.glide.p072e;

import androidx.p013b.C0373a;
import com.bumptech.glide.p077h.C1455h;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.e.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/d.class */
public class C1396d {

    /* renamed from: a */
    private final AtomicReference<C1455h> f4613a = new AtomicReference<>();

    /* renamed from: b */
    private final C0373a<C1455h, List<Class<?>>> f4614b = new C0373a<>();

    /* renamed from: a */
    public List<Class<?>> m17211a(Class<?> cls, Class<?> cls2) {
        C1455h c1455h;
        List<Class<?>> list;
        C1455h andSet = this.f4613a.getAndSet(null);
        if (andSet == null) {
            c1455h = new C1455h(cls, cls2);
        } else {
            andSet.m16991a(cls, cls2);
            c1455h = andSet;
        }
        synchronized (this.f4614b) {
            list = this.f4614b.get(c1455h);
        }
        this.f4613a.set(c1455h);
        return list;
    }

    /* renamed from: a */
    public void m17210a(Class<?> cls, Class<?> cls2, List<Class<?>> list) {
        synchronized (this.f4614b) {
            this.f4614b.put(new C1455h(cls, cls2), list);
        }
    }
}
