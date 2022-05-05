package p081h.p203i.p204a.p206b.p207i.p208f;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p206b.p207i.p208f.C6530i;
/* renamed from: h.i.a.b.i.f.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/o.class */
public abstract class AbstractC6542o {

    /* renamed from: h.i.a.b.i.f.o$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/o$a.class */
    public static abstract class AbstractC6543a {
        @NonNull
        /* renamed from: a */
        public abstract AbstractC6543a mo22358a(@Nullable EnumC6544b bVar);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC6543a mo22357a(@Nullable EnumC6545c cVar);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC6542o mo22359a();
    }

    /* renamed from: h.i.a.b.i.f.o$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/o$b.class */
    public enum EnumC6544b {
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
        public static final SparseArray<EnumC6544b> f16294w = new SparseArray<>();

        /* renamed from: a */
        public final int f16296a;

        static {
            f16294w.put(0, UNKNOWN_MOBILE_SUBTYPE);
            f16294w.put(1, GPRS);
            f16294w.put(2, EDGE);
            f16294w.put(3, UMTS);
            f16294w.put(4, CDMA);
            f16294w.put(5, EVDO_0);
            f16294w.put(6, EVDO_A);
            f16294w.put(7, RTT);
            f16294w.put(8, HSDPA);
            f16294w.put(9, HSUPA);
            f16294w.put(10, HSPA);
            f16294w.put(11, IDEN);
            f16294w.put(12, EVDO_B);
            f16294w.put(13, LTE);
            f16294w.put(14, EHRPD);
            f16294w.put(15, HSPAP);
            f16294w.put(16, GSM);
            f16294w.put(17, TD_SCDMA);
            f16294w.put(18, IWLAN);
            f16294w.put(19, LTE_CA);
        }

        EnumC6544b(int i) {
            this.f16296a = i;
        }

        @Nullable
        /* renamed from: a */
        public static EnumC6544b m22355a(int i) {
            return f16294w.get(i);
        }

        /* renamed from: a */
        public int m22356a() {
            return this.f16296a;
        }
    }

    /* renamed from: h.i.a.b.i.f.o$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/o$c.class */
    public enum EnumC6545c {
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
        public static final SparseArray<EnumC6545c> f16316u = new SparseArray<>();

        /* renamed from: a */
        public final int f16318a;

        static {
            f16316u.put(0, MOBILE);
            f16316u.put(1, WIFI);
            f16316u.put(2, MOBILE_MMS);
            f16316u.put(3, MOBILE_SUPL);
            f16316u.put(4, MOBILE_DUN);
            f16316u.put(5, MOBILE_HIPRI);
            f16316u.put(6, WIMAX);
            f16316u.put(7, BLUETOOTH);
            f16316u.put(8, DUMMY);
            f16316u.put(9, ETHERNET);
            f16316u.put(10, MOBILE_FOTA);
            f16316u.put(11, MOBILE_IMS);
            f16316u.put(12, MOBILE_CBS);
            f16316u.put(13, WIFI_P2P);
            f16316u.put(14, MOBILE_IA);
            f16316u.put(15, MOBILE_EMERGENCY);
            f16316u.put(16, PROXY);
            f16316u.put(17, VPN);
            f16316u.put(-1, NONE);
        }

        EnumC6545c(int i) {
            this.f16318a = i;
        }

        @Nullable
        /* renamed from: a */
        public static EnumC6545c m22353a(int i) {
            return f16316u.get(i);
        }

        /* renamed from: a */
        public int m22354a() {
            return this.f16318a;
        }
    }

    @NonNull
    /* renamed from: c */
    public static AbstractC6543a m22360c() {
        return new C6530i.C6532b();
    }

    @Nullable
    /* renamed from: a */
    public abstract EnumC6544b mo22362a();

    @Nullable
    /* renamed from: b */
    public abstract EnumC6545c mo22361b();
}
