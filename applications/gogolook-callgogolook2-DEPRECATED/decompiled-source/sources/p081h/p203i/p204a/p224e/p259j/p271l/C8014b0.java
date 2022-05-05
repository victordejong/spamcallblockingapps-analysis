package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b0.class */
public final class C8014b0 extends AbstractC8228l9<C8014b0, C8015a> implements AbstractC8430wa {
    public static final C8014b0 zzczn;
    public static volatile AbstractC8129gb<C8014b0> zzh;
    public int zzcze;
    public int zzj;
    public String zzczf = "";
    public String zzczg = "";
    public String zzczh = "";
    public String zzczi = "";
    public String zzczj = "";
    public String zzczk = "";
    public String zzczl = "";
    public String zzcya = "";
    public String zzczm = "";

    /* renamed from: h.i.a.e.j.l.b0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b0$a.class */
    public static final class C8015a extends AbstractC8228l9.C8230b<C8014b0, C8015a> implements AbstractC8430wa {
        public C8015a() {
            super(C8014b0.zzczn);
        }

        public /* synthetic */ C8015a(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8014b0 b0Var = new C8014b0();
        zzczn = b0Var;
        AbstractC8228l9.m18357a(C8014b0.class, b0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8014b0();
            case 2:
                return new C8015a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzczn, "\u0001\n��\u0001\u0001\n\n������\u0001င��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007\tဈ\b\nဈ\t", new Object[]{"zzj", "zzcze", "zzczf", "zzczg", "zzczh", "zzczi", "zzczj", "zzczk", "zzczl", "zzcya", "zzczm"});
            case 4:
                return zzczn;
            case 5:
                AbstractC8129gb<C8014b0> gbVar = zzh;
                AbstractC8129gb<C8014b0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8014b0.class) {
                        try {
                            AbstractC8129gb<C8014b0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzczn);
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
