package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j.class */
public final class C7832j extends AbstractC7869n1<C7832j, C7833a> implements AbstractC7939v2 {
    public static volatile AbstractC7794e3<C7832j> zzfm;
    public static final C7832j zzfv = new C7832j();
    public int zzfh;
    public String zzfr = "";
    public String zzfs = "";
    public String zzft = "";
    public C7878n5 zzfu;

    /* renamed from: h.i.a.e.j.j.j$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j$a.class */
    public static final class C7833a extends AbstractC7869n1.C7870a<C7832j, C7833a> implements AbstractC7939v2 {
        public C7833a() {
            super(C7832j.zzfv);
        }

        public /* synthetic */ C7833a(C7845k kVar) {
            this();
        }
    }

    static {
        AbstractC7869n1.m19159a(C7832j.class, zzfv);
    }

    /* renamed from: h */
    public static AbstractC7794e3<C7832j> m19339h() {
        return (AbstractC7794e3) zzfv.mo19125a(AbstractC7869n1.C7874e.f18434g, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1
    /* renamed from: a */
    public final Object mo19125a(int i, Object obj, Object obj2) {
        switch (C7845k.f18385a[i - 1]) {
            case 1:
                return new C7832j();
            case 2:
                return new C7833a(null);
            case 3:
                return AbstractC7869n1.m19161a(zzfv, "\u0001\u0004��\u0001\u0002\u0005\u0004������\u0002\b��\u0003\b\u0001\u0004\b\u0002\u0005\t\u0003", new Object[]{"zzfh", "zzfr", "zzfs", "zzft", "zzfu"});
            case 4:
                return zzfv;
            case 5:
                AbstractC7794e3<C7832j> e3Var = zzfm;
                AbstractC7794e3<C7832j> e3Var2 = e3Var;
                if (e3Var == null) {
                    synchronized (C7832j.class) {
                        try {
                            AbstractC7794e3<C7832j> e3Var3 = zzfm;
                            e3Var2 = e3Var3;
                            if (e3Var3 == null) {
                                e3Var2 = new AbstractC7869n1.C7871b<>(zzfv);
                                zzfm = e3Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return e3Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
