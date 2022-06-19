package androidx.core.p024f;

import java.util.Locale;
/* renamed from: androidx.core.f.e */
/* loaded from: classes-dex2jar.jar:androidx/core/f/e.class */
public final class C0511e {

    /* renamed from: a */
    public static final AbstractC0510d f1939a = new C0516e(null, false);

    /* renamed from: b */
    public static final AbstractC0510d f1940b = new C0516e(null, true);

    /* renamed from: c */
    public static final AbstractC0510d f1941c = new C0516e(C0513b.f1947a, false);

    /* renamed from: d */
    public static final AbstractC0510d f1942d = new C0516e(C0513b.f1947a, true);

    /* renamed from: e */
    public static final AbstractC0510d f1943e = new C0516e(C0512a.f1945a, false);

    /* renamed from: f */
    public static final AbstractC0510d f1944f = C0517f.f1950a;

    /* renamed from: androidx.core.f.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$a.class */
    private static class C0512a implements AbstractC0514c {

        /* renamed from: a */
        static final C0512a f1945a = new C0512a(true);

        /* renamed from: b */
        private final boolean f1946b;

        private C0512a(boolean z) {
            this.f1946b = z;
        }

        @Override // androidx.core.p024f.C0511e.AbstractC0514c
        /* renamed from: a */
        public int mo20656a(CharSequence charSequence, int i, int i2) {
            int i3;
            boolean z;
            boolean z2 = false;
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i5 < i + i2) {
                    switch (C0511e.m20658a(Character.getDirectionality(charSequence.charAt(i5)))) {
                        case 0:
                            if (!this.f1946b) {
                                z = true;
                                break;
                            } else {
                                i3 = 0;
                                break;
                            }
                        case 1:
                            i3 = 1;
                            if (!this.f1946b) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        default:
                            z = z2;
                            break;
                    }
                    z2 = z;
                    i4 = i5 + 1;
                } else if (z2) {
                    i3 = 1;
                    if (!this.f1946b) {
                        i3 = 0;
                    }
                } else {
                    i3 = 2;
                }
            }
            return i3;
        }
    }

    /* renamed from: androidx.core.f.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$b.class */
    private static class C0513b implements AbstractC0514c {

        /* renamed from: a */
        static final C0513b f1947a = new C0513b();

        private C0513b() {
        }

        @Override // androidx.core.p024f.C0511e.AbstractC0514c
        /* renamed from: a */
        public int mo20656a(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = i; i4 < i + i2 && i3 == 2; i4++) {
                i3 = C0511e.m20657b(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* renamed from: androidx.core.f.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$c.class */
    public interface AbstractC0514c {
        /* renamed from: a */
        int mo20656a(CharSequence charSequence, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.f.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$d.class */
    public static abstract class AbstractC0515d implements AbstractC0510d {

        /* renamed from: a */
        private final AbstractC0514c f1948a;

        AbstractC0515d(AbstractC0514c abstractC0514c) {
            this.f1948a = abstractC0514c;
        }

        /* renamed from: b */
        private boolean m20654b(CharSequence charSequence, int i, int i2) {
            boolean z;
            switch (this.f1948a.mo20656a(charSequence, i, i2)) {
                case 0:
                    z = true;
                    break;
                case 1:
                    z = false;
                    break;
                default:
                    z = mo20653a();
                    break;
            }
            return z;
        }

        /* renamed from: a */
        protected abstract boolean mo20653a();

        @Override // androidx.core.p024f.AbstractC0510d
        /* renamed from: a */
        public boolean mo20655a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f1948a == null ? mo20653a() : m20654b(charSequence, i, i2);
        }
    }

    /* renamed from: androidx.core.f.e$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$e.class */
    private static class C0516e extends AbstractC0515d {

        /* renamed from: a */
        private final boolean f1949a;

        C0516e(AbstractC0514c abstractC0514c, boolean z) {
            super(abstractC0514c);
            this.f1949a = z;
        }

        @Override // androidx.core.p024f.C0511e.AbstractC0515d
        /* renamed from: a */
        protected boolean mo20653a() {
            return this.f1949a;
        }
    }

    /* renamed from: androidx.core.f.e$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$f.class */
    private static class C0517f extends AbstractC0515d {

        /* renamed from: a */
        static final C0517f f1950a = new C0517f();

        C0517f() {
            super(null);
        }

        @Override // androidx.core.p024f.C0511e.AbstractC0515d
        /* renamed from: a */
        protected boolean mo20653a() {
            boolean z = true;
            if (C0518f.m20652a(Locale.getDefault()) != 1) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    static int m20658a(int i) {
        int i2;
        switch (i) {
            case 0:
                i2 = 1;
                break;
            case 1:
            case 2:
                i2 = 0;
                break;
            default:
                i2 = 2;
                break;
        }
        return i2;
    }

    /* renamed from: b */
    static int m20657b(int i) {
        int i2;
        switch (i) {
            case 0:
            case 14:
            case 15:
                i2 = 1;
                break;
            case 1:
            case 2:
            case 16:
            case 17:
                i2 = 0;
                break;
            default:
                i2 = 2;
                break;
        }
        return i2;
    }
}
