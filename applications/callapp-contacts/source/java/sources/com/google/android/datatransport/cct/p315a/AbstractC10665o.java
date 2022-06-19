package com.google.android.datatransport.cct.p315a;

import android.util.SparseArray;
import com.google.android.datatransport.cct.p315a.C10653i;
/* renamed from: com.google.android.datatransport.cct.a.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/o.class */
public abstract class AbstractC10665o {

    /* renamed from: com.google.android.datatransport.cct.a.o$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/o$a.class */
    public static abstract class AbstractC10666a {
        /* renamed from: a */
        public abstract AbstractC10666a mo22530a(EnumC10667b enumC10667b);

        /* renamed from: a */
        public abstract AbstractC10666a mo22529a(EnumC10668c enumC10668c);

        /* renamed from: a */
        public abstract AbstractC10665o mo22531a();
    }

    /* renamed from: com.google.android.datatransport.cct.a.o$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/o$b.class */
    public enum EnumC10667b {
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
        
        private static final SparseArray<EnumC10667b> valueMap;
        private final int value;

        static {
            EnumC10667b enumC10667b = UNKNOWN_MOBILE_SUBTYPE;
            EnumC10667b enumC10667b2 = GPRS;
            EnumC10667b enumC10667b3 = EDGE;
            EnumC10667b enumC10667b4 = UMTS;
            EnumC10667b enumC10667b5 = CDMA;
            EnumC10667b enumC10667b6 = EVDO_0;
            EnumC10667b enumC10667b7 = EVDO_A;
            EnumC10667b enumC10667b8 = RTT;
            EnumC10667b enumC10667b9 = HSDPA;
            EnumC10667b enumC10667b10 = HSUPA;
            EnumC10667b enumC10667b11 = HSPA;
            EnumC10667b enumC10667b12 = IDEN;
            EnumC10667b enumC10667b13 = EVDO_B;
            EnumC10667b enumC10667b14 = LTE;
            EnumC10667b enumC10667b15 = EHRPD;
            EnumC10667b enumC10667b16 = HSPAP;
            EnumC10667b enumC10667b17 = GSM;
            EnumC10667b enumC10667b18 = TD_SCDMA;
            EnumC10667b enumC10667b19 = IWLAN;
            EnumC10667b enumC10667b20 = LTE_CA;
            SparseArray<EnumC10667b> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, enumC10667b);
            sparseArray.put(1, enumC10667b2);
            sparseArray.put(2, enumC10667b3);
            sparseArray.put(3, enumC10667b4);
            sparseArray.put(4, enumC10667b5);
            sparseArray.put(5, enumC10667b6);
            sparseArray.put(6, enumC10667b7);
            sparseArray.put(7, enumC10667b8);
            sparseArray.put(8, enumC10667b9);
            sparseArray.put(9, enumC10667b10);
            sparseArray.put(10, enumC10667b11);
            sparseArray.put(11, enumC10667b12);
            sparseArray.put(12, enumC10667b13);
            sparseArray.put(13, enumC10667b14);
            sparseArray.put(14, enumC10667b15);
            sparseArray.put(15, enumC10667b16);
            sparseArray.put(16, enumC10667b17);
            sparseArray.put(17, enumC10667b18);
            sparseArray.put(18, enumC10667b19);
            sparseArray.put(19, enumC10667b20);
        }

        EnumC10667b(int i) {
            this.value = i;
        }

        public static EnumC10667b forNumber(int i) {
            return valueMap.get(i);
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.o$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/o$c.class */
    public enum EnumC10668c {
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
        
        private static final SparseArray<EnumC10668c> valueMap;
        private final int value;

        static {
            EnumC10668c enumC10668c = MOBILE;
            EnumC10668c enumC10668c2 = WIFI;
            EnumC10668c enumC10668c3 = MOBILE_MMS;
            EnumC10668c enumC10668c4 = MOBILE_SUPL;
            EnumC10668c enumC10668c5 = MOBILE_DUN;
            EnumC10668c enumC10668c6 = MOBILE_HIPRI;
            EnumC10668c enumC10668c7 = WIMAX;
            EnumC10668c enumC10668c8 = BLUETOOTH;
            EnumC10668c enumC10668c9 = DUMMY;
            EnumC10668c enumC10668c10 = ETHERNET;
            EnumC10668c enumC10668c11 = MOBILE_FOTA;
            EnumC10668c enumC10668c12 = MOBILE_IMS;
            EnumC10668c enumC10668c13 = MOBILE_CBS;
            EnumC10668c enumC10668c14 = WIFI_P2P;
            EnumC10668c enumC10668c15 = MOBILE_IA;
            EnumC10668c enumC10668c16 = MOBILE_EMERGENCY;
            EnumC10668c enumC10668c17 = PROXY;
            EnumC10668c enumC10668c18 = VPN;
            EnumC10668c enumC10668c19 = NONE;
            SparseArray<EnumC10668c> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, enumC10668c);
            sparseArray.put(1, enumC10668c2);
            sparseArray.put(2, enumC10668c3);
            sparseArray.put(3, enumC10668c4);
            sparseArray.put(4, enumC10668c5);
            sparseArray.put(5, enumC10668c6);
            sparseArray.put(6, enumC10668c7);
            sparseArray.put(7, enumC10668c8);
            sparseArray.put(8, enumC10668c9);
            sparseArray.put(9, enumC10668c10);
            sparseArray.put(10, enumC10668c11);
            sparseArray.put(11, enumC10668c12);
            sparseArray.put(12, enumC10668c13);
            sparseArray.put(13, enumC10668c14);
            sparseArray.put(14, enumC10668c15);
            sparseArray.put(15, enumC10668c16);
            sparseArray.put(16, enumC10668c17);
            sparseArray.put(17, enumC10668c18);
            sparseArray.put(-1, enumC10668c19);
        }

        EnumC10668c(int i) {
            this.value = i;
        }

        public static EnumC10668c forNumber(int i) {
            return valueMap.get(i);
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* renamed from: c */
    public static AbstractC10666a m22532c() {
        return new C10653i.C10655a();
    }

    /* renamed from: a */
    public abstract EnumC10668c mo22534a();

    /* renamed from: b */
    public abstract EnumC10667b mo22533b();
}
