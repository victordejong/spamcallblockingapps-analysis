package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1597b1.AbstractC24193b;
import p193e.p1577m.p1578a.p1596c.p1597b1.C24190a;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24744p;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24784l;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24803x;
/* renamed from: e.m.a.c.p1.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/p.class */
public final class C24744p implements AbstractC24695f, AbstractC24697f0 {

    /* renamed from: n */
    public static final Map<String, int[]> f69344n;

    /* renamed from: o */
    public static final long[] f69345o = {5700000, 3500000, 2000000, 1100000, 470000};

    /* renamed from: p */
    public static final long[] f69346p = {200000, 148000, 132000, 115000, 95000};

    /* renamed from: q */
    public static final long[] f69347q = {2200000, 1300000, 970000, 810000, 490000};

    /* renamed from: r */
    public static final long[] f69348r = {5300000, 3200000, 2000000, 1400000, 690000};

    /* renamed from: s */
    public static C24744p f69349s;

    /* renamed from: a */
    public final Context f69350a;

    /* renamed from: b */
    public final SparseArray<Long> f69351b;

    /* renamed from: c */
    public final C24784l<AbstractC24695f.AbstractC24696a> f69352c;

    /* renamed from: d */
    public final C24803x f69353d;

    /* renamed from: e */
    public final AbstractC24776f f69354e;

    /* renamed from: f */
    public int f69355f;

    /* renamed from: g */
    public long f69356g;

    /* renamed from: h */
    public long f69357h;

    /* renamed from: i */
    public int f69358i;

    /* renamed from: j */
    public long f69359j;

    /* renamed from: k */
    public long f69360k;

    /* renamed from: l */
    public long f69361l;

    /* renamed from: m */
    public long f69362m;

    /* renamed from: e.m.a.c.p1.p$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/p$a.class */
    public static final class C24745a {

        /* renamed from: a */
        public final Context f69363a;

        /* renamed from: b */
        public SparseArray<Long> f69364b;

        /* renamed from: c */
        public int f69365c;

        /* renamed from: d */
        public AbstractC24776f f69366d;

        /* renamed from: e */
        public boolean f69367e;

        /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C24745a(android.content.Context r7) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1634p1.C24744p.C24745a.<init>(android.content.Context):void");
        }

