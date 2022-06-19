package androidx.core.p025g;
/* renamed from: androidx.core.g.e */
/* loaded from: classes-dex2jar.jar:androidx/core/g/e.class */
public final class C0523e {

    /* renamed from: androidx.core.g.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/e$a.class */
    public interface AbstractC0524a<T> {
        /* renamed from: a */
        T mo17021a();

        /* renamed from: a */
        boolean mo17020a(T t);
    }

    /* renamed from: androidx.core.g.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/e$b.class */
    public static class C0525b<T> implements AbstractC0524a<T> {

        /* renamed from: a */
        private final Object[] f1956a;

        /* renamed from: b */
        private int f1957b;

        public C0525b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f1956a = new Object[i];
        }

        /* renamed from: b */
        private boolean m20646b(T t) {
            boolean z;
            int i = 0;
            while (true) {
                z = false;
                if (i >= this.f1957b) {
                    break;
                } else if (this.f1956a[i] == t) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r0v9 */
        @Override // androidx.core.p025g.C0523e.AbstractC0524a
        /* renamed from: a */
        public T mo17021a() {
            T t;
            if (this.f1957b > 0) {
                int i = this.f1957b - 1;
                t = this.f1956a[i];
                this.f1956a[i] = null;
                this.f1957b--;
            } else {
                t = null;
            }
            return t;
        }

        @Override // androidx.core.p025g.C0523e.AbstractC0524a
        /* renamed from: a */
        public boolean mo17020a(T t) {
            boolean z;
            if (m20646b(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.f1957b < this.f1956a.length) {
                this.f1956a[this.f1957b] = t;
                this.f1957b++;
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: androidx.core.g.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/e$c.class */
    public static class C0526c<T> extends C0525b<T> {

        /* renamed from: a */
        private final Object f1958a = new Object();

        public C0526c(int i) {
            super(i);
        }

        @Override // androidx.core.p025g.C0523e.C0525b, androidx.core.p025g.C0523e.AbstractC0524a
        /* renamed from: a */
        public T mo17021a() {
            T t;
            synchronized (this.f1958a) {
                t = (T) super.mo17021a();
            }
            return t;
        }

        @Override // androidx.core.p025g.C0523e.C0525b, androidx.core.p025g.C0523e.AbstractC0524a
        /* renamed from: a */
        public boolean mo17020a(T t) {
            boolean mo17020a;
            synchronized (this.f1958a) {
                mo17020a = super.mo17020a(t);
            }
            return mo17020a;
        }
    }
}
