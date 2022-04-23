package androidx.core.e;
/* loaded from: classes-dex2jar.jar:androidx/core/e/c.class */
public final class c {

    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a.class */
    public interface a<T> {
        T a();

        boolean a(T t);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$b.class */
    public static class b<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f1891a;

        /* renamed from: b  reason: collision with root package name */
        private int f1892b;

        public b(int i) {
            if (i > 0) {
                this.f1891a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.core.e.c.a
        public T a() {
            int i = this.f1892b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f1891a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f1892b = i - 1;
            return t;
        }

        @Override // androidx.core.e.c.a
        public boolean a(T t) {
            int i;
            boolean z;
            int i2 = 0;
            while (true) {
                i = this.f1892b;
                if (i2 >= i) {
                    z = false;
                    break;
                } else if (this.f1891a[i2] == t) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                Object[] objArr = this.f1891a;
                if (i >= objArr.length) {
                    return false;
                }
                objArr[i] = t;
                this.f1892b = i + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* renamed from: androidx.core.e.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$c.class */
    public static final class C0049c<T> extends b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f1893a = new Object();

        public C0049c(int i) {
            super(i);
        }

        @Override // androidx.core.e.c.b, androidx.core.e.c.a
        public final T a() {
            T t;
            synchronized (this.f1893a) {
                t = (T) super.a();
            }
            return t;
        }

        @Override // androidx.core.e.c.b, androidx.core.e.c.a
        public final boolean a(T t) {
            boolean a2;
            synchronized (this.f1893a) {
                a2 = super.a(t);
            }
            return a2;
        }
    }

    private c() {
    }
}
