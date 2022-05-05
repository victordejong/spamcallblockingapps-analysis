package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.j2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j2.class */
public final class C8176j2 extends AbstractC8228l9<C8176j2, C8177a> implements AbstractC8430wa {
    public static final C8176j2 zzbfl;
    public static volatile AbstractC8129gb<C8176j2> zzh;
    public C8454y1 zzaoc;
    public C8414w1 zzaov;
    public int zzaow;
    public int zzaox;
    public C8470z1 zzaps;
    public C8332r7 zzbfk;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.j2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j2$a.class */
    public static final class C8177a extends AbstractC8228l9.C8230b<C8176j2, C8177a> implements AbstractC8430wa {
        public C8177a() {
            super(C8176j2.zzbfl);
        }

        public /* synthetic */ C8177a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8176j2 j2Var = new C8176j2();
        zzbfl = j2Var;
        AbstractC8228l9.m18357a(C8176j2.class, j2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8176j2();
            case 2:
                return new C8177a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbfl, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဉ��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဋ\u0004\u0006ဋ\u0005", new Object[]{"zzj", "zzaps", "zzbfk", "zzaoc", "zzaov", "zzaow", "zzaox"});
            case 4:
                return zzbfl;
            case 5:
                AbstractC8129gb<C8176j2> gbVar = zzh;
                AbstractC8129gb<C8176j2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8176j2.class) {
                        try {
                            AbstractC8129gb<C8176j2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbfl);
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
