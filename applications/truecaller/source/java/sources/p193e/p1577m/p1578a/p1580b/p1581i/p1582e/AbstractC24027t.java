package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import android.util.SparseArray;
/* renamed from: e.m.a.b.i.e.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/t.class */
public abstract class AbstractC24027t {

    /* renamed from: e.m.a.b.i.e.t$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/t$a.class */
    public enum EnumC24028a {
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
        public static final SparseArray<EnumC24028a> f66591w;

        /* renamed from: a */
        public final int f66593a;

        static {
            EnumC24028a enumC24028a = UNKNOWN_MOBILE_SUBTYPE;
            EnumC24028a enumC24028a2 = GPRS;
            EnumC24028a enumC24028a3 = EDGE;
            EnumC24028a enumC24028a4 = UMTS;
            EnumC24028a enumC24028a5 = CDMA;
            EnumC24028a enumC24028a6 = EVDO_0;
            EnumC24028a enumC24028a7 = EVDO_A;
            EnumC24028a enumC24028a8 = RTT;
            EnumC24028a enumC24028a9 = HSDPA;
            EnumC24028a enumC24028a10 = HSUPA;
            EnumC24028a enumC24028a11 = HSPA;
            EnumC24028a enumC24028a12 = IDEN;
            EnumC24028a enumC24028a13 = EVDO_B;
            EnumC24028a enumC24028a14 = LTE;
            EnumC24028a enumC24028a15 = EHRPD;
            EnumC24028a enumC24028a16 = HSPAP;
            EnumC24028a enumC24028a17 = GSM;
            EnumC24028a enumC24028a18 = TD_SCDMA;
            EnumC24028a enumC24028a19 = IWLAN;
            EnumC24028a enumC24028a20 = LTE_CA;
            SparseArray<EnumC24028a> sparseArray = new SparseArray<>();
            f66591w = sparseArray;
            sparseArray.put(0, enumC24028a);
            sparseArray.put(1, enumC24028a2);
            sparseArray.put(2, enumC24028a3);
            sparseArray.put(3, enumC24028a4);
            sparseArray.put(4, enumC24028a5);
            sparseArray.put(5, enumC24028a6);
            sparseArray.put(6, enumC24028a7);
            sparseArray.put(7, enumC24028a8);
            sparseArray.put(8, enumC24028a9);
            sparseArray.put(9, enumC24028a10);
            sparseArray.put(10, enumC24028a11);
            sparseArray.put(11, enumC24028a12);
            sparseArray.put(12, enumC24028a13);
            sparseArray.put(13, enumC24028a14);
            sparseArray.put(14, enumC24028a15);
            sparseArray.put(15, enumC24028a16);
            sparseArray.put(16, enumC24028a17);
            sparseArray.put(17, enumC24028a18);
            sparseArray.put(18, enumC24028a19);
            sparseArray.put(19, enumC24028a20);
        }

        EnumC24028a(int i) {
            this.f66593a = i;
        }
    }

    /* renamed from: e.m.a.b.i.e.t$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/t$b.class */
    public enum EnumC24029b {
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
        VPN(17),
        NONE(-1);
        

        /* renamed from: u */
        public static final SparseArray<EnumC24029b> f66613u;

        /* renamed from: a */
        public final int f66615a;

        static {
            EnumC24029b enumC24029b = MOBILE;
            EnumC24029b enumC24029b2 = WIFI;
            EnumC24029b enumC24029b3 = MOBILE_MMS;
            EnumC24029b enumC24029b4 = MOBILE_SUPL;
            EnumC24029b enumC24029b5 = MOBILE_DUN;
            EnumC24029b enumC24029b6 = MOBILE_HIPRI;
            EnumC24029b enumC24029b7 = WIMAX;
            EnumC24029b enumC24029b8 = BLUETOOTH;
            EnumC24029b enumC24029b9 = DUMMY;
            EnumC24029b enumC24029b10 = ETHERNET;
            EnumC24029b enumC24029b11 = MOBILE_FOTA;
            EnumC24029b enumC24029b12 = MOBILE_IMS;
            EnumC24029b enumC24029b13 = MOBILE_CBS;
            EnumC24029b enumC24029b14 = WIFI_P2P;
            EnumC24029b enumC24029b15 = MOBILE_IA;
            EnumC24029b enumC24029b16 = MOBILE_EMERGENCY;
            EnumC24029b enumC24029b17 = PROXY;
            EnumC24029b enumC24029b18 = VPN;
            EnumC24029b enumC24029b19 = NONE;
            SparseArray<EnumC24029b> sparseArray = new SparseArray<>();
            f66613u = sparseArray;
            sparseArray.put(0, enumC24029b);
            sparseArray.put(1, enumC24029b2);
            sparseArray.put(2, enumC24029b3);
            sparseArray.put(3, enumC24029b4);
            sparseArray.put(4, enumC24029b5);
            sparseArray.put(5, enumC24029b6);
            sparseArray.put(6, enumC24029b7);
            sparseArray.put(7, enumC24029b8);
            sparseArray.put(8, enumC24029b9);
            sparseArray.put(9, enumC24029b10);
            sparseArray.put(10, enumC24029b11);
            sparseArray.put(11, enumC24029b12);
            sparseArray.put(12, enumC24029b13);
            sparseArray.put(13, enumC24029b14);
            sparseArray.put(14, enumC24029b15);
            sparseArray.put(15, enumC24029b16);
            sparseArray.put(16, enumC24029b17);
            sparseArray.put(17, enumC24029b18);
            sparseArray.put(-1, enumC24029b19);
        }

        EnumC24029b(int i) {
            this.f66615a = i;
        }
    }

    /* renamed from: a */
    public abstract EnumC24028a mo5596a();

    /* renamed from: b */
    public abstract EnumC24029b mo5595b();
}
