package p141k0;
/* renamed from: k0.d */
/* loaded from: classes-dex2jar.jar:k0/d.class */
public final class C3313d {

    /* renamed from: a */
    public static final AbstractC3312c f11233a = new C3317d(null, false);

    /* renamed from: b */
    public static final AbstractC3312c f11234b = new C3317d(null, true);

    /* renamed from: c */
    public static final AbstractC3312c f11235c;

    /* renamed from: d */
    public static final AbstractC3312c f11236d;

    /* renamed from: k0.d$a */
    /* loaded from: classes-dex2jar.jar:k0/d$a.class */
    public static class C3314a implements AbstractC3315b {

        /* renamed from: a */
        public static final C3314a f11237a = new C3314a();

        @Override // p141k0.C3313d.AbstractC3315b
        /* renamed from: a */
        public int mo2389a(CharSequence charSequence, int i, int i2) {
            int i3;
            int i4 = 2;
            int i5 = i;
            while (true) {
                int i6 = i5;
                if (i6 < i2 + i && i4 == 2) {
                    byte directionality = Character.getDirectionality(charSequence.charAt(i6));
                    AbstractC3312c abstractC3312c = C3313d.f11233a;
                    if (directionality != 0) {
                        if (directionality != 1 && directionality != 2) {
                            switch (directionality) {
                                case 14:
                                case 15:
                                    break;
                                case 16:
                                case 17:
                                    break;
                                default:
                                    i3 = 2;
                                    break;
                            }
                            i4 = i3;
                            i5 = i6 + 1;
                        }
                        i3 = 0;
                        i4 = i3;
                        i5 = i6 + 1;
                    }
                    i3 = 1;
                    i4 = i3;
                    i5 = i6 + 1;
                }
            }
            return i4;
        }
    }

    /* renamed from: k0.d$b */
    /* loaded from: classes-dex2jar.jar:k0/d$b.class */
    public interface AbstractC3315b {
        /* renamed from: a */
        int mo2389a(CharSequence charSequence, int i, int i2);
    }

    /* renamed from: k0.d$c */
    /* loaded from: classes-dex2jar.jar:k0/d$c.class */
    public static abstract class AbstractC3316c implements AbstractC3312c {

        /* renamed from: a */
        public final AbstractC3315b f11238a;

        public AbstractC3316c(AbstractC3315b abstractC3315b) {
            this.f11238a = abstractC3315b;
        }

        /* renamed from: a */
        public abstract boolean mo2387a();

        /* renamed from: b */
        public boolean m2388b(CharSequence charSequence, int i, int i2) {
            if (i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            AbstractC3315b abstractC3315b = this.f11238a;
            if (abstractC3315b == null) {
                return mo2387a();
            }
            int mo2389a = abstractC3315b.mo2389a(charSequence, i, i2);
            boolean z = true;
            if (mo2389a != 0) {
                z = mo2389a != 1 ? mo2387a() : false;
            }
            return z;
        }
    }

    /* renamed from: k0.d$d */
    /* loaded from: classes-dex2jar.jar:k0/d$d.class */
    public static class C3317d extends AbstractC3316c {

        /* renamed from: b */
        public final boolean f11239b;

        public C3317d(AbstractC3315b abstractC3315b, boolean z) {
            super(abstractC3315b);
            this.f11239b = z;
        }

        @Override // p141k0.C3313d.AbstractC3316c
        /* renamed from: a */
        public boolean mo2387a() {
            return this.f11239b;
        }
    }

    static {
        C3314a c3314a = C3314a.f11237a;
        f11235c = new C3317d(c3314a, false);
        f11236d = new C3317d(c3314a, true);
    }
}
