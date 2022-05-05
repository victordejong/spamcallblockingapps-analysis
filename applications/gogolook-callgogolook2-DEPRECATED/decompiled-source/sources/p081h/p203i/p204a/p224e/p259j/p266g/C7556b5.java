package p081h.p203i.p204a.p224e.p259j.p266g;

import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
/* renamed from: h.i.a.e.j.g.b5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/b5.class */
public final class C7556b5 extends AbstractC7583f1<C7556b5, C7557a> implements AbstractC7646m2 {
    public static final C7556b5 zzbfc = new C7556b5();
    public static volatile AbstractC7702u2<C7556b5> zzbg;
    public int zzbb;
    public int zzbfa = -1;
    public int zzbfb;

    /* renamed from: h.i.a.e.j.g.b5$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/b5$a.class */
    public static final class C7557a extends AbstractC7583f1.C7584a<C7556b5, C7557a> implements AbstractC7646m2 {
        public C7557a() {
            super(C7556b5.zzbfc);
        }

        public /* synthetic */ C7557a(C7573d5 d5Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.g.b5$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/b5$b.class */
    public enum EnumC7558b implements AbstractC7612i1 {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);
        

        /* renamed from: w */
        public static final AbstractC7619j1<EnumC7558b> f17756w = new C7580e5();

        /* renamed from: a */
        public final int f17758a;

        EnumC7558b(int i) {
            this.f17758a = i;
        }

        /* renamed from: a */
        public static EnumC7558b m20303a(int i) {
            if (i == 100) {
                return COMBINED;
            }
            switch (i) {
                case 0:
                    return UNKNOWN_MOBILE_SUBTYPE;
                case 1:
                    return GPRS;
                case 2:
                    return EDGE;
                case 3:
                    return UMTS;
                case 4:
                    return CDMA;
                case 5:
                    return EVDO_0;
                case 6:
                    return EVDO_A;
                case 7:
                    return RTT;
                case 8:
                    return HSDPA;
                case 9:
                    return HSUPA;
                case 10:
                    return HSPA;
                case 11:
                    return IDEN;
                case 12:
                    return EVDO_B;
                case 13:
                    return LTE;
                case 14:
                    return EHRPD;
                case 15:
                    return HSPAP;
                case 16:
                    return GSM;
                case 17:
                    return TD_SCDMA;
                case 18:
                    return IWLAN;
                case 19:
                    return LTE_CA;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static AbstractC7619j1<EnumC7558b> m20304a() {
            return f17756w;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7612i1
        /* renamed from: C */
        public final int mo20100C() {
            return this.f17758a;
        }
    }

    /* renamed from: h.i.a.e.j.g.b5$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/b5$c.class */
    public enum EnumC7559c implements AbstractC7612i1 {
        NONE(-1),
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17);
        

        /* renamed from: u */
        public static final AbstractC7619j1<EnumC7559c> f17778u = new C7592f5();

        /* renamed from: a */
        public final int f17780a;

        EnumC7559c(int i) {
            this.f17780a = i;
        }

        /* renamed from: a */
        public static EnumC7559c m20301a(int i) {
            switch (i) {
                case -1:
                    return NONE;
                case 0:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 2:
                    return MOBILE_MMS;
                case 3:
                    return MOBILE_SUPL;
                case 4:
                    return MOBILE_DUN;
                case 5:
                    return MOBILE_HIPRI;
                case 6:
                    return WIMAX;
                case 7:
                    return BLUETOOTH;
                case 8:
                    return DUMMY;
                case 9:
                    return ETHERNET;
                case 10:
                    return MOBILE_FOTA;
                case 11:
                    return MOBILE_IMS;
                case 12:
                    return MOBILE_CBS;
                case 13:
                    return WIFI_P2P;
                case 14:
                    return MOBILE_IA;
                case 15:
                    return MOBILE_EMERGENCY;
                case 16:
                    return PROXY;
                case 17:
                    return VPN;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static AbstractC7619j1<EnumC7559c> m20302a() {
            return f17778u;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7612i1
        /* renamed from: C */
        public final int mo20100C() {
            return this.f17780a;
        }
    }

    static {
        AbstractC7583f1.m20171a(C7556b5.class, zzbfc);
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [h.i.a.e.j.g.f1$b, h.i.a.e.j.g.u2<h.i.a.e.j.g.b5>] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo20118a(int r8, java.lang.Object r9, java.lang.Object r10) {
        /*
            r7 = this;
            int[] r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7573d5.f17813a
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x00ac;
                case 2: goto L_0x00a3;
                case 3: goto L_0x0077;
                case 4: goto L_0x0073;
                case 5: goto L_0x003f;
                case 6: goto L_0x003a;
                case 7: goto L_0x0038;
                default: goto L_0x0030;
            }
        L_0x0030:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0038:
            r0 = 0
            return r0
        L_0x003a:
            r0 = 1
            java.lang.Byte r0 = java.lang.Byte.valueOf(r0)
            return r0
        L_0x003f:
            h.i.a.e.j.g.u2<h.i.a.e.j.g.b5> r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.zzbg
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0071
            java.lang.Class<h.i.a.e.j.g.b5> r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.class
            monitor-enter(r0)
            h.i.a.e.j.g.u2<h.i.a.e.j.g.b5> r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.zzbg     // Catch: all -> 0x006b
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0065
            h.i.a.e.j.g.f1$b r0 = new h.i.a.e.j.g.f1$b     // Catch: all -> 0x006b
            r9 = r0
            r0 = r9
            h.i.a.e.j.g.b5 r1 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.zzbfc     // Catch: all -> 0x006b
            r0.<init>(r1)     // Catch: all -> 0x006b
            r0 = r9
            p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.zzbg = r0     // Catch: all -> 0x006b
        L_0x0065:
            java.lang.Class<h.i.a.e.j.g.b5> r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.class
            monitor-exit(r0)     // Catch: all -> 0x006b
            goto L_0x0071
        L_0x006b:
            r9 = move-exception
            java.lang.Class<h.i.a.e.j.g.b5> r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.class
            monitor-exit(r0)     // Catch: all -> 0x006b
            r0 = r9
            throw r0
        L_0x0071:
            r0 = r9
            return r0
        L_0x0073:
            h.i.a.e.j.g.b5 r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.zzbfc
            return r0
        L_0x0077:
            h.i.a.e.j.g.j1 r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.EnumC7559c.m20302a()
            r10 = r0
            h.i.a.e.j.g.j1 r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.EnumC7558b.m20304a()
            r9 = r0
            h.i.a.e.j.g.b5 r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.zzbfc
            java.lang.String r1 = "\u0001\u0002��\u0001\u0001\u0002\u0002\u0003������\u0001\f��\u0002\f\u0001"
            r2 = 5
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "zzbb"
            r3[r4] = r5
            r3 = r2
            r4 = 1
            java.lang.String r5 = "zzbfa"
            r3[r4] = r5
            r3 = r2
            r4 = 2
            r5 = r10
            r3[r4] = r5
            r3 = r2
            r4 = 3
            java.lang.String r5 = "zzbfb"
            r3[r4] = r5
            r3 = r2
            r4 = 4
            r5 = r9
            r3[r4] = r5
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1.m20173a(r0, r1, r2)
            return r0
        L_0x00a3:
            h.i.a.e.j.g.b5$a r0 = new h.i.a.e.j.g.b5$a
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            return r0
        L_0x00ac:
            h.i.a.e.j.g.b5 r0 = new h.i.a.e.j.g.b5
            r1 = r0
            r1.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7556b5.mo20118a(int, java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
