package p020b.p041h.p049k;
/* renamed from: b.h.k.f */
/* loaded from: classes-dex2jar.jar:b/h/k/f.class */
public class C1595f<T> implements AbstractC1594e<T> {

    /* renamed from: a */
    private final Object[] f6189a;

    /* renamed from: b */
    private int f6190b;

    public C1595f(int i) {
        if (i > 0) {
            this.f6189a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    /* renamed from: c */
    private boolean m29664c(T t) {
        for (int i = 0; i < this.f6190b; i++) {
            if (this.f6189a[i] == t) {
                return true;
            }
        }
        return false;
    }

    @Override // p020b.p041h.p049k.AbstractC1594e
    /* renamed from: a */
    public T mo22686a() {
        int i = this.f6190b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = this.f6189a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f6190b = i - 1;
            return t;
        }
        return null;
    }

    @Override // p020b.p041h.p049k.AbstractC1594e
    /* renamed from: b */
    public boolean mo22685b(T t) {
        if (!m29664c(t)) {
            int i = this.f6190b;
            Object[] objArr = this.f6189a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f6190b = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }
}
