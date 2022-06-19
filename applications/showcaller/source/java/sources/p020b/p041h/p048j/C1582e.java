package p020b.p041h.p048j;

import java.util.Locale;
/* renamed from: b.h.j.e */
/* loaded from: classes-dex2jar.jar:b/h/j/e.class */
public final class C1582e {

    /* renamed from: c */
    public static final AbstractC1581d f6176c;

    /* renamed from: d */
    public static final AbstractC1581d f6177d;

    /* renamed from: a */
    public static final AbstractC1581d f6174a = new C1587e(null, false);

    /* renamed from: b */
    public static final AbstractC1581d f6175b = new C1587e(null, true);

    /* renamed from: e */
    public static final AbstractC1581d f6178e = new C1587e(C1583a.f6180a, false);

    /* renamed from: f */
    public static final AbstractC1581d f6179f = C1588f.f6185b;

    /* renamed from: b.h.j.e$a */
    /* loaded from: classes-dex2jar.jar:b/h/j/e$a.class */
    private static class C1583a implements AbstractC1585c {

        /* renamed from: a */
        static final C1583a f6180a = new C1583a(true);

        /* renamed from: b */
        private final boolean f6181b;

        private C1583a(boolean z) {
            this.f6181b = z;
        }

        @Override // p020b.p041h.p048j.C1582e.AbstractC1585c
        /* renamed from: a */
        public int mo29676a(CharSequence charSequence, int i, int i2) {
            boolean z = false;
            int i3 = i;
            while (i3 < i2 + i) {
                int m29678a = C1582e.m29678a(Character.getDirectionality(charSequence.charAt(i3)));
                if (m29678a != 0) {
                    if (m29678a != 1) {
                        continue;
                        i3++;
                        z = z;
                    } else if (!this.f6181b) {
                        return 1;
                    }
                } else if (this.f6181b) {
                    return 0;
                }
                z = true;
                i3++;
                z = z;
            }
            if (z) {
                return this.f6181b ? 1 : 0;
            }
            return 2;
        }
    }

    /* renamed from: b.h.j.e$b */
    /* loaded from: classes-dex2jar.jar:b/h/j/e$b.class */
    private static class C1584b implements AbstractC1585c {

        /* renamed from: a */
        static final C1584b f6182a = new C1584b();

        private C1584b() {
        }

        @Override // p020b.p041h.p048j.C1582e.AbstractC1585c
        /* renamed from: a */
        public int mo29676a(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = i; i4 < i2 + i && i3 == 2; i4++) {
                i3 = C1582e.m29677b(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* renamed from: b.h.j.e$c */
    /* loaded from: classes-dex2jar.jar:b/h/j/e$c.class */
    public interface AbstractC1585c {
        /* renamed from: a */
        int mo29676a(CharSequence charSequence, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.j.e$d */
    /* loaded from: classes-dex2jar.jar:b/h/j/e$d.class */
    public static abstract class AbstractC1586d implements AbstractC1581d {

        /* renamed from: a */
        private final AbstractC1585c f6183a;

        AbstractC1586d(AbstractC1585c abstractC1585c) {
            this.f6183a = abstractC1585c;
        }

        /* renamed from: c */
        private boolean m29674c(CharSequence charSequence, int i, int i2) {
            int mo29676a = this.f6183a.mo29676a(charSequence, i, i2);
            if (mo29676a != 0) {
                if (mo29676a == 1) {
                    return false;
                }
                return mo29673b();
            }
            return true;
        }

        @Override // p020b.p041h.p048j.AbstractC1581d
        /* renamed from: a */
        public boolean mo29675a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f6183a == null ? mo29673b() : m29674c(charSequence, i, i2);
        }

        /* renamed from: b */
        protected abstract boolean mo29673b();
    }

    /* renamed from: b.h.j.e$e */
    /* loaded from: classes-dex2jar.jar:b/h/j/e$e.class */
    private static class C1587e extends AbstractC1586d {

        /* renamed from: b */
        private final boolean f6184b;

        C1587e(AbstractC1585c abstractC1585c, boolean z) {
            super(abstractC1585c);
            this.f6184b = z;
        }

        @Override // p020b.p041h.p048j.C1582e.AbstractC1586d
        /* renamed from: b */
        protected boolean mo29673b() {
            return this.f6184b;
        }
    }

    /* renamed from: b.h.j.e$f */
    /* loaded from: classes-dex2jar.jar:b/h/j/e$f.class */
    private static class C1588f extends AbstractC1586d {

        /* renamed from: b */
        static final C1588f f6185b = new C1588f();

        C1588f() {
            super(null);
        }

        @Override // p020b.p041h.p048j.C1582e.AbstractC1586d
        /* renamed from: b */
        protected boolean mo29673b() {
            boolean z = true;
            if (C1589f.m29671b(Locale.getDefault()) != 1) {
                z = false;
            }
            return z;
        }
    }

    static {
        C1584b c1584b = C1584b.f6182a;
        f6176c = new C1587e(c1584b, false);
        f6177d = new C1587e(c1584b, true);
    }

    /* renamed from: a */
    static int m29678a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    static int m29677b(int i) {
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
