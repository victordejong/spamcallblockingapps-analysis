package p152l0;
/* renamed from: l0.d */
/* loaded from: classes-dex2jar.jar:l0/d.class */
public class C3429d<T> extends C3428c {

    /* renamed from: c */
    public final Object f11489c = new Object();

    public C3429d(int i) {
        super(i);
    }

    @Override // p152l0.C3428c
    /* renamed from: a */
    public T mo2303a() {
        T t;
        synchronized (this.f11489c) {
            t = (T) super.mo2303a();
        }
        return t;
    }

    @Override // p152l0.C3428c
    /* renamed from: b */
    public boolean mo2302b(T t) {
        boolean mo2302b;
        synchronized (this.f11489c) {
            mo2302b = super.mo2302b(t);
        }
        return mo2302b;
    }
}
