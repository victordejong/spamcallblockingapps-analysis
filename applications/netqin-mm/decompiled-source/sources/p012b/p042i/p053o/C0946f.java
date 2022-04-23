package p012b.p042i.p053o;
/* renamed from: b.i.o.f */
/* loaded from: classes-dex2jar.jar:b/i/o/f.class */
public class C0946f<T> implements AbstractC0945e<T> {

    /* renamed from: a */
    public final Object[] f4193a;

    /* renamed from: b */
    public int f4194b;

    public C0946f(int i) {
        if (i > 0) {
            this.f4193a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    @Override // p012b.p042i.p053o.AbstractC0945e
    /* renamed from: a */
    public boolean mo35445a(T t) {
        if (!m35446b(t)) {
            int i = this.f4194b;
            Object[] objArr = this.f4193a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f4194b = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }

    @Override // p012b.p042i.p053o.AbstractC0945e
    /* renamed from: b */
    public T mo35444b() {
        int i = this.f4194b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f4193a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f4194b = i - 1;
        return t;
    }

    /* renamed from: b */
    public final boolean m35446b(T t) {
        for (int i = 0; i < this.f4194b; i++) {
            if (this.f4193a[i] == t) {
                return true;
            }
        }
        return false;
    }
}
