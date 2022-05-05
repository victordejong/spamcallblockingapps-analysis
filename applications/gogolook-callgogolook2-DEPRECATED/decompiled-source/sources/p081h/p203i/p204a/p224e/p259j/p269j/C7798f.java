package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/f.class */
public final class C7798f extends AbstractC7869n1<C7798f, C7799a> implements AbstractC7939v2 {
    public static final C7798f zzfl = new C7798f();
    public static volatile AbstractC7794e3<C7798f> zzfm;
    public int zzfh;
    public long zzfi;
    public long zzfj;
    public long zzfk;

    /* renamed from: h.i.a.e.j.j.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/f$a.class */
    public static final class C7799a extends AbstractC7869n1.C7870a<C7798f, C7799a> implements AbstractC7939v2 {
        public C7799a() {
            super(C7798f.zzfl);
        }

        public /* synthetic */ C7799a(C7807g gVar) {
            this();
        }
    }

    static {
        AbstractC7869n1.m19159a(C7798f.class, zzfl);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1
    /* renamed from: a */
    public final Object mo19125a(int i, Object obj, Object obj2) {
        switch (C7807g.f18261a[i - 1]) {
            case 1:
                return new C7798f();
            case 2:
                return new C7799a(null);
            case 3:
                return AbstractC7869n1.m19161a(zzfl, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0002��\u0002\u0002\u0001\u0003\u0002\u0002", new Object[]{"zzfh", "zzfi", "zzfj", "zzfk"});
            case 4:
                return zzfl;
            case 5:
                AbstractC7794e3<C7798f> e3Var = zzfm;
                AbstractC7794e3<C7798f> e3Var2 = e3Var;
                if (e3Var == null) {
                    synchronized (C7798f.class) {
                        try {
                            AbstractC7794e3<C7798f> e3Var3 = zzfm;
                            e3Var2 = e3Var3;
                            if (e3Var3 == null) {
                                e3Var2 = new AbstractC7869n1.C7871b<>(zzfl);
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
