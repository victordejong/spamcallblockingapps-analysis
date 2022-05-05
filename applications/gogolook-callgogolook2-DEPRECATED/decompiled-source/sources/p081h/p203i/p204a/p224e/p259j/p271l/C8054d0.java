package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d0.class */
public final class C8054d0 extends AbstractC8228l9<C8054d0, C8055a> implements AbstractC8430wa {
    public static final C8054d0 zzdba;
    public static volatile AbstractC8129gb<C8054d0> zzh;
    public int zzaoa;
    public int zzdax;
    public int zzday;
    public int zzj;
    public String zzdav = "";
    public String zzdaw = "";
    public String zzbco = "";
    public String zzdaz = "";

    /* renamed from: h.i.a.e.j.l.d0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d0$a.class */
    public static final class C8055a extends AbstractC8228l9.C8230b<C8054d0, C8055a> implements AbstractC8430wa {
        public C8055a() {
            super(C8054d0.zzdba);
        }

        public /* synthetic */ C8055a(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8054d0 d0Var = new C8054d0();
        zzdba = d0Var;
        AbstractC8228l9.m18357a(C8054d0.class, d0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8054d0();
            case 2:
                return new C8055a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdba, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005င\u0004\u0006ဈ\u0005\u0007င\u0006", new Object[]{"zzj", "zzdav", "zzdaw", "zzbco", "zzdax", "zzday", "zzdaz", "zzaoa"});
            case 4:
                return zzdba;
            case 5:
                AbstractC8129gb<C8054d0> gbVar = zzh;
                AbstractC8129gb<C8054d0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8054d0.class) {
                        try {
                            AbstractC8129gb<C8054d0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdba);
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
