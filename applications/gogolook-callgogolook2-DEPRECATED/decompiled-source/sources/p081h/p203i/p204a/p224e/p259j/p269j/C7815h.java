package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h.class */
public final class C7815h extends AbstractC7869n1<C7815h, C7816a> implements AbstractC7939v2 {
    public static volatile AbstractC7794e3<C7815h> zzfm;
    public static final C7815h zzfq = new C7815h();
    public int zzfh;
    public String zzfo = "";
    public AbstractC7912s1<C7798f> zzfp = AbstractC7869n1.m19157g();

    /* renamed from: h.i.a.e.j.j.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h$a.class */
    public static final class C7816a extends AbstractC7869n1.C7870a<C7815h, C7816a> implements AbstractC7939v2 {
        public C7816a() {
            super(C7815h.zzfq);
        }

        public /* synthetic */ C7816a(C7824i iVar) {
            this();
        }
    }

    static {
        AbstractC7869n1.m19159a(C7815h.class, zzfq);
    }

    /* renamed from: h */
    public static AbstractC7794e3<C7815h> m19366h() {
        return (AbstractC7794e3) zzfq.mo19125a(AbstractC7869n1.C7874e.f18434g, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1
    /* renamed from: a */
    public final Object mo19125a(int i, Object obj, Object obj2) {
        switch (C7824i.f18344a[i - 1]) {
            case 1:
                return new C7815h();
            case 2:
                return new C7816a(null);
            case 3:
                return AbstractC7869n1.m19161a(zzfq, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\b��\u0002\u001b", new Object[]{"zzfh", "zzfo", "zzfp", C7798f.class});
            case 4:
                return zzfq;
            case 5:
                AbstractC7794e3<C7815h> e3Var = zzfm;
                AbstractC7794e3<C7815h> e3Var2 = e3Var;
                if (e3Var == null) {
                    synchronized (C7815h.class) {
                        try {
                            AbstractC7794e3<C7815h> e3Var3 = zzfm;
                            e3Var2 = e3Var3;
                            if (e3Var3 == null) {
                                e3Var2 = new AbstractC7869n1.C7871b<>(zzfq);
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
