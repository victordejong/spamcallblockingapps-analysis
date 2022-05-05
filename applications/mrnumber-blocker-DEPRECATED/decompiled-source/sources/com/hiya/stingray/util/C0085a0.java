package com.hiya.stingray.util;

import com.google.common.collect.g0;
import i.c.b0.b.v;
import i.c.b0.k.a;
import i.c.b0.k.b;
import i.c.b0.k.d;
import java.util.Map;
/* renamed from: com.hiya.stingray.util.a0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/a0.class */
public class C0085a0 {

    /* renamed from: c */
    private static final C0086d f187c = new C0086d();

    /* renamed from: b */
    private final d<Object> f189b = b.c().a();

    /* renamed from: a */
    private final Map<Class<?>, d<Object>> f188a = g0.e();

    /* renamed from: com.hiya.stingray.util.a0$d */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/a0$d.class */
    public static class C0086d {
    }

    /* renamed from: b */
    public <T> v<T> m1063b(Class<T> cls) {
        v vVar;
        if (this.f188a.containsKey(cls)) {
            vVar = this.f189b.mergeWith(this.f188a.get(cls));
        } else {
            d<Object> a = a.c().a();
            this.f188a.put(cls, a);
            vVar = this.f189b.mergeWith(a);
        }
        return vVar.filter(new c(this)).filter(new b(this, cls)).map(new a(this));
    }

    /* renamed from: c */
    public void m1062c(Object obj) {
        this.f189b.onNext(obj);
    }

    /* renamed from: d */
    public void m1061d(Object obj) {
        d<Object> dVar;
        if (this.f188a.containsKey(obj.getClass())) {
            dVar = this.f188a.get(obj.getClass());
        } else {
            dVar = a.c().a();
            this.f188a.put(obj.getClass(), dVar);
        }
        dVar.onNext(obj);
    }

    /* renamed from: e */
    public void m1060e(Class<?> cls) {
        d<Object> dVar = this.f188a.get(cls);
        if (dVar != null) {
            dVar.onNext(f187c);
        }
    }
}
