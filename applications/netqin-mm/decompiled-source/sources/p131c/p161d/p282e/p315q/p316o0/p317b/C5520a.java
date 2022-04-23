package p131c.p161d.p282e.p315q.p316o0.p317b;

import p131c.p161d.p282e.p315q.p316o0.AbstractC5519a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.o0.b.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/o0/b/a.class */
public final class C5520a<T> implements AbstractC9866a<T>, AbstractC5519a<T> {

    /* renamed from: c */
    public static final Object f18466c = new Object();

    /* renamed from: a */
    public volatile AbstractC9866a<T> f18467a;

    /* renamed from: b */
    public volatile Object f18468b = f18466c;

    public C5520a(AbstractC9866a<T> aVar) {
        this.f18467a = aVar;
    }

    /* renamed from: a */
    public static <P extends AbstractC9866a<T>, T> AbstractC5519a<T> m23639a(P p) {
        if (p instanceof AbstractC5519a) {
            return (AbstractC5519a) p;
        }
        C5523d.m23635a(p);
        return new C5520a(p);
    }

    /* renamed from: a */
    public static Object m23638a(Object obj, Object obj2) {
        if (!(obj != f18466c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    /* renamed from: b */
    public static <P extends AbstractC9866a<T>, T> AbstractC9866a<T> m23637b(P p) {
        C5523d.m23635a(p);
        return p instanceof C5520a ? p : new C5520a(p);
    }

    @Override // p571e.p572a.AbstractC9866a
    public T get() {
        Object obj = this.f18468b;
        T t = (T) obj;
        if (obj == f18466c) {
            synchronized (this) {
                Object obj2 = this.f18468b;
                t = obj2;
                if (obj2 == f18466c) {
                    t = this.f18467a.get();
                    m23638a(this.f18468b, t);
                    this.f18468b = t;
                    this.f18467a = null;
                }
            }
        }
        return t;
    }
}
