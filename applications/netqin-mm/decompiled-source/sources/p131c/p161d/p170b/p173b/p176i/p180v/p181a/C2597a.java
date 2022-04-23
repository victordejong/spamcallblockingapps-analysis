package p131c.p161d.p170b.p173b.p176i.p180v.p181a;

import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.v.a.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/v/a/a.class */
public final class C2597a<T> implements AbstractC9866a<T> {

    /* renamed from: c */
    public static final Object f9662c = new Object();

    /* renamed from: a */
    public volatile AbstractC9866a<T> f9663a;

    /* renamed from: b */
    public volatile Object f9664b = f9662c;

    public C2597a(AbstractC9866a<T> aVar) {
        this.f9663a = aVar;
    }

    /* renamed from: a */
    public static <P extends AbstractC9866a<T>, T> AbstractC9866a<T> m29456a(P p) {
        C2600d.m29453a(p);
        return p instanceof C2597a ? p : new C2597a(p);
    }

    /* renamed from: a */
    public static Object m29455a(Object obj, Object obj2) {
        if (!(obj != f9662c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // p571e.p572a.AbstractC9866a
    public T get() {
        Object obj = this.f9664b;
        T t = (T) obj;
        if (obj == f9662c) {
            synchronized (this) {
                Object obj2 = this.f9664b;
                t = obj2;
                if (obj2 == f9662c) {
                    t = this.f9663a.get();
                    m29455a(this.f9664b, t);
                    this.f9664b = t;
                    this.f9663a = null;
                }
            }
        }
        return t;
    }
}
