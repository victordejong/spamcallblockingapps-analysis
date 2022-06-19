package p1727n3.p1807k.p1820h;
/* renamed from: n3.k.h.f */
/* loaded from: classes-dex2jar.jar:n3/k/h/f.class */
public class C26556f<T> implements AbstractC26555e<T> {

    /* renamed from: a */
    public final Object[] f74406a;

    /* renamed from: b */
    public int f74407b;

    public C26556f(int i) {
        if (i > 0) {
            this.f74406a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    @Override // p1727n3.p1807k.p1820h.AbstractC26555e
    /* renamed from: a */
    public T mo1689a() {
        int i = this.f74407b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = this.f74406a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f74407b = i - 1;
            return t;
        }
        return null;
    }

    @Override // p1727n3.p1807k.p1820h.AbstractC26555e
    /* renamed from: b */
    public boolean mo1688b(T t) {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.f74407b;
            if (i2 >= i) {
                z = false;
                break;
            } else if (this.f74406a[i2] == t) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            Object[] objArr = this.f74406a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f74407b = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }
}
