package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.t2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/t2.class */
public final class C8362t2 extends AbstractC8228l9<C8362t2, C8363a> implements AbstractC8430wa {
    public static final C8362t2 zzbgu;
    public static volatile AbstractC8129gb<C8362t2> zzh;
    public C8454y1 zzaoc;
    public C8396v2 zzapj;
    public C8470z1 zzaps;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.t2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/t2$a.class */
    public static final class C8363a extends AbstractC8228l9.C8230b<C8362t2, C8363a> implements AbstractC8430wa {
        public C8363a() {
            super(C8362t2.zzbgu);
        }

        public /* synthetic */ C8363a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8362t2 t2Var = new C8362t2();
        zzbgu = t2Var;
        AbstractC8228l9.m18357a(C8362t2.class, t2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8362t2();
            case 2:
                return new C8363a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbgu, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzj", "zzaps", "zzaoc", "zzapj"});
            case 4:
                return zzbgu;
            case 5:
                AbstractC8129gb<C8362t2> gbVar = zzh;
                AbstractC8129gb<C8362t2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8362t2.class) {
                        try {
                            AbstractC8129gb<C8362t2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbgu);
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
