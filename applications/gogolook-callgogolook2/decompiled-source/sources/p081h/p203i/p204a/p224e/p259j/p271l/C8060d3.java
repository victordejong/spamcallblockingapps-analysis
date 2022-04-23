package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.d3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d3.class */
public final class C8060d3 extends AbstractC8228l9<C8060d3, C8061a> implements AbstractC8430wa {
    public static final C8060d3 zzblb;
    public static volatile AbstractC8129gb<C8060d3> zzh;
    public String zzbkz = "";
    public String zzbla = "";
    public int zzj;

    /* renamed from: h.i.a.e.j.l.d3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d3$a.class */
    public static final class C8061a extends AbstractC8228l9.C8230b<C8060d3, C8061a> implements AbstractC8430wa {
        public C8061a() {
            super(C8060d3.zzblb);
        }

        public /* synthetic */ C8061a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8060d3 d3Var = new C8060d3();
        zzblb = d3Var;
        AbstractC8228l9.m18357a(C8060d3.class, d3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8060d3();
            case 2:
                return new C8061a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzblb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzj", "zzbkz", "zzbla"});
            case 4:
                return zzblb;
            case 5:
                AbstractC8129gb<C8060d3> gbVar = zzh;
                AbstractC8129gb<C8060d3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8060d3.class) {
                        try {
                            AbstractC8129gb<C8060d3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzblb);
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
