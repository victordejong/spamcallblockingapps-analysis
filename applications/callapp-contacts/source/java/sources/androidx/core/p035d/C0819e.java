package androidx.core.p035d;

import java.util.Locale;
/* renamed from: androidx.core.d.e */
/* loaded from: classes-dex2jar.jar:androidx/core/d/e.class */
public final class C0819e {

    /* renamed from: a */
    public static final AbstractC0818d f3543a = new C0824e(null, false);

    /* renamed from: b */
    public static final AbstractC0818d f3544b = new C0824e(null, true);

    /* renamed from: c */
    public static final AbstractC0818d f3545c = new C0824e(C0821b.f3551a, false);

    /* renamed from: d */
    public static final AbstractC0818d f3546d = new C0824e(C0821b.f3551a, true);

    /* renamed from: e */
    public static final AbstractC0818d f3547e = new C0824e(C0820a.f3549a, false);

    /* renamed from: f */
    public static final AbstractC0818d f3548f = C0825f.f3554a;

    /* renamed from: androidx.core.d.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$a.class */
    static final class C0820a implements AbstractC0822c {

        /* renamed from: a */
        static final C0820a f3549a = new C0820a(true);

        /* renamed from: b */
        private final boolean f3550b;

        private C0820a(boolean z) {
            this.f3550b = z;
        }

        @Override // androidx.core.p035d.C0819e.AbstractC0822c
        /* renamed from: a */
        public final int mo44418a(CharSequence charSequence, int i, int i2) {
            boolean z = false;
            for (int i3 = 0; i3 < i2 + 0; i3++) {
                int m44420a = C0819e.m44420a(Character.getDirectionality(charSequence.charAt(i3)));
                if (m44420a != 0) {
                    if (m44420a != 1) {
                        continue;
                    } else if (!this.f3550b) {
                        return 1;
                    }
                } else if (this.f3550b) {
                    return 0;
                }
                z = true;
            }
            if (z) {
                return this.f3550b ? 1 : 0;
            }
            return 2;
        }
    }

    /* renamed from: androidx.core.d.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$b.class */
    static final class C0821b implements AbstractC0822c {

        /* renamed from: a */
        static final C0821b f3551a = new C0821b();

        private C0821b() {
        }

        @Override // androidx.core.p035d.C0819e.AbstractC0822c
        /* renamed from: a */
        public final int mo44418a(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = 0; i4 < i2 + 0 && i3 == 2; i4++) {
                i3 = C0819e.m44419b(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.d.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$c.class */
    public interface AbstractC0822c {
        /* renamed from: a */
        int mo44418a(CharSequence charSequence, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.d.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$d.class */
    public static abstract class AbstractC0823d implements AbstractC0818d {

        /* renamed from: a */
        private final AbstractC0822c f3552a;

        AbstractC0823d(AbstractC0822c abstractC0822c) {
            this.f3552a = abstractC0822c;
        }

        /* renamed from: a */
        protected abstract boolean mo44416a();

        @Override // androidx.core.p035d.AbstractC0818d
        /* renamed from: a */
        public final boolean mo44417a(CharSequence charSequence, int i) {
            if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
                throw new IllegalArgumentException();
            }
            AbstractC0822c abstractC0822c = this.f3552a;
            if (abstractC0822c == null) {
                return mo44416a();
            }
            int mo44418a = abstractC0822c.mo44418a(charSequence, 0, i);
            if (mo44418a == 0) {
                return true;
            }
            if (mo44418a == 1) {
                return false;
            }
            return mo44416a();
        }
    }

    /* renamed from: androidx.core.d.e$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$e.class */
    static final class C0824e extends AbstractC0823d {

        /* renamed from: a */
        private final boolean f3553a;

        C0824e(AbstractC0822c abstractC0822c, boolean z) {
            super(abstractC0822c);
            this.f3553a = z;
        }

        @Override // androidx.core.p035d.C0819e.AbstractC0823d
        /* renamed from: a */
        protected final boolean mo44416a() {
            return this.f3553a;
        }
    }

    /* renamed from: androidx.core.d.e$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/e$f.class */
    static final class C0825f extends AbstractC0823d {

        /* renamed from: a */
        static final C0825f f3554a = new C0825f();

        C0825f() {
            super(null);
        }

        @Override // androidx.core.p035d.C0819e.AbstractC0823d
        /* renamed from: a */
        protected final boolean mo44416a() {
            return C0826f.m44415a(Locale.getDefault()) == 1;
        }
    }

    private C0819e() {
    }

    /* renamed from: a */
    static int m44420a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    static int m44419b(int i) {
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
