package com.google.protobuf;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
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
    public <T> void m2255b(T t, AbstractC2682z0 z0Var, C2643o oVar) {
        m2252e(t).mo2333e(t, z0Var, oVar);
    }

    /* renamed from: c */
    public AbstractC2572a1<?> m2254c(Class<?> cls, AbstractC2572a1<?> a1Var) {
        C2665x.m2250b(cls, "messageType");
        C2665x.m2250b(a1Var, "schema");
        return this.f11224b.putIfAbsent(cls, a1Var);
    }

    /* renamed from: d */
    public <T> AbstractC2572a1<T> m2253d(Class<T> cls) {
        C2665x.m2250b(cls, "messageType");
        AbstractC2572a1<?> a1Var = this.f11224b.get(cls);
        AbstractC2572a1<T> a1Var2 = (AbstractC2572a1<T>) a1Var;
        if (a1Var == null) {
            a1Var2 = this.f11223a.mo2746a(cls);
            AbstractC2572a1<?> c = m2254c(cls, a1Var2);
            if (c != null) {
                a1Var2 = (AbstractC2572a1<T>) c;
            }
        }
        return a1Var2;
    }

    /* renamed from: e */
    public <T> AbstractC2572a1<T> m2252e(T t) {
        return m2253d(t.getClass());
    }
}
