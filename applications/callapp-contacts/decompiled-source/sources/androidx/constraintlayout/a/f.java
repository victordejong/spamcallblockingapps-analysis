package androidx.constraintlayout.a;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/f.class */
final class f {

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/f$a.class */
    interface a<T> {
        T a();

        void a(T[] tArr, int i);

        boolean a(T t);
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/f$b.class */
    static final class b<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f1410a;

        /* renamed from: b  reason: collision with root package name */
        private int f1411b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i) {
            if (i > 0) {
                this.f1410a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.constraintlayout.a.f.a
        public final T a() {
            int i = this.f1411b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f1410a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f1411b = i - 1;
            return t;
        }

        @Override // androidx.constraintlayout.a.f.a
        public final void a(T[] tArr, int i) {
            int i2 = i;
            if (i > tArr.length) {
                i2 = tArr.length;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                T t = tArr[i3];
                int i4 = this.f1411b;
                Object[] objArr = this.f1410a;
                if (i4 < objArr.length) {
                    objArr[i4] = t;
                    this.f1411b = i4 + 1;
                }
            }
        }

        @Override // androidx.constraintlayout.a.f.a
        public final boolean a(T t) {
            int i = this.f1411b;
            Object[] objArr = this.f1410a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f1411b = i + 1;
            return true;
        }
    }

    private f() {
    }
}
