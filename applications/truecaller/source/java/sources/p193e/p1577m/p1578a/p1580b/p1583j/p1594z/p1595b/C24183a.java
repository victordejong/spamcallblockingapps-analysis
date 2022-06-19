package p193e.p1577m.p1578a.p1580b.p1583j.p1594z.p1595b;

import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1594z.AbstractC24182a;
/* renamed from: e.m.a.b.j.z.b.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/z/b/a.class */
public final class C24183a<T> implements Provider<T>, AbstractC24182a<T> {

    /* renamed from: c */
    public static final Object f66929c = new Object();

    /* renamed from: a */
    public volatile Provider<T> f66930a;

    /* renamed from: b */
    public volatile Object f66931b = f66929c;

    public C24183a(Provider<T> provider) {
        this.f66930a = provider;
    }

    /* renamed from: a */
    public static Object m5502a(Object obj, Object obj2) {
        if (!(obj != f66929c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1594z.AbstractC24182a
    public T get() {
        Object obj = this.f66931b;
        Object obj2 = f66929c;
        Object obj3 = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj4 = this.f66931b;
                obj3 = obj4;
                if (obj4 == obj2) {
                    obj3 = this.f66930a.get();
                    m5502a(this.f66931b, obj3);
                    this.f66931b = obj3;
                    this.f66930a = null;
                }
            }
        }
        return (T) obj3;
    }
}
