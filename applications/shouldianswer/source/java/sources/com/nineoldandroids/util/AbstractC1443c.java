package com.nineoldandroids.util;
/* renamed from: com.nineoldandroids.util.c */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/util/c.class */
public abstract class AbstractC1443c<T, V> {

    /* renamed from: a */
    private final String f3991a;

    /* renamed from: b */
    private final Class<V> f3992b;

    public AbstractC1443c(Class<V> cls, String str) {
        this.f3991a = str;
        this.f3992b = cls;
    }

    /* renamed from: a */
    public abstract V mo3603a(T t);

    /* renamed from: a */
    public String m3604a() {
        return this.f3991a;
    }

    /* renamed from: a */
    public void mo3602a(T t, V v) {
        throw new UnsupportedOperationException("Property " + m3604a() + " is read-only");
    }
}
