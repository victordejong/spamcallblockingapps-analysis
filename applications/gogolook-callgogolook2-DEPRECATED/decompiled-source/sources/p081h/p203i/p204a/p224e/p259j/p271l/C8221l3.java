package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.l3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l3.class */
public final class C8221l3 extends AbstractC8228l9<C8221l3, C8222a> implements AbstractC8430wa {
    public static final C8221l3 zzapr;
    public static volatile AbstractC8129gb<C8221l3> zzh;
    public int zzaoa;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.l3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l3$a.class */
    public static final class C8222a extends AbstractC8228l9.C8230b<C8221l3, C8222a> implements AbstractC8430wa {
        public C8222a() {
            super(C8221l3.zzapr);
        }

        public /* synthetic */ C8222a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8221l3 l3Var = new C8221l3();
        zzapr = l3Var;
        AbstractC8228l9.m18357a(C8221l3.class, l3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8221l3();
            case 2:
                return new C8222a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzapr, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzj", "zzaoa", EnumC8223l4.m18364b()});
            case 4:
                return zzapr;
            case 5:
                AbstractC8129gb<C8221l3> gbVar = zzh;
                AbstractC8129gb<C8221l3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8221l3.class) {
                        try {
                            AbstractC8129gb<C8221l3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzapr);
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
