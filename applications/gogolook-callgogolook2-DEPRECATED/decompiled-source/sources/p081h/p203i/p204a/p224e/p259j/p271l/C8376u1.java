package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
import p081h.p203i.p204a.p224e.p259j.p271l.C8094f2;
/* renamed from: h.i.a.e.j.l.u1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/u1.class */
public final class C8376u1 extends AbstractC8228l9<C8376u1, C8377a> implements AbstractC8430wa {
    public static final C8376u1 zzarg;
    public static volatile AbstractC8129gb<C8376u1> zzh;
    public int zzaqc;
    public boolean zzare;
    public String zzarf = "";
    public int zzj;

    /* renamed from: h.i.a.e.j.l.u1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/u1$a.class */
    public static final class C8377a extends AbstractC8228l9.C8230b<C8376u1, C8377a> implements AbstractC8430wa {
        public C8377a() {
            super(C8376u1.zzarg);
        }

        public /* synthetic */ C8377a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8376u1 u1Var = new C8376u1();
        zzarg = u1Var;
        AbstractC8228l9.m18357a(C8376u1.class, u1Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8376u1();
            case 2:
                return new C8377a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzarg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002", new Object[]{"zzj", "zzaqc", C8094f2.EnumC8095a.m18550b(), "zzare", "zzarf"});
            case 4:
                return zzarg;
            case 5:
                AbstractC8129gb<C8376u1> gbVar = zzh;
                AbstractC8129gb<C8376u1> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8376u1.class) {
                        try {
                            AbstractC8129gb<C8376u1> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzarg);
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
