package p081h.p203i.p204a.p224e.p259j.p276q;

import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i0.class */
public final class C8627i0 extends AbstractC8568c4<C8627i0, C8628a> implements AbstractC8666l5 {
    public static final C8627i0 zzaut = new C8627i0();
    public static volatile AbstractC8739t5<C8627i0> zznw;
    public int zzaur = 1;
    public AbstractC8638i4<C8617h0> zzaus = AbstractC8568c4.m17758g();
    public int zznr;

    /* renamed from: h.i.a.e.j.q.i0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i0$a.class */
    public static final class C8628a extends AbstractC8568c4.C8569a<C8627i0, C8628a> implements AbstractC8666l5 {
        public C8628a() {
            super(C8627i0.zzaut);
        }

        public /* synthetic */ C8628a(C8643j0 j0Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.q.i0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i0$b.class */
    public enum EnumC8629b implements AbstractC8600f4 {
        RADS(1),
        PROVISIONING(2);
        

        /* renamed from: a */
        public final int f19758a;

        static {
            new C8652k0();
        }

        EnumC8629b(int i) {
            this.f19758a = i;
        }

        /* renamed from: a */
        public static AbstractC8622h4 m17552a() {
            return C8661l0.f19808a;
        }

        /* renamed from: a */
        public static EnumC8629b m17551a(int i) {
            if (i == 1) {
                return RADS;
            }
            if (i != 2) {
                return null;
            }
            return PROVISIONING;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8600f4
        /* renamed from: C */
        public final int mo17553C() {
            return this.f19758a;
        }
    }

    static {
        AbstractC8568c4.m17760a(C8627i0.class, zzaut);
    }

    /* renamed from: h */
    public static AbstractC8739t5<C8627i0> m17555h() {
        return (AbstractC8739t5) zzaut.mo17556a(AbstractC8568c4.C8573e.f19634g, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4
    /* renamed from: a */
    public final Object mo17556a(int i, Object obj, Object obj2) {
        switch (C8643j0.f19781a[i - 1]) {
            case 1:
                return new C8627i0();
            case 2:
                return new C8628a(null);
            case 3:
                return AbstractC8568c4.m17762a(zzaut, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\f��\u0002\u001b", new Object[]{"zznr", "zzaur", EnumC8629b.m17552a(), "zzaus", C8617h0.class});
            case 4:
                return zzaut;
            case 5:
                AbstractC8739t5<C8627i0> t5Var = zznw;
                AbstractC8739t5<C8627i0> t5Var2 = t5Var;
                if (t5Var == null) {
                    synchronized (C8627i0.class) {
                        try {
                            AbstractC8739t5<C8627i0> t5Var3 = zznw;
                            t5Var2 = t5Var3;
                            if (t5Var3 == null) {
                                t5Var2 = new AbstractC8568c4.C8570b<>(zzaut);
                                zznw = t5Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return t5Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
