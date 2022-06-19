package androidx.core.p036e;
/* renamed from: androidx.core.e.c */
/* loaded from: classes-dex2jar.jar:androidx/core/e/c.class */
public final class C0829c {

    /* renamed from: androidx.core.e.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a.class */
    public interface AbstractC0830a<T> {
        /* renamed from: a */
        T mo37607a();

        /* renamed from: a */
        boolean mo37606a(T t);
    }

    /* renamed from: androidx.core.e.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$b.class */
    public static class C0831b<T> implements AbstractC0830a<T> {

        /* renamed from: a */
        private final Object[] f3558a;

        /* renamed from: b */
        private int f3559b;

        public C0831b(int i) {
            if (i > 0) {
                this.f3558a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.core.p036e.C0829c.AbstractC0830a
        /* renamed from: a */
        public T mo37607a() {
            int i = this.f3559b;
            if (i > 0) {
                int i2 = i - 1;
                Object[] objArr = this.f3558a;
                T t = (T) objArr[i2];
                objArr[i2] = null;
                this.f3559b = i - 1;
                return t;
            }
            return null;
        }

        @Override // androidx.core.p036e.C0829c.AbstractC0830a
        /* renamed from: a */
        public boolean mo37606a(T t) {
            int i;
            boolean z;
            int i2 = 0;
            while (true) {
                i = this.f3559b;
                if (i2 >= i) {
                    z = false;
                    break;
                } else if (this.f3558a[i2] == t) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                Object[] objArr = this.f3558a;
                if (i >= objArr.length) {
                    return false;
                }
                objArr[i] = t;
                this.f3559b = i + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* renamed from: androidx.core.e.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$c.class */
    public static final class C0832c<T> extends C0831b<T> {

        /* renamed from: a */
        private final Object f3560a = new Object();

        public C0832c(int i) {
            super(i);
        }

        @Override // androidx.core.p036e.C0829c.C0831b, androidx.core.p036e.C0829c.AbstractC0830a
        /* renamed from: a */
        public final T mo37607a() {
            T t;
            synchronized (this.f3560a) {
                t = (T) super.mo37607a();
            }
            return t;
        }

        @Override // androidx.core.p036e.C0829c.C0831b, androidx.core.p036e.C0829c.AbstractC0830a
        /* renamed from: a */
        public final boolean mo37606a(T t) {
            boolean mo37606a;
            synchronized (this.f3560a) {
                mo37606a = super.mo37606a(t);
            }
            return mo37606a;
        }
    }

    private C0829c() {
    }
}
