package androidx.constraintlayout.p026a;
/* renamed from: androidx.constraintlayout.a.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/f.class */
final class C0561f {

    /* renamed from: androidx.constraintlayout.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/f$a.class */
    interface AbstractC0562a<T> {
        /* renamed from: a */
        T mo45122a();

        /* renamed from: a */
        void mo45120a(T[] tArr, int i);

        /* renamed from: a */
        boolean mo45121a(T t);
    }

    /* renamed from: androidx.constraintlayout.a.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/f$b.class */
    static final class C0563b<T> implements AbstractC0562a<T> {

        /* renamed from: a */
        private final Object[] f2302a;

        /* renamed from: b */
        private int f2303b;

        public C0563b(int i) {
            if (i > 0) {
                this.f2302a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.constraintlayout.p026a.C0561f.AbstractC0562a
        /* renamed from: a */
        public final T mo45122a() {
            int i = this.f2303b;
            if (i > 0) {
                int i2 = i - 1;
                Object[] objArr = this.f2302a;
                T t = (T) objArr[i2];
                objArr[i2] = null;
                this.f2303b = i - 1;
                return t;
            }
            return null;
        }

        @Override // androidx.constraintlayout.p026a.C0561f.AbstractC0562a
        /* renamed from: a */
        public final void mo45120a(T[] tArr, int i) {
            int i2 = i;
            if (i > tArr.length) {
                i2 = tArr.length;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                T t = tArr[i3];
                int i4 = this.f2303b;
                Object[] objArr = this.f2302a;
                if (i4 < objArr.length) {
                    objArr[i4] = t;
                    this.f2303b = i4 + 1;
                }
            }
        }

        @Override // androidx.constraintlayout.p026a.C0561f.AbstractC0562a
        /* renamed from: a */
        public final boolean mo45121a(T t) {
            int i = this.f2303b;
            Object[] objArr = this.f2302a;
            if (i < objArr.length) {
                objArr[i] = t;
                this.f2303b = i + 1;
                return true;
            }
            return false;
        }
    }

    private C0561f() {
    }
}
