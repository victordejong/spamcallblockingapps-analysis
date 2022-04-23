package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.n2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n2.class */
public final class C8255n2 extends AbstractC8228l9<C8255n2, C8256a> implements AbstractC8430wa {
    public static final C8255n2 zzbfv;
    public static volatile AbstractC8129gb<C8255n2> zzh;
    public float zzat;
    public int zzbft;
    public C8114g2 zzbfu;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.n2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n2$a.class */
    public static final class C8256a extends AbstractC8228l9.C8230b<C8255n2, C8256a> implements AbstractC8430wa {
        public C8256a() {
            super(C8255n2.zzbfv);
        }

        public /* synthetic */ C8256a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8255n2 n2Var = new C8255n2();
        zzbfv = n2Var;
        AbstractC8228l9.m18357a(C8255n2.class, n2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8255n2();
            case 2:
                return new C8256a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbfv, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဋ��\u0002ခ\u0001\u0003ဉ\u0002", new Object[]{"zzj", "zzbft", "zzat", "zzbfu"});
            case 4:
                return zzbfv;
            case 5:
                AbstractC8129gb<C8255n2> gbVar = zzh;
                AbstractC8129gb<C8255n2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8255n2.class) {
                        try {
                            AbstractC8129gb<C8255n2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbfv);
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
