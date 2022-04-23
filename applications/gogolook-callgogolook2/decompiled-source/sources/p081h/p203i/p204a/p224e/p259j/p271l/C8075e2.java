package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.e2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e2.class */
public final class C8075e2 extends AbstractC8228l9<C8075e2, C8076a> implements AbstractC8430wa {
    public static final C8075e2 zzbbz;
    public static volatile AbstractC8129gb<C8075e2> zzh;
    public int zzaoa;
    public C8114g2 zzaod;
    public long zzbbv;
    public long zzbbw;
    public int zzbbx;
    public long zzbby;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.e2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e2$a.class */
    public static final class C8076a extends AbstractC8228l9.C8230b<C8075e2, C8076a> implements AbstractC8430wa {
        public C8076a() {
            super(C8075e2.zzbbz);
        }

        public /* synthetic */ C8076a(C8045c4 c4Var) {
            this();
        }

        /* renamed from: a */
        public final C8076a m18588a(long j) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8075e2) this.f19063b).m18602a(j);
            return this;
        }

        /* renamed from: a */
        public final C8076a m18587a(EnumC8077b bVar) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8075e2) this.f19063b).m18601a(bVar);
            return this;
        }

        /* renamed from: a */
        public final C8076a m18586a(C8114g2 g2Var) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8075e2) this.f19063b).m18596a(g2Var);
            return this;
        }

        /* renamed from: a */
        public final C8076a m18585a(EnumC8223l4 l4Var) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8075e2) this.f19063b).m18595a(l4Var);
            return this;
        }

        /* renamed from: b */
        public final C8076a m18584b(long j) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8075e2) this.f19063b).m18594b(j);
            return this;
        }

        /* renamed from: c */
        public final C8076a m18583c(long j) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8075e2) this.f19063b).m18592c(j);
            return this;
        }
    }

    /* renamed from: h.i.a.e.j.l.e2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e2$b.class */
    public enum EnumC8077b implements AbstractC8286o9 {
        UNKNOWN_STATUS(0),
        EXPLICITLY_REQUESTED(1),
        IMPLICITLY_REQUESTED(2),
        MODEL_INFO_RETRIEVAL_SUCCEEDED(3),
        MODEL_INFO_RETRIEVAL_FAILED(4),
        SCHEDULED(5),
        DOWNLOADING(6),
        SUCCEEDED(7),
        FAILED(8),
        LIVE(9),
        UPDATE_AVAILABLE(10),
        DOWNLOADED(11);
        

        /* renamed from: a */
        public final int f18814a;

        static {
            new C8103f5();
        }

        EnumC8077b(int i) {
            this.f18814a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18582b() {
            return C8123g5.f18846a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18814a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8077b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18814a + " name=" + name() + '>';
        }
    }

    static {
        C8075e2 e2Var = new C8075e2();
        zzbbz = e2Var;
        AbstractC8228l9.m18357a(C8075e2.class, e2Var);
    }

    /* renamed from: k */
    public static C8076a m18590k() {
        return zzbbz.m18353h();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8075e2();
            case 2:
                return new C8076a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbbz, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဉ��\u0002ဃ\u0001\u0003ဌ\u0002\u0004ဃ\u0003\u0005ဌ\u0004\u0006ဂ\u0005", new Object[]{"zzj", "zzaod", "zzbbv", "zzaoa", EnumC8223l4.m18364b(), "zzbbw", "zzbbx", EnumC8077b.m18582b(), "zzbby"});
            case 4:
                return zzbbz;
            case 5:
                AbstractC8129gb<C8075e2> gbVar = zzh;
                AbstractC8129gb<C8075e2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8075e2.class) {
                        try {
                            AbstractC8129gb<C8075e2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbbz);
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
    public final void m18602a(long j) {
        this.zzj |= 2;
        this.zzbbv = j;
    }

    /* renamed from: a */
    public final void m18601a(EnumC8077b bVar) {
        this.zzbbx = bVar.mo17910a();
        this.zzj |= 16;
    }

    /* renamed from: a */
    public final void m18596a(C8114g2 g2Var) {
        g2Var.getClass();
        this.zzaod = g2Var;
        this.zzj |= 1;
    }

    /* renamed from: a */
    public final void m18595a(EnumC8223l4 l4Var) {
        this.zzaoa = l4Var.mo17910a();
        this.zzj |= 4;
    }

    /* renamed from: b */
    public final void m18594b(long j) {
        this.zzj |= 8;
        this.zzbbw = j;
    }

    /* renamed from: c */
    public final void m18592c(long j) {
        this.zzj |= 32;
        this.zzbby = j;
    }
}