        /* renamed from: a */
        public C24744p m4672a() {
            return new C24744p(this.f69363a, this.f69364b, this.f69365c, this.f69366d, this.f69367e);
        }
    }

    /* renamed from: e.m.a.c.p1.p$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/p$b.class */
    public static class C24746b extends BroadcastReceiver {

        /* renamed from: c */
        public static C24746b f69368c;

        /* renamed from: a */
        public final Handler f69369a = new Handler(Looper.getMainLooper());

        /* renamed from: b */
        public final ArrayList<WeakReference<C24744p>> f69370b = new ArrayList<>();

        /* renamed from: a */
        public final void m4671a() {
            for (int size = this.f69370b.size() - 1; size >= 0; size--) {
                if (this.f69370b.get(size).get() == null) {
                    this.f69370b.remove(size);
                }
            }
        }

        /* renamed from: b */
        public final void m4670b(C24744p c24744p) {
            Map<String, int[]> map = C24744p.f69344n;
            synchronized (c24744p) {
                Context context = c24744p.f69350a;
                int m4613k = context == null ? 0 : C24773d0.m4613k(context);
                if (c24744p.f69358i == m4613k) {
                    return;
                }
                c24744p.f69358i = m4613k;
                if (m4613k == 1 || m4613k == 0 || m4613k == 8) {
                    return;
                }
                c24744p.f69361l = c24744p.m4674h(m4613k);
                long mo4502a = c24744p.f69354e.mo4502a();
                c24744p.m4673i(c24744p.f69355f > 0 ? (int) (mo4502a - c24744p.f69356g) : 0, c24744p.f69357h, c24744p.f69361l);
                c24744p.f69356g = mo4502a;
                c24744p.f69357h = 0L;
                c24744p.f69360k = 0L;
                c24744p.f69359j = 0L;
                C24803x c24803x = c24744p.f69353d;
                c24803x.f69517b.clear();
                c24803x.f69519d = -1;
                c24803x.f69520e = 0;
                c24803x.f69521f = 0;
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (isInitialStickyBroadcast()) {
                    return;
                }
                m4671a();
                for (int i = 0; i < this.f69370b.size(); i++) {
                    C24744p c24744p = this.f69370b.get(i).get();
                    if (c24744p != null) {
                        m4670b(c24744p);
                    }
                }
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("AD", new int[]{1, 1, 0, 0});
        hashMap.put("AE", new int[]{1, 4, 4, 4});
        hashMap.put("AF", new int[]{4, 4, 3, 3});
        hashMap.put("AG", new int[]{3, 1, 0, 1});
        hashMap.put("AI", new int[]{1, 0, 0, 3});
        hashMap.put("AL", new int[]{1, 2, 0, 1});
        hashMap.put("AM", new int[]{2, 2, 2, 2});
        hashMap.put("AO", new int[]{3, 4, 2, 0});
        hashMap.put("AR", new int[]{2, 3, 2, 2});
        hashMap.put("AS", new int[]{3, 0, 4, 2});
        hashMap.put("AT", new int[]{0, 3, 0, 0});
        hashMap.put("AU", new int[]{0, 3, 0, 1});
        hashMap.put("AW", new int[]{1, 1, 0, 3});
        hashMap.put("AX", new int[]{0, 3, 0, 2});
        hashMap.put("AZ", new int[]{3, 3, 3, 3});
        hashMap.put("BA", new int[]{1, 1, 0, 1});
        hashMap.put("BB", new int[]{0, 2, 0, 0});
        hashMap.put("BD", new int[]{2, 1, 3, 3});
        hashMap.put("BE", new int[]{0, 0, 0, 1});
        hashMap.put("BF", new int[]{4, 4, 4, 1});
        hashMap.put("BG", new int[]{0, 1, 0, 0});
        hashMap.put("BH", new int[]{2, 1, 3, 4});
        hashMap.put("BI", new int[]{4, 4, 4, 4});
        hashMap.put("BJ", new int[]{4, 4, 4, 4});
        hashMap.put("BL", new int[]{1, 0, 2, 2});
        hashMap.put("BM", new int[]{1, 2, 0, 0});
        hashMap.put("BN", new int[]{4, 1, 3, 2});
        hashMap.put("BO", new int[]{1, 2, 3, 2});
        hashMap.put("BQ", new int[]{1, 1, 2, 4});
        hashMap.put("BR", new int[]{2, 3, 3, 2});
        hashMap.put("BS", new int[]{2, 1, 1, 4});
        hashMap.put("BT", new int[]{3, 0, 3, 1});
        hashMap.put("BW", new int[]{4, 4, 1, 2});
        hashMap.put("BY", new int[]{0, 1, 1, 2});
        hashMap.put("BZ", new int[]{2, 2, 2, 1});
        hashMap.put("CA", new int[]{0, 3, 1, 3});
        hashMap.put("CD", new int[]{4, 4, 2, 2});
        hashMap.put("CF", new int[]{4, 4, 3, 0});
        hashMap.put("CG", new int[]{3, 4, 2, 4});
        hashMap.put("CH", new int[]{0, 0, 1, 0});
        hashMap.put("CI", new int[]{3, 4, 3, 3});
        hashMap.put("CK", new int[]{2, 4, 1, 0});
        hashMap.put("CL", new int[]{1, 2, 2, 3});
        hashMap.put("CM", new int[]{3, 4, 3, 1});
        hashMap.put("CN", new int[]{2, 0, 2, 3});
        hashMap.put("CO", new int[]{2, 3, 2, 2});
        hashMap.put("CR", new int[]{2, 3, 4, 4});
        hashMap.put("CU", new int[]{4, 4, 3, 1});
        hashMap.put("CV", new int[]{2, 3, 1, 2});
        hashMap.put("CW", new int[]{1, 1, 0, 0});
        hashMap.put("CY", new int[]{1, 1, 0, 0});
        hashMap.put("CZ", new int[]{0, 1, 0, 0});
        hashMap.put("DE", new int[]{0, 1, 1, 3});
        hashMap.put("DJ", new int[]{4, 3, 4, 1});
        hashMap.put("DK", new int[]{0, 0, 1, 1});
        hashMap.put("DM", new int[]{1, 0, 1, 3});
        hashMap.put("DO", new int[]{3, 3, 4, 4});
        hashMap.put("DZ", new int[]{3, 3, 4, 4});
        hashMap.put("EC", new int[]{2, 3, 4, 3});
        hashMap.put("EE", new int[]{0, 1, 0, 0});
        hashMap.put("EG", new int[]{3, 4, 2, 2});
        hashMap.put("EH", new int[]{2, 0, 3, 3});
        hashMap.put("ER", new int[]{4, 2, 2, 0});
        hashMap.put("ES", new int[]{0, 1, 1, 1});
        hashMap.put("ET", new int[]{4, 4, 4, 0});
        hashMap.put("FI", new int[]{0, 0, 1, 0});
        hashMap.put("FJ", new int[]{3, 0, 3, 3});
        hashMap.put("FK", new int[]{3, 4, 2, 2});
        hashMap.put("FM", new int[]{4, 0, 4, 0});
        hashMap.put("FO", new int[]{0, 0, 0, 0});
        hashMap.put("FR", new int[]{1, 0, 3, 1});
        hashMap.put("GA", new int[]{3, 3, 2, 2});
        hashMap.put("GB", new int[]{0, 1, 3, 3});
        hashMap.put("GD", new int[]{2, 0, 4, 4});
        hashMap.put("GE", new int[]{1, 1, 1, 4});
        hashMap.put("GF", new int[]{2, 3, 4, 4});
        hashMap.put("GG", new int[]{0, 1, 0, 0});
        hashMap.put("GH", new int[]{3, 3, 2, 2});
        hashMap.put("GI", new int[]{0, 0, 0, 1});
        hashMap.put("GL", new int[]{2, 2, 0, 2});
        hashMap.put("GM", new int[]{4, 4, 3, 4});
        hashMap.put("GN", new int[]{3, 4, 4, 2});
        hashMap.put("GP", new int[]{2, 1, 1, 4});
        hashMap.put("GQ", new int[]{4, 4, 3, 0});
        hashMap.put("GR", new int[]{1, 1, 0, 2});
        hashMap.put("GT", new int[]{3, 3, 3, 3});
        hashMap.put("GU", new int[]{1, 2, 4, 4});
        hashMap.put("GW", new int[]{4, 4, 4, 1});
        hashMap.put("GY", new int[]{3, 2, 1, 1});
        hashMap.put("HK", new int[]{0, 2, 3, 4});
        hashMap.put("HN", new int[]{3, 2, 3, 2});
        hashMap.put("HR", new int[]{1, 1, 0, 1});
        hashMap.put("HT", new int[]{4, 4, 4, 4});
        hashMap.put("HU", new int[]{0, 1, 0, 0});
        hashMap.put("ID", new int[]{3, 2, 3, 4});
        hashMap.put("IE", new int[]{1, 0, 1, 1});
        hashMap.put("IL", new int[]{0, 0, 2, 3});
        hashMap.put("IM", new int[]{0, 0, 0, 1});
        hashMap.put("IN", new int[]{2, 2, 4, 4});
        hashMap.put("IO", new int[]{4, 2, 2, 2});
        hashMap.put("IQ", new int[]{3, 3, 4, 2});
        hashMap.put("IR", new int[]{3, 0, 2, 2});
        hashMap.put("IS", new int[]{0, 1, 0, 0});
        hashMap.put("IT", new int[]{1, 0, 1, 2});
        hashMap.put("JE", new int[]{1, 0, 0, 1});
        hashMap.put("JM", new int[]{2, 3, 3, 1});
        hashMap.put("JO", new int[]{1, 2, 1, 2});
        hashMap.put("JP", new int[]{0, 2, 1, 1});
        hashMap.put("KE", new int[]{3, 4, 4, 3});
        hashMap.put("KG", new int[]{1, 1, 2, 2});
        hashMap.put("KH", new int[]{1, 0, 4, 4});
        hashMap.put("KI", new int[]{4, 4, 4, 4});
        hashMap.put("KM", new int[]{4, 3, 2, 3});
        hashMap.put("KN", new int[]{1, 0, 1, 3});
        hashMap.put("KP", new int[]{4, 2, 4, 2});
        hashMap.put("KR", new int[]{0, 1, 1, 1});
        hashMap.put("KW", new int[]{2, 3, 1, 1});
        hashMap.put("KY", new int[]{1, 1, 0, 1});
        hashMap.put("KZ", new int[]{1, 2, 2, 3});
        hashMap.put("LA", new int[]{2, 2, 1, 1});
        hashMap.put("LB", new int[]{3, 2, 0, 0});
        hashMap.put("LC", new int[]{1, 1, 0, 0});
        hashMap.put("LI", new int[]{0, 0, 2, 4});
        hashMap.put("LK", new int[]{2, 1, 2, 3});
        hashMap.put("LR", new int[]{3, 4, 3, 1});
        hashMap.put("LS", new int[]{3, 3, 2, 0});
        hashMap.put("LT", new int[]{0, 0, 0, 0});
        hashMap.put("LU", new int[]{0, 0, 0, 0});
        hashMap.put("LV", new int[]{0, 0, 0, 0});
        hashMap.put("LY", new int[]{4, 4, 4, 4});
        hashMap.put(RequestConfiguration.MAX_AD_CONTENT_RATING_MA, new int[]{2, 1, 2, 1});
        hashMap.put("MC", new int[]{0, 0, 0, 1});
        hashMap.put("MD", new int[]{1, 1, 0, 0});
        hashMap.put("ME", new int[]{1, 2, 1, 2});
        hashMap.put("MF", new int[]{1, 1, 1, 1});
        hashMap.put("MG", new int[]{3, 4, 2, 2});
        hashMap.put("MH", new int[]{4, 0, 2, 4});
        hashMap.put("MK", new int[]{1, 0, 0, 0});
        hashMap.put("ML", new int[]{4, 4, 2, 0});
        hashMap.put("MM", new int[]{3, 3, 1, 2});
        hashMap.put("MN", new int[]{2, 3, 2, 3});
        hashMap.put("MO", new int[]{0, 0, 4, 4});
        hashMap.put("MP", new int[]{0, 2, 4, 4});
        hashMap.put("MQ", new int[]{2, 1, 1, 4});
        hashMap.put("MR", new int[]{4, 2, 4, 2});
        hashMap.put("MS", new int[]{1, 2, 3, 3});
        hashMap.put("MT", new int[]{0, 1, 0, 0});
        hashMap.put("MU", new int[]{2, 2, 3, 4});
        hashMap.put("MV", new int[]{4, 3, 0, 2});
        hashMap.put("MW", new int[]{3, 2, 1, 0});
        hashMap.put("MX", new int[]{2, 4, 4, 3});
        hashMap.put("MY", new int[]{2, 2, 3, 3});
        hashMap.put("MZ", new int[]{3, 3, 2, 1});
        hashMap.put(AnalyticsConstants.NOT_AVAILABLE, new int[]{3, 3, 2, 1});
        hashMap.put("NC", new int[]{2, 0, 3, 3});
        hashMap.put("NE", new int[]{4, 4, 4, 3});
        hashMap.put("NF", new int[]{1, 2, 2, 2});
        hashMap.put("NG", new int[]{3, 4, 3, 1});
        hashMap.put("NI", new int[]{3, 3, 4, 4});
        hashMap.put("NL", new int[]{0, 2, 3, 3});
        hashMap.put("NO", new int[]{0, 1, 1, 0});
        hashMap.put("NP", new int[]{2, 2, 2, 2});
        hashMap.put("NR", new int[]{4, 0, 3, 1});
        hashMap.put("NZ", new int[]{0, 0, 1, 2});
        hashMap.put("OM", new int[]{3, 2, 1, 3});
        hashMap.put("PA", new int[]{1, 3, 3, 4});
        hashMap.put("PE", new int[]{2, 3, 4, 4});
        hashMap.put("PF", new int[]{2, 2, 0, 1});
        hashMap.put(RequestConfiguration.MAX_AD_CONTENT_RATING_PG, new int[]{4, 3, 3, 1});
        hashMap.put("PH", new int[]{3, 0, 3, 4});
        hashMap.put("PK", new int[]{3, 3, 3, 3});
        hashMap.put("PL", new int[]{1, 0, 1, 3});
        hashMap.put("PM", new int[]{0, 2, 2, 0});
        hashMap.put("PR", new int[]{1, 2, 3, 3});
        hashMap.put("PS", new int[]{3, 3, 2, 4});
        hashMap.put("PT", new int[]{1, 1, 0, 0});
        hashMap.put("PW", new int[]{2, 1, 2, 0});
        hashMap.put("PY", new int[]{2, 0, 2, 3});
        hashMap.put("QA", new int[]{2, 2, 1, 2});
        hashMap.put("RE", new int[]{1, 0, 2, 2});
        hashMap.put("RO", new int[]{0, 1, 1, 2});
        hashMap.put("RS", new int[]{1, 2, 0, 0});
        hashMap.put("RU", new int[]{0, 1, 1, 1});
        hashMap.put("RW", new int[]{4, 4, 2, 4});
        hashMap.put("SA", new int[]{2, 2, 2, 1});
        hashMap.put("SB", new int[]{4, 4, 3, 0});
        hashMap.put("SC", new int[]{4, 2, 0, 1});
        hashMap.put("SD", new int[]{4, 4, 4, 3});
        hashMap.put("SE", new int[]{0, 1, 0, 0});
        hashMap.put("SG", new int[]{0, 2, 3, 3});
        hashMap.put("SH", new int[]{4, 4, 2, 3});
        hashMap.put("SI", new int[]{0, 0, 0, 0});
        hashMap.put("SJ", new int[]{2, 0, 2, 4});
        hashMap.put("SK", new int[]{0, 1, 0, 0});
        hashMap.put("SL", new int[]{4, 3, 3, 3});
        hashMap.put("SM", new int[]{0, 0, 2, 4});
        hashMap.put("SN", new int[]{3, 4, 4, 2});
        hashMap.put("SO", new int[]{3, 4, 4, 3});
        hashMap.put("SR", new int[]{2, 2, 1, 0});
        hashMap.put("SS", new int[]{4, 3, 4, 3});
        hashMap.put("ST", new int[]{3, 4, 2, 2});
        hashMap.put("SV", new int[]{2, 3, 3, 4});
        hashMap.put("SX", new int[]{2, 4, 1, 0});
        hashMap.put("SY", new int[]{4, 3, 2, 1});
        hashMap.put("SZ", new int[]{4, 4, 3, 4});
        hashMap.put("TC", new int[]{1, 2, 1, 1});
        hashMap.put("TD", new int[]{4, 4, 4, 2});
        hashMap.put("TG", new int[]{3, 3, 1, 0});
        hashMap.put("TH", new int[]{1, 3, 4, 4});
        hashMap.put("TJ", new int[]{4, 4, 4, 4});
        hashMap.put("TL", new int[]{4, 2, 4, 4});
        hashMap.put("TM", new int[]{4, 1, 2, 2});
        hashMap.put("TN", new int[]{2, 2, 1, 2});
        hashMap.put("TO", new int[]{3, 3, 3, 1});
        hashMap.put("TR", new int[]{2, 2, 1, 2});
        hashMap.put("TT", new int[]{1, 3, 1, 2});
        hashMap.put("TV", new int[]{4, 2, 2, 4});
        hashMap.put("TW", new int[]{0, 0, 0, 0});
        hashMap.put("TZ", new int[]{3, 3, 4, 3});
        hashMap.put("UA", new int[]{0, 2, 1, 2});
        hashMap.put("UG", new int[]{4, 3, 3, 2});
        hashMap.put("US", new int[]{1, 1, 3, 3});
        hashMap.put("UY", new int[]{2, 2, 1, 1});
        hashMap.put("UZ", new int[]{2, 2, 2, 2});
        hashMap.put("VA", new int[]{1, 2, 4, 2});
        hashMap.put("VC", new int[]{2, 0, 2, 4});
        hashMap.put("VE", new int[]{4, 4, 4, 3});
        hashMap.put("VG", new int[]{3, 0, 1, 3});
        hashMap.put("VI", new int[]{1, 1, 4, 4});
        hashMap.put("VN", new int[]{0, 2, 4, 4});
        hashMap.put("VU", new int[]{4, 1, 3, 1});
        hashMap.put("WS", new int[]{3, 3, 3, 2});
        hashMap.put("XK", new int[]{1, 2, 1, 0});
        hashMap.put("YE", new int[]{4, 4, 4, 3});
        hashMap.put("YT", new int[]{2, 2, 2, 3});
        hashMap.put("ZA", new int[]{2, 4, 2, 2});
        hashMap.put("ZM", new int[]{3, 2, 2, 1});
        hashMap.put("ZW", new int[]{3, 3, 2, 1});
        f69344n = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public C24744p() {
        this(null, new SparseArray(), 2000, AbstractC24776f.f69443a, false);
    }

    public C24744p(Context context, SparseArray<Long> sparseArray, int i, AbstractC24776f abstractC24776f, boolean z) {
        final C24746b c24746b;
        this.f69350a = context == null ? null : context.getApplicationContext();
        this.f69351b = sparseArray;
        this.f69352c = new C24784l<>();
        this.f69353d = new C24803x(i);
        this.f69354e = abstractC24776f;
        int m4613k = context == null ? 0 : C24773d0.m4613k(context);
        this.f69358i = m4613k;
        this.f69361l = m4674h(m4613k);
        if (context == null || !z) {
            return;
        }
        C24746b c24746b2 = C24746b.f69368c;
        synchronized (C24746b.class) {
            try {
                if (C24746b.f69368c == null) {
                    C24746b.f69368c = new C24746b();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    context.registerReceiver(C24746b.f69368c, intentFilter);
                }
                c24746b = C24746b.f69368c;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (c24746b) {
            c24746b.m4671a();
            c24746b.f69370b.add(new WeakReference<>(this));
            c24746b.f69369a.post(new Runnable() { // from class: e.m.a.c.p1.a
                @Override // java.lang.Runnable
                public final void run() {
                    C24744p.C24746b.this.m4670b(this);
                }
            });
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f
    /* renamed from: a */
    public AbstractC24697f0 mo4681a() {
        return this;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0
    /* renamed from: b */
    public void mo4680b(AbstractC24739l abstractC24739l, C24742n c24742n, boolean z) {
        synchronized (this) {
            if (!z) {
                return;
            }
            C26232y.m2286x(this.f69355f > 0);
            long mo4502a = this.f69354e.mo4502a();
            int i = (int) (mo4502a - this.f69356g);
            this.f69359j += i;
            long j = this.f69360k;
            long j2 = this.f69357h;
            this.f69360k = j + j2;
            if (i > 0) {
                this.f69353d.m4506a((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.f69359j >= 2000 || this.f69360k >= 524288) {
                    this.f69361l = this.f69353d.m4505b(0.5f);
                }
                m4673i(i, this.f69357h, this.f69361l);
                this.f69356g = mo4502a;
                this.f69357h = 0L;
            }
            this.f69355f--;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0
    /* renamed from: c */
    public void mo4679c(AbstractC24739l abstractC24739l, C24742n c24742n, boolean z, int i) {
        synchronized (this) {
            if (!z) {
                return;
            }
            this.f69357h += i;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f
    /* renamed from: d */
    public void mo4678d(Handler handler, AbstractC24695f.AbstractC24696a abstractC24696a) {
        this.f69352c.m4588a(handler, abstractC24696a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0
    /* renamed from: e */
    public void mo4677e(AbstractC24739l abstractC24739l, C24742n c24742n, boolean z) {
        synchronized (this) {
            if (!z) {
                return;
            }
            if (this.f69355f == 0) {
                this.f69356g = this.f69354e.mo4502a();
            }
            this.f69355f++;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f
    /* renamed from: f */
    public void mo4676f(AbstractC24695f.AbstractC24696a abstractC24696a) {
        this.f69352c.m4586c(abstractC24696a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0
    /* renamed from: g */
    public void mo4675g(AbstractC24739l abstractC24739l, C24742n c24742n, boolean z) {
    }

    /* renamed from: h */
    public final long m4674h(int i) {
        Long l = this.f69351b.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.f69351b.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    /* renamed from: i */
    public final void m4673i(final int i, final long j, final long j2) {
        if (i == 0 && j == 0 && j2 == this.f69362m) {
            return;
        }
        this.f69362m = j2;
        this.f69352c.m4587b(new C24784l.AbstractC24785a() { // from class: e.m.a.c.p1.b
            @Override // p193e.p1577m.p1578a.p1596c.p1636q1.C24784l.AbstractC24785a
            /* renamed from: a */
            public final void mo4585a(Object obj) {
                C24190a.C24191a c24191a;
                C24190a c24190a = (C24190a) ((AbstractC24695f.AbstractC24696a) obj);
                C24190a.C24192b c24192b = c24190a.f66949d;
                if (c24192b.f66954a.isEmpty()) {
                    c24191a = null;
                } else {
                    ArrayList<C24190a.C24191a> arrayList = c24192b.f66954a;
                    c24191a = arrayList.get(arrayList.size() - 1);
                }
                c24190a.m5498t(c24191a);
                Iterator<AbstractC24193b> it = c24190a.f66946a.iterator();
                while (it.hasNext()) {
                    it.next().m5473i();
                }
            }
        });
    }
}
