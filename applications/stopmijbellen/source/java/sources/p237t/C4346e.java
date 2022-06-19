package p237t;
/* renamed from: t.e */
/* loaded from: classes-dex2jar.jar:t/e.class */
public class C4346e<T> {

    /* renamed from: a */
    public final Object[] f13560a;

    /* renamed from: b */
    public int f13561b;

    public C4346e(int i) {
        if (i > 0) {
            this.f13560a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    /* renamed from: a */
    public T m1030a() {
        int i = this.f13561b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = this.f13560a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f13561b = i - 1;
            return t;
        }
        return null;
    }

    /* renamed from: b */
    public boolean m1029b(T t) {
        int i = this.f13561b;
        Object[] objArr = this.f13560a;
        if (i < objArr.length) {
            objArr[i] = t;
            this.f13561b = i + 1;
            return true;
        }
        return false;
    }
}
