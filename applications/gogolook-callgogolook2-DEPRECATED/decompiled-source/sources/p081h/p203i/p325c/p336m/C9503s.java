package p081h.p203i.p325c.p336m;

import p081h.p203i.p325c.p366u.AbstractC9929a;
/* renamed from: h.i.c.m.s */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/s.class */
public class C9503s<T> implements AbstractC9929a<T> {

    /* renamed from: c */
    public static final Object f21652c = new Object();

    /* renamed from: a */
    public volatile Object f21653a = f21652c;

    /* renamed from: b */
    public volatile AbstractC9929a<T> f21654b;

    public C9503s(AbstractC9929a<T> aVar) {
        this.f21654b = aVar;
    }

    @Override // p081h.p203i.p325c.p366u.AbstractC9929a
    public T get() {
        Object obj = this.f21653a;
        T t = (T) obj;
        if (obj == f21652c) {
            synchronized (this) {
                Object obj2 = this.f21653a;
                t = obj2;
                if (obj2 == f21652c) {
                    t = this.f21654b.get();
                    this.f21653a = t;
                    this.f21654b = null;
                }
            }
        }
        return t;
    }
}
