package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.q7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q7.class */
public final class C8316q7 extends AbstractC8228l9<C8316q7, C8317a> implements AbstractC8430wa {
    public static final AbstractC8371t9<Integer, EnumC8480z7> zzbzd = new C8351s7();
    public static final C8316q7 zzbze;
    public static volatile AbstractC8129gb<C8316q7> zzh;
    public AbstractC8353s9 zzbzc = AbstractC8228l9.m18352i();

    /* renamed from: h.i.a.e.j.l.q7$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q7$a.class */
    public static final class C8317a extends AbstractC8228l9.C8230b<C8316q7, C8317a> implements AbstractC8430wa {
        public C8317a() {
            super(C8316q7.zzbze);
        }

        public /* synthetic */ C8317a(C8300p7 p7Var) {
            this();
        }
    }

    static {
        C8316q7 q7Var = new C8316q7();
        zzbze = q7Var;
        AbstractC8228l9.m18357a(C8316q7.class, q7Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8300p7.f19249a[i - 1]) {
            case 1:
                return new C8316q7();
            case 2:
                return new C8317a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001e", new Object[]{"zzbzc", EnumC8480z7.m17909b()});
            case 4:
                return zzbze;
            case 5:
                AbstractC8129gb<C8316q7> gbVar = zzh;
                AbstractC8129gb<C8316q7> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8316q7.class) {
                        try {
                            AbstractC8129gb<C8316q7> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbze);
                                zzh = gbVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return gbVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
