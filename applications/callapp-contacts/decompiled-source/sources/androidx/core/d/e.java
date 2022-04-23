package androidx.core.d;

import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/d/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final androidx.core.d.d f1878a = new C0048e(null, false);

    /* renamed from: b  reason: collision with root package name */
    public static final androidx.core.d.d f1879b = new C0048e(null, true);

    /* renamed from: c  reason: collision with root package name */
    public static final androidx.core.d.d f1880c = new C0048e(b.f1884a, false);

    /* renamed from: d  reason: collision with root package name */
    public static final androidx.core.d.d f1881d = new C0048e(b.f1884a, true);
    public static final androidx.core.d.d e = new C0048e(a.f1882a, false);
    public static final androidx.core.d.d f = f.f1887a;

    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$a.class */
    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        static final a f1882a = new a(true);

        /* renamed from: b  reason: collision with root package name */
        private final boolean f1883b;

        private a(boolean z) {
            this.f1883b = z;
        }

        @Override // androidx.core.d.e.c
        public final int a(CharSequence charSequence, int i, int i2) {
            boolean z = false;
            for (int i3 = 0; i3 < i2 + 0; i3++) {
                int a2 = e.a(Character.getDirectionality(charSequence.charAt(i3)));
                if (a2 != 0) {
                    if (a2 != 1) {
                        continue;
                    } else if (!this.f1883b) {
                        return 1;
                    }
                } else if (this.f1883b) {
                    return 0;
                }
                z = true;
            }
            if (z) {
                return this.f1883b ? 1 : 0;
            }
            return 2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$b.class */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        static final b f1884a = new b();

        private b() {
        }

        @Override // androidx.core.d.e.c
        public final int a(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = 0; i4 < i2 + 0 && i3 == 2; i4++) {
                i3 = e.b(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$c.class */
    interface c {
        int a(CharSequence charSequence, int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$d.class */
    static abstract class d implements androidx.core.d.d {

        /* renamed from: a  reason: collision with root package name */
        private final c f1885a;

        d(c cVar) {
            this.f1885a = cVar;
        }

        protected abstract boolean a();

        @Override // androidx.core.d.d
        public final boolean a(CharSequence charSequence, int i) {
            if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
                throw new IllegalArgumentException();
            }
            c cVar = this.f1885a;
            if (cVar == null) {
                return a();
            }
            int a2 = cVar.a(charSequence, 0, i);
            if (a2 == 0) {
                return true;
            }
            if (a2 != 1) {
                return a();
            }
            return false;
        }
    }

    /* renamed from: androidx.core.d.e$e  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$e.class */
    static final class C0048e extends d {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f1886a;

        C0048e(c cVar, boolean z) {
            super(cVar);
            this.f1886a = z;
        }

        @Override // androidx.core.d.e.d
        protected final boolean a() {
            return this.f1886a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$f.class */
    static final class f extends d {

        /* renamed from: a  reason: collision with root package name */
        static final f f1887a = new f();

        f() {
            super(null);
        }

        @Override // androidx.core.d.e.d
        protected final boolean a() {
            return androidx.core.d.f.a(Locale.getDefault()) == 1;
        }
    }

    private e() {
    }

    static int a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1 || i == 2) {
            return 0;
        }
        switch (i) {
            case 14:
            case 15:
                return 1;
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }
}
