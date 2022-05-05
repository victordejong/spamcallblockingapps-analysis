package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.y1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/y1.class */
public final class C8454y1 extends AbstractC8228l9<C8454y1, C8456b> implements AbstractC8430wa {
    public static final C8454y1 zzbah;
    public static volatile AbstractC8129gb<C8454y1> zzh;
    public int zzbae;
    public int zzbaf;
    public int zzbag;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.y1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/y1$a.class */
    public enum EnumC8455a implements AbstractC8286o9 {
        UNKNOWN_FORMAT(0),
        NV16(1),
        NV21(2),
        YV12(3),
        YUV_420_888(7),
        JPEG(8),
        BITMAP(4),
        CM_SAMPLE_BUFFER_REF(5),
        UI_IMAGE(6);
        

        /* renamed from: a */
        public final int f19440a;

        static {
            new C8006a5();
        }

        EnumC8455a(int i) {
            this.f19440a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m17994b() {
            return C8477z4.f19499a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19440a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8455a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19440a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.y1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/y1$b.class */
    public static final class C8456b extends AbstractC8228l9.C8230b<C8454y1, C8456b> implements AbstractC8430wa {
        public C8456b() {
            super(C8454y1.zzbah);
        }

        public /* synthetic */ C8456b(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8454y1 y1Var = new C8454y1();
        zzbah = y1Var;
        AbstractC8228l9.m18357a(C8454y1.class, y1Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8454y1();
            case 2:
                return new C8456b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbah, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဋ\u0001\u0003ဋ\u0002", new Object[]{"zzj", "zzbae", EnumC8455a.m17994b(), "zzbaf", "zzbag"});
            case 4:
                return zzbah;
            case 5:
                AbstractC8129gb<C8454y1> gbVar = zzh;
                AbstractC8129gb<C8454y1> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8454y1.class) {
                        try {
                            AbstractC8129gb<C8454y1> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbah);
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
