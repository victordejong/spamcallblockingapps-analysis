package com.google.protobuf;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.protobuf.w0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/w0.class */
public final class C2664w0 {

    /* renamed from: c */
    private static final C2664w0 f11222c = new C2664w0();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, AbstractC2572a1<?>> f11224b = new ConcurrentHashMap();

    /* renamed from: a */
    private final AbstractC2575b1 f11223a = new C2600f0();

    private C2664w0() {
    }

    /* renamed from: a */
    public static C2664w0 m2256a() {
        return f11222c;
    }

    /* renamed from: b */
    public <T> void m2255b(T t, AbstractC2682z0 abstractC2682z0, C2643o c2643o) {
        m2252e(t).mo2333e(t, abstractC2682z0, c2643o);
    }

    /* renamed from: c */
    public AbstractC2572a1<?> m2254c(Class<?> cls, AbstractC2572a1<?> abstractC2572a1) {
        C2665x.m2250b(cls, "messageType");
        C2665x.m2250b(abstractC2572a1, "schema");
        return this.f11224b.putIfAbsent(cls, abstractC2572a1);
    }

    /* renamed from: d */
    public <T> AbstractC2572a1<T> m2253d(Class<T> cls) {
        C2665x.m2250b(cls, "messageType");
        AbstractC2572a1<?> abstractC2572a1 = this.f11224b.get(cls);
        AbstractC2572a1<T> abstractC2572a12 = abstractC2572a1;
        if (abstractC2572a1 == null) {
            abstractC2572a12 = this.f11223a.mo2746a(cls);
            AbstractC2572a1<?> m2254c = m2254c(cls, abstractC2572a12);
            if (m2254c != null) {
                abstractC2572a12 = m2254c;
            }
        }
        return (AbstractC2572a1<T>) abstractC2572a12;
    }

    /* renamed from: e */
    public <T> AbstractC2572a1<T> m2252e(T t) {
        return m2253d(t.getClass());
    }
}
