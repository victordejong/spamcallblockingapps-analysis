package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.f2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f2.class */
public final class C8094f2 extends AbstractC8228l9<C8094f2, C8096b> implements AbstractC8430wa {
    public static final C8094f2 zzbcu;
    public static volatile AbstractC8129gb<C8094f2> zzh;
    public int zzaqc;
    public int zzbcp;
    public long zzbcs;
    public boolean zzbct;
    public int zzj;
    public String zzbcn = "";
    public String zzbco = "";
    public String zzbcq = "";
    public String zzbcr = "";

    /* renamed from: h.i.a.e.j.l.f2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f2$a.class */
    public enum EnumC8095a implements AbstractC8286o9 {
        TYPE_UNKNOWN(0),
        CUSTOM(1),
        AUTOML_IMAGE_LABELING(2),
        BASE_TRANSLATE(3),
        CUSTOM_OBJECT_DETECTION(4),
        CUSTOM_IMAGE_LABELING(5),
        BASE_ENTITY_EXTRACTION(6);
        

        /* renamed from: a */
        public final int f18832a;

        static {
            new C8164i5();
        }

        EnumC8095a(int i) {
            this.f18832a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18550b() {
            return C8142h5.f18870a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18832a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8095a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18832a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.f2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f2$b.class */
    public static final class C8096b extends AbstractC8228l9.C8230b<C8094f2, C8096b> implements AbstractC8430wa {
        public C8096b() {
            super(C8094f2.zzbcu);
        }

        public /* synthetic */ C8096b(C8045c4 c4Var) {
            this();
        }

        /* renamed from: a */
        public final C8096b m18549a(EnumC8095a aVar) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8094f2) this.f19063b).m18560a(aVar);
            return this;
        }

        /* renamed from: a */
        public final C8096b m18548a(EnumC8097c cVar) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8094f2) this.f19063b).m18559a(cVar);
            return this;
        }

        /* renamed from: a */
        public final C8096b m18547a(String str) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8094f2) this.f19063b).m18555a(str);
            return this;
        }

        /* renamed from: b */
        public final C8096b m18546b(String str) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            ((C8094f2) this.f19063b).m18553b(str);
            return this;
        }
    }

    /* renamed from: h.i.a.e.j.l.f2$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f2$c.class */
    public enum EnumC8097c implements AbstractC8286o9 {
        SOURCE_UNKNOWN(0),
        APP_ASSET(1),
        LOCAL(2),
        CLOUD(3),
        SDK_BUILT_IN(4);
        

        /* renamed from: a */
        public final int f18839a;

        static {
            new C8183j5();
        }

        EnumC8097c(int i) {
            this.f18839a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18545b() {
            return C8206k5.f19013a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18839a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8097c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18839a + " name=" + name() + '>';
        }
    }

    static {
        C8094f2 f2Var = new C8094f2();
        zzbcu = f2Var;
        AbstractC8228l9.m18357a(C8094f2.class, f2Var);
    }

    /* renamed from: k */
    public static C8096b m18552k() {
        return zzbcu.m18353h();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8094f2();
            case 2:
                return new C8096b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbcu, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဈ\u0001\u0003ဌ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဌ\u0005\u0007ဃ\u0006\bဇ\u0007", new Object[]{"zzj", "zzbcn", "zzbco", "zzbcp", EnumC8097c.m18545b(), "zzbcq", "zzbcr", "zzaqc", EnumC8095a.m18550b(), "zzbcs", "zzbct"});
            case 4:
                return zzbcu;
            case 5:
                AbstractC8129gb<C8094f2> gbVar = zzh;
                AbstractC8129gb<C8094f2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8094f2.class) {
                        try {
                            AbstractC8129gb<C8094f2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbcu);
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
    public final void m18560a(EnumC8095a aVar) {
        this.zzaqc = aVar.mo17910a();
        this.zzj |= 32;
    }

    /* renamed from: a */
    public final void m18559a(EnumC8097c cVar) {
        this.zzbcp = cVar.mo17910a();
        this.zzj |= 4;
    }

    /* renamed from: a */
    public final void m18555a(String str) {
        str.getClass();
        this.zzj |= 1;
        this.zzbcn = str;
    }

    /* renamed from: b */
    public final void m18553b(String str) {
        str.getClass();
        this.zzj |= 16;
        this.zzbcr = str;
    }
}
