package androidx.core.p022f;
/* renamed from: androidx.core.f.d */
/* loaded from: classes-dex2jar.jar:androidx/core/f/d.class */
public final class C0498d {

    /* renamed from: androidx.core.f.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/d$a.class */
    public interface AbstractC0499a<T> {
        /* renamed from: a */
        T mo6465a();

        /* renamed from: a */
        boolean mo6464a(T t);
    }

    /* renamed from: androidx.core.f.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/d$b.class */
    public static class C0500b<T> implements AbstractC0499a<T> {

        /* renamed from: a */
        private final Object[] f1803a;

        /* renamed from: b */
        private int f1804b;

        public C0500b(int i) {
            if (i > 0) {
                this.f1803a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        /* renamed from: b */
        private boolean m6466b(T t) {
            for (int i = 0; i < this.f1804b; i++) {
                if (this.f1803a[i] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.p022f.C0498d.AbstractC0499a
        /* renamed from: a */
        public T mo6465a() {
            int i = this.f1804b;
            if (i > 0) {
                int i2 = i - 1;
                Object[] objArr = this.f1803a;
                T t = (T) objArr[i2];
                objArr[i2] = null;
                this.f1804b = i - 1;
                return t;
            }
            return null;
        }

        @Override // androidx.core.p022f.C0498d.AbstractC0499a
        /* renamed from: a */
        public boolean mo6464a(T t) {
            if (!m6466b(t)) {
                int i = this.f1804b;
                Object[] objArr = this.f1803a;
                if (i >= objArr.length) {
                    return false;
                }
                objArr[i] = t;
                this.f1804b = i + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* renamed from: androidx.core.f.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/d$c.class */
    public static class C0501c<T> extends C0500b<T> {

        /* renamed from: a */
        private final Object f1805a = new Object();

        public C0501c(int i) {
            super(i);
        }

        @Override // androidx.core.p022f.C0498d.C0500b, androidx.core.p022f.C0498d.AbstractC0499a
        /* renamed from: a */
        public T mo6465a() {
            T t;
            synchronized (this.f1805a) {
                t = (T) super.mo6465a();
            }
            return t;
        }

        @Override // androidx.core.p022f.C0498d.C0500b, androidx.core.p022f.C0498d.AbstractC0499a
        /* renamed from: a */
        public boolean mo6464a(T t) {
            boolean mo6464a;
            synchronized (this.f1805a) {
                mo6464a = super.mo6464a(t);
            }
            return mo6464a;
        }
    }
}
