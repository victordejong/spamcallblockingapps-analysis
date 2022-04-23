package com.bumptech.glide.p028m;

import com.bumptech.glide.p029o.C0855i;
import d.e.a;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.m.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/d.class */
public class C0830d {

    /* renamed from: a */
    private final AtomicReference<C0855i> f3778a = new AtomicReference<>();

    /* renamed from: b */
    private final a<C0855i, List<Class<?>>> f3779b = new a<>();

    /* renamed from: a */
    public List<Class<?>> m10842a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C0855i iVar;
        List<Class<?>> list;
        C0855i andSet = this.f3778a.getAndSet(null);
        if (andSet == null) {
            iVar = new C0855i(cls, cls2, cls3);
        } else {
            andSet.m10763a(cls, cls2, cls3);
            iVar = andSet;
        }
        synchronized (this.f3779b) {
            list = (List) this.f3779b.get(iVar);
        }
        this.f3778a.set(iVar);
        return list;
    }

    /* renamed from: b */
    public void m10841b(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.f3779b) {
            this.f3779b.put(new C0855i(cls, cls2, cls3), list);
        }
    }
}
