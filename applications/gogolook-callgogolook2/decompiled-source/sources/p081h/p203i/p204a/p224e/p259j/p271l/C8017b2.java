package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
import p081h.p203i.p204a.p224e.p259j.p271l.C8094f2;
/* renamed from: h.i.a.e.j.l.b2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b2.class */
public final class C8017b2 extends AbstractC8228l9<C8017b2, C8018a> implements AbstractC8430wa {
    public static final C8017b2 zzbbm;
    public static volatile AbstractC8129gb<C8017b2> zzh;
    public int zzaqc;
    public String zzarf = "";
    public boolean zzbbl;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.b2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b2$a.class */
    public static final class C8018a extends AbstractC8228l9.C8230b<C8017b2, C8018a> implements AbstractC8430wa {
        public C8018a() {
            super(C8017b2.zzbbm);
        }

        public /* synthetic */ C8018a(C8045c4 c4Var) {
            this();
        }

        /* renamed from: a */
        public final C8018a m18682a(C8094f2.EnumC8095a aVar) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8017b2) this.f19063b).m18686a(aVar);
            return this;
        }

        /* renamed from: a */
        public final C8018a m18681a(boolean z) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8017b2) this.f19063b).m18685a(z);
            return this;
        }
    }

    static {
        C8017b2 b2Var = new C8017b2();
        zzbbm = b2Var;
        AbstractC8228l9.m18357a(C8017b2.class, b2Var);
    }

    /* renamed from: k */
    public static C8018a m18684k() {
        return zzbbm.m18353h();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8017b2();
            case 2:
                return new C8018a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbbm, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002", new Object[]{"zzj", "zzaqc", C8094f2.EnumC8095a.m18550b(), "zzbbl", "zzarf"});
            case 4:
                return zzbbm;
            case 5:
                AbstractC8129gb<C8017b2> gbVar = zzh;
                AbstractC8129gb<C8017b2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8017b2.class) {
                        try {
                            AbstractC8129gb<C8017b2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbbm);
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

    /* renamed from: a */
    public final void m18686a(C8094f2.EnumC8095a aVar) {
        this.zzaqc = aVar.mo17910a();
        this.zzj |= 1;
    }

    /* renamed from: a */
    public final void m18685a(boolean z) {
        this.zzj |= 2;
        this.zzbbl = z;
    }
}
