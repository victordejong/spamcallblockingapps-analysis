package p1727n3.p1795i.p1799b;
/* renamed from: n3.i.b.e */
/* loaded from: classes-dex2jar.jar:n3/i/b/e.class */
public class C26357e<T> {

    /* renamed from: a */
    public final Object[] f73597a;

    /* renamed from: b */
    public int f73598b;

    public C26357e(int i) {
        if (i > 0) {
            this.f73597a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    /* renamed from: a */
    public T m2114a() {
        int i = this.f73598b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = this.f73597a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f73598b = i - 1;
            return t;
        }
        return null;
    }

    /* renamed from: b */
    public boolean m2113b(T t) {
        int i = this.f73598b;
        Object[] objArr = this.f73597a;
        if (i < objArr.length) {
            objArr[i] = t;
            this.f73598b = i + 1;
            return true;
        }
        return false;
    }
}
