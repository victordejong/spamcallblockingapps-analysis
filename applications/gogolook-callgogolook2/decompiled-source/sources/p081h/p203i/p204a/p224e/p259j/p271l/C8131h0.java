package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h0.class */
public final class C8131h0 extends AbstractC8228l9<C8131h0, C8132a> implements AbstractC8430wa {
    public static final C8131h0 zzdbn;
    public static volatile AbstractC8129gb<C8131h0> zzh;
    public String zzcxf = "";
    public int zzcxj;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.h0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h0$a.class */
    public static final class C8132a extends AbstractC8228l9.C8230b<C8131h0, C8132a> implements AbstractC8430wa {
        public C8132a() {
            super(C8131h0.zzdbn);
        }

        public /* synthetic */ C8132a(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8131h0 h0Var = new C8131h0();
        zzdbn = h0Var;
        AbstractC8228l9.m18357a(C8131h0.class, h0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8131h0();
            case 2:
                return new C8132a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdbn, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002င\u0001", new Object[]{"zzj", "zzcxf", "zzcxj"});
            case 4:
                return zzdbn;
            case 5:
                AbstractC8129gb<C8131h0> gbVar = zzh;
                AbstractC8129gb<C8131h0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8131h0.class) {
                        try {
                            AbstractC8129gb<C8131h0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdbn);
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
