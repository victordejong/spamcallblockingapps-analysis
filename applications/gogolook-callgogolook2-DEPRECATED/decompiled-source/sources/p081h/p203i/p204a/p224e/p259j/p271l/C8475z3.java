package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.z3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z3.class */
public final class C8475z3 extends AbstractC8228l9<C8475z3, C8476a> implements AbstractC8430wa {
    public static final C8475z3 zzaqr;
    public static volatile AbstractC8129gb<C8475z3> zzh;
    public int zzaoa;
    public C8114g2 zzaod;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.z3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z3$a.class */
    public static final class C8476a extends AbstractC8228l9.C8230b<C8475z3, C8476a> implements AbstractC8430wa {
        public C8476a() {
            super(C8475z3.zzaqr);
        }

        public /* synthetic */ C8476a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8475z3 z3Var = new C8475z3();
        zzaqr = z3Var;
        AbstractC8228l9.m18357a(C8475z3.class, z3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8475z3();
            case 2:
                return new C8476a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzaqr, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဉ��\u0002ဌ\u0001", new Object[]{"zzj", "zzaod", "zzaoa", EnumC8223l4.m18364b()});
            case 4:
                return zzaqr;
            case 5:
                AbstractC8129gb<C8475z3> gbVar = zzh;
                AbstractC8129gb<C8475z3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8475z3.class) {
                        try {
                            AbstractC8129gb<C8475z3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzaqr);
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
