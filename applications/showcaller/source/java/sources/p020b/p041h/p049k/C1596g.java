package p020b.p041h.p049k;
/* renamed from: b.h.k.g */
/* loaded from: classes-dex2jar.jar:b/h/k/g.class */
public class C1596g<T> extends C1595f<T> {

    /* renamed from: c */
    private final Object f6191c = new Object();

    public C1596g(int i) {
        super(i);
    }

    @Override // p020b.p041h.p049k.C1595f, p020b.p041h.p049k.AbstractC1594e
    /* renamed from: a */
    public T mo22686a() {
        T t;
        synchronized (this.f6191c) {
            t = (T) super.mo22686a();
        }
        return t;
    }

    @Override // p020b.p041h.p049k.C1595f, p020b.p041h.p049k.AbstractC1594e
    /* renamed from: b */
    public boolean mo22685b(T t) {
        boolean mo22685b;
        synchronized (this.f6191c) {
            mo22685b = super.mo22685b(t);
        }
        return mo22685b;
    }
}
