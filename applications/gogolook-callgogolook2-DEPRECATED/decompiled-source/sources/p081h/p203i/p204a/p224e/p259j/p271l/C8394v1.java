package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.v1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v1.class */
public final class C8394v1 extends AbstractC8228l9<C8394v1, C8395a> implements AbstractC8430wa {
    public static final C8394v1 zzarn;
    public static volatile AbstractC8129gb<C8394v1> zzh;
    public long zzarh;
    public long zzari;
    public long zzarj;
    public long zzark;
    public long zzarl;
    public long zzarm;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.v1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v1$a.class */
    public static final class C8395a extends AbstractC8228l9.C8230b<C8394v1, C8395a> implements AbstractC8430wa {
        public C8395a() {
            super(C8394v1.zzarn);
        }

        public /* synthetic */ C8395a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8394v1 v1Var = new C8394v1();
        zzarn = v1Var;
        AbstractC8228l9.m18357a(C8394v1.class, v1Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8394v1();
            case 2:
                return new C8395a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzarn, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဃ��\u0002ဃ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004\u0006ဃ\u0005", new Object[]{"zzj", "zzarh", "zzari", "zzarj", "zzark", "zzarl", "zzarm"});
            case 4:
                return zzarn;
            case 5:
                AbstractC8129gb<C8394v1> gbVar = zzh;
                AbstractC8129gb<C8394v1> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8394v1.class) {
                        try {
                            AbstractC8129gb<C8394v1> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzarn);
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
