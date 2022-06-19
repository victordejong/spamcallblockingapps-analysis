package androidx.core.p021e;

import java.util.Locale;
/* renamed from: androidx.core.e.e */
/* loaded from: classes-dex2jar.jar:androidx/core/e/e.class */
public final class C0487e {

    /* renamed from: a */
    public static final AbstractC0486d f1788a = new C0492e(null, false);

    /* renamed from: b */
    public static final AbstractC0486d f1789b = new C0492e(null, true);

    /* renamed from: c */
    public static final AbstractC0486d f1790c = new C0492e(C0489b.f1796a, false);

    /* renamed from: d */
    public static final AbstractC0486d f1791d = new C0492e(C0489b.f1796a, true);

    /* renamed from: e */
    public static final AbstractC0486d f1792e = new C0492e(C0488a.f1794a, false);

    /* renamed from: f */
    public static final AbstractC0486d f1793f = C0493f.f1799a;

    /* renamed from: androidx.core.e.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$a.class */
    private static class C0488a implements AbstractC0490c {

        /* renamed from: a */
        static final C0488a f1794a = new C0488a(true);

        /* renamed from: b */
        private final boolean f1795b;

        private C0488a(boolean z) {
            this.f1795b = z;
        }

        @Override // androidx.core.p021e.C0487e.AbstractC0490c
        /* renamed from: a */
        public int mo6476a(CharSequence charSequence, int i, int i2) {
            boolean z = false;
            int i3 = i;
            while (i3 < i2 + i) {
                int m6478a = C0487e.m6478a(Character.getDirectionality(charSequence.charAt(i3)));
                if (m6478a != 0) {
                    if (m6478a != 1) {
                        continue;
                        i3++;
                        z = z;
                    } else if (!this.f1795b) {
                        return 1;
                    }
                } else if (this.f1795b) {
                    return 0;
                }
                z = true;
                i3++;
                z = z;
            }
            if (z) {
                return this.f1795b ? 1 : 0;
            }
            return 2;
        }
    }

    /* renamed from: androidx.core.e.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$b.class */
    private static class C0489b implements AbstractC0490c {

        /* renamed from: a */
        static final C0489b f1796a = new C0489b();

        private C0489b() {
        }

        @Override // androidx.core.p021e.C0487e.AbstractC0490c
        /* renamed from: a */
        public int mo6476a(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = i; i4 < i2 + i && i3 == 2; i4++) {
                i3 = C0487e.m6477b(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* renamed from: androidx.core.e.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$c.class */
    public interface AbstractC0490c {
        /* renamed from: a */
        int mo6476a(CharSequence charSequence, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.e.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$d.class */
    public static abstract class AbstractC0491d implements AbstractC0486d {

        /* renamed from: a */
        private final AbstractC0490c f1797a;

        AbstractC0491d(AbstractC0490c abstractC0490c) {
            this.f1797a = abstractC0490c;
        }

        /* renamed from: b */
        private boolean m6474b(CharSequence charSequence, int i, int i2) {
            int mo6476a = this.f1797a.mo6476a(charSequence, i, i2);
            if (mo6476a != 0) {
                if (mo6476a == 1) {
                    return false;
                }
                return mo6473a();
            }
            return true;
        }

        /* renamed from: a */
        protected abstract boolean mo6473a();

        @Override // androidx.core.p021e.AbstractC0486d
        /* renamed from: a */
        public boolean mo6475a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f1797a == null ? mo6473a() : m6474b(charSequence, i, i2);
        }
    }

    /* renamed from: androidx.core.e.e$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$e.class */
    private static class C0492e extends AbstractC0491d {

        /* renamed from: a */
        private final boolean f1798a;

        C0492e(AbstractC0490c abstractC0490c, boolean z) {
            super(abstractC0490c);
            this.f1798a = z;
        }

        @Override // androidx.core.p021e.C0487e.AbstractC0491d
        /* renamed from: a */
        protected boolean mo6473a() {
            return this.f1798a;
        }
    }

    /* renamed from: androidx.core.e.e$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/e$f.class */
    private static class C0493f extends AbstractC0491d {

        /* renamed from: a */
        static final C0493f f1799a = new C0493f();

        C0493f() {
            super(null);
        }

        @Override // androidx.core.p021e.C0487e.AbstractC0491d
        /* renamed from: a */
        protected boolean mo6473a() {
            boolean z = true;
            if (C0494f.m6472a(Locale.getDefault()) != 1) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    static int m6478a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    static int m6477b(int i) {
        if (i != 0) {
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
        return 1;
    }
}
