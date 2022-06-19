package p1727n3.p1807k.p1818g;
/* renamed from: n3.k.g.d */
/* loaded from: classes-dex2jar.jar:n3/k/g/d.class */
public final class C26541d {

    /* renamed from: a */
    public static final AbstractC26540c f74368a = new d((AbstractC26543b) null, false);

    /* renamed from: b */
    public static final AbstractC26540c f74369b = new d((AbstractC26543b) null, true);

    /* renamed from: c */
    public static final AbstractC26540c f74370c;

    /* renamed from: d */
    public static final AbstractC26540c f74371d;

    /* renamed from: n3.k.g.d$a */
    /* loaded from: classes-dex2jar.jar:n3/k/g/d$a.class */
    public static class C26542a implements AbstractC26543b {

        /* renamed from: a */
        public static final C26542a f74372a = new C26542a();

        @Override // p1727n3.p1807k.p1818g.C26541d.AbstractC26543b
        /* renamed from: a */
        public int mo1704a(CharSequence charSequence, int i, int i2) {
            int i3;
            int i4 = 2;
            int i5 = i;
            while (true) {
                int i6 = i5;
                if (i6 < i2 + i && i4 == 2) {
                    byte directionality = Character.getDirectionality(charSequence.charAt(i6));
                    AbstractC26540c abstractC26540c = C26541d.f74368a;
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

    /* renamed from: n3.k.g.d$b */
    /* loaded from: classes-dex2jar.jar:n3/k/g/d$b.class */
    public interface AbstractC26543b {
        /* renamed from: a */
        int mo1704a(CharSequence charSequence, int i, int i2);
    }

    /* renamed from: n3.k.g.d$c */
    /* loaded from: classes-dex2jar.jar:n3/k/g/d$c.class */
    public static abstract class AbstractC26544c implements AbstractC26540c {

        /* renamed from: a */
        public final AbstractC26543b f74373a;

        public AbstractC26544c(AbstractC26543b abstractC26543b) {
            this.f74373a = abstractC26543b;
        }

        /* renamed from: a */
        public abstract boolean m1703a();

        /* renamed from: b */
        public boolean m1702b(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            AbstractC26543b abstractC26543b = this.f74373a;
            if (abstractC26543b == null) {
                return m1703a();
            }
            int mo1704a = abstractC26543b.mo1704a(charSequence, i, i2);
            boolean z = true;
            if (mo1704a != 0) {
                z = mo1704a != 1 ? m1703a() : false;
            }
            return z;
        }
    }

    static {
        C26542a c26542a = C26542a.f74372a;
        f74370c = new d(c26542a, false);
        f74371d = new d(c26542a, true);
    }
}
