package p131c.p161d.p282e.p315q.p318p0.p319i.p320a;

import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.i.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/i/a/b.class */
public final class C5543b<T> implements AbstractC9866a<T> {

    /* renamed from: c */
    public static final Object f18515c = new Object();

    /* renamed from: a */
    public volatile AbstractC9866a<T> f18516a;

    /* renamed from: b */
    public volatile Object f18517b = f18515c;

    public C5543b(AbstractC9866a<T> aVar) {
        this.f18516a = aVar;
    }

    /* renamed from: a */
    public static <P extends AbstractC9866a<T>, T> AbstractC9866a<T> m23592a(P p) {
        C5546e.m23587a(p);
        return p instanceof C5543b ? p : new C5543b(p);
    }

    /* renamed from: a */
    public static Object m23591a(Object obj, Object obj2) {
        if (!(obj != f18515c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // p571e.p572a.AbstractC9866a
    public T get() {
        Object obj = this.f18517b;
        T t = (T) obj;
        if (obj == f18515c) {
            synchronized (this) {
                Object obj2 = this.f18517b;
                t = obj2;
                if (obj2 == f18515c) {
                    t = this.f18516a.get();
                    m23591a(this.f18517b, t);
                    this.f18517b = t;
                    this.f18516a = null;
                }
            }
        }
        return t;
    }
}
