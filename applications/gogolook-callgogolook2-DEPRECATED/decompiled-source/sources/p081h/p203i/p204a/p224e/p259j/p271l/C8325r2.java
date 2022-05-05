package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.r2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r2.class */
public final class C8325r2 extends AbstractC8228l9<C8325r2, C8326a> implements AbstractC8430wa {
    public static final C8325r2 zzbgs;
    public static volatile AbstractC8129gb<C8325r2> zzh;
    public C8454y1 zzaoc;
    public C8308q2 zzapf;
    public C8470z1 zzaps;
    public AbstractC8409v9<C8134h2> zzbgr = AbstractC8228l9.m18351j();
    public int zzj;

    /* renamed from: h.i.a.e.j.l.r2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r2$a.class */
    public static final class C8326a extends AbstractC8228l9.C8230b<C8325r2, C8326a> implements AbstractC8430wa {
        public C8326a() {
            super(C8325r2.zzbgs);
        }

        public /* synthetic */ C8326a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8325r2 r2Var = new C8325r2();
        zzbgs = r2Var;
        AbstractC8228l9.m18357a(C8325r2.class, r2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8325r2();
            case 2:
                return new C8326a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbgs, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002ဉ\u0001\u0003ဉ\u0002\u0004\u001b", new Object[]{"zzj", "zzaps", "zzaoc", "zzapf", "zzbgr", C8134h2.class});
            case 4:
                return zzbgs;
            case 5:
                AbstractC8129gb<C8325r2> gbVar = zzh;
                AbstractC8129gb<C8325r2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8325r2.class) {
                        try {
                            AbstractC8129gb<C8325r2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbgs);
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
