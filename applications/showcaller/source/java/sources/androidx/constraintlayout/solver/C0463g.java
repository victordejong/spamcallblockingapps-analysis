package androidx.constraintlayout.solver;
/* renamed from: androidx.constraintlayout.solver.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/g.class */
class C0463g<T> implements AbstractC0462f<T> {

    /* renamed from: a */
    private final Object[] f2041a;

    /* renamed from: b */
    private int f2042b;

    public C0463g(int i) {
        if (i > 0) {
            this.f2041a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    @Override // androidx.constraintlayout.solver.AbstractC0462f
    /* renamed from: a */
    public T mo34107a() {
        int i = this.f2042b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = this.f2041a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f2042b = i - 1;
            return t;
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.AbstractC0462f
    /* renamed from: b */
    public boolean mo34106b(T t) {
        int i = this.f2042b;
        Object[] objArr = this.f2041a;
        if (i < objArr.length) {
            objArr[i] = t;
            this.f2042b = i + 1;
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.solver.AbstractC0462f
    /* renamed from: c */
    public void mo34105c(T[] tArr, int i) {
        int i2 = i;
        if (i > tArr.length) {
            i2 = tArr.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            T t = tArr[i3];
            int i4 = this.f2042b;
            Object[] objArr = this.f2041a;
            if (i4 < objArr.length) {
                objArr[i4] = t;
                this.f2042b = i4 + 1;
            }
        }
    }
}
