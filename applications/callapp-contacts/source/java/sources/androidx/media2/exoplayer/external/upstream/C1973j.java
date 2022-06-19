package androidx.media2.exoplayer.external.upstream;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.p008v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.upstream.C1973j;
import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2003f;
import androidx.media2.exoplayer.external.util.C2021s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.upstream.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/j.class */
public final class C1973j implements AbstractC1964c, AbstractC1990w {

    /* renamed from: a */
    public static final Map<String, int[]> f7969a;

    /* renamed from: b */
    public static final long[] f7970b = {5400000, 3400000, 1900000, 1100000, 400000};

    /* renamed from: c */
    public static final long[] f7971c = {170000, 139000, 122000, 107000, 90000};

    /* renamed from: d */
    public static final long[] f7972d = {2100000, 1300000, 960000, 770000, 450000};

    /* renamed from: e */
    public static final long[] f7973e = {6000000, 3400000, 2100000, 1400000, 570000};

    /* renamed from: f */
    private static C1973j f7974f;

    /* renamed from: g */
    private final Context f7975g;

    /* renamed from: h */
    private final SparseArray<Long> f7976h;

    /* renamed from: i */
    private final C2003f<AbstractC1964c.AbstractC1965a> f7977i;

    /* renamed from: j */
    private final C2021s f7978j;

    /* renamed from: k */
    private final AbstractC1999b f7979k;

    /* renamed from: l */
    private int f7980l;

    /* renamed from: m */
    private long f7981m;

    /* renamed from: n */
    private long f7982n;

    /* renamed from: o */
    private int f7983o;

    /* renamed from: p */
    private long f7984p;

    /* renamed from: q */
    private long f7985q;

    /* renamed from: r */
    private long f7986r;

    /* renamed from: s */
    private long f7987s;

    /* renamed from: t */
    private boolean f7988t;

    /* renamed from: u */
    private int f7989u;

    /* renamed from: androidx.media2.exoplayer.external.upstream.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/j$a.class */
    public static final class C1975a {

        /* renamed from: a */
        final Context f7990a;

        /* renamed from: b */
        SparseArray<Long> f7991b;

        /* renamed from: c */
        int f7992c;

        /* renamed from: d */
        AbstractC1999b f7993d;

        /* renamed from: e */
        boolean f7994e;

        public C1975a(Context context) {
            this.f7990a = context == null ? null : context.getApplicationContext();
            int[] iArr = C1973j.f7969a.get(C1996ac.m41633b(context));
            int[] iArr2 = iArr == null ? new int[]{2, 2, 2, 2} : iArr;
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, 1000000L);
            sparseArray.append(2, Long.valueOf(C1973j.f7970b[iArr2[0]]));
            sparseArray.append(3, Long.valueOf(C1973j.f7971c[iArr2[1]]));
            sparseArray.append(4, Long.valueOf(C1973j.f7972d[iArr2[2]]));
            sparseArray.append(5, Long.valueOf(C1973j.f7973e[iArr2[3]]));
            sparseArray.append(7, Long.valueOf(C1973j.f7970b[iArr2[0]]));
            this.f7991b = sparseArray;
            this.f7992c = 2000;
            this.f7993d = AbstractC1999b.f8075a;
            this.f7994e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.upstream.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/j$b.class */
    public static final class C1976b extends BroadcastReceiver {

        /* renamed from: a */
        private static C1976b f7995a;

        /* renamed from: b */
        private final Handler f7996b = new Handler(Looper.getMainLooper());

        /* renamed from: c */
        private final ArrayList<WeakReference<C1973j>> f7997c = new ArrayList<>();

        private C1976b() {
        }

        /* renamed from: a */
        public static C1976b m41715a(Context context) {
            C1976b c1976b;
            synchronized (C1976b.class) {
                try {
                    if (f7995a == null) {
                        f7995a = new C1976b();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f7995a, intentFilter);
                    }
                    c1976b = f7995a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c1976b;
        }

        /* renamed from: a */
        private void m41716a() {
            for (int size = this.f7997c.size() - 1; size >= 0; size--) {
                if (this.f7997c.get(size).get() == null) {
                    this.f7997c.remove(size);
                }
            }
        }

        /* renamed from: b */
        public static void m41713b(C1973j c1973j) {
            c1973j.m41717c();
        }

        /* renamed from: a */
        public final void m41714a(C1973j c1973j) {
            synchronized (this) {
                m41716a();
                this.f7997c.add(new WeakReference<>(c1973j));
                this.f7996b.post(new Runnable(this, c1973j) { // from class: androidx.media2.exoplayer.external.upstream.l

                    /* renamed from: a */
                    private final C1973j.C1976b f8001a;

                    /* renamed from: b */
                    private final C1973j f8002b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8001a = this;
                        this.f8002b = c1973j;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        C1973j.C1976b.m41713b(this.f8002b);
                    }
                });
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (isInitialStickyBroadcast()) {
                    return;
                }
                m41716a();
                for (int i = 0; i < this.f7997c.size(); i++) {
                    C1973j c1973j = this.f7997c.get(i).get();
                    if (c1973j != null) {
                        c1973j.m41717c();
                    }
                }
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("AD", new int[]{1, 0, 0, 1});
        hashMap.put("AE", new int[]{1, 4, 4, 4});
        hashMap.put("AF", new int[]{4, 4, 3, 3});
        hashMap.put("AG", new int[]{3, 2, 1, 1});
        hashMap.put("AI", new int[]{1, 0, 1, 3});
        hashMap.put("AL", new int[]{1, 2, 1, 1});
        hashMap.put("AM", new int[]{2, 2, 3, 2});
        hashMap.put("AO", new int[]{3, 4, 2, 0});
        hashMap.put("AQ", new int[]{4, 2, 2, 2});
        hashMap.put("AR", new int[]{2, 3, 2, 2});
        hashMap.put("AS", new int[]{3, 3, 4, 1});
        hashMap.put("AT", new int[]{0, 2, 0, 0});
        hashMap.put("AU", new int[]{0, 1, 1, 1});
        hashMap.put("AW", new int[]{1, 1, 0, 2});
        hashMap.put("AX", new int[]{0, 2, 1, 0});
        hashMap.put("AZ", new int[]{3, 3, 2, 2});
        hashMap.put("BA", new int[]{1, 1, 1, 2});
        hashMap.put("BB", new int[]{0, 1, 0, 0});
        hashMap.put("BD", new int[]{2, 2, 3, 2});
        hashMap.put("BE", new int[]{0, 0, 0, 1});
        hashMap.put("BF", new int[]{4, 4, 3, 1});
        hashMap.put("BG", new int[]{0, 1, 0, 0});
        hashMap.put("BH", new int[]{2, 1, 3, 4});
        hashMap.put("BI", new int[]{4, 3, 4, 4});
        hashMap.put("BJ", new int[]{4, 3, 4, 4});
        hashMap.put("BL", new int[]{1, 0, 2, 3});
        hashMap.put("BM", new int[]{1, 0, 0, 0});
        hashMap.put("BN", new int[]{4, 2, 3, 3});
        hashMap.put("BO", new int[]{2, 2, 3, 2});
        hashMap.put("BQ", new int[]{1, 0, 3, 4});
        hashMap.put("BR", new int[]{2, 3, 3, 2});
        hashMap.put("BS", new int[]{2, 0, 1, 4});
        hashMap.put("BT", new int[]{3, 0, 2, 1});
        hashMap.put("BW", new int[]{4, 4, 1, 2});
        hashMap.put("BY", new int[]{0, 1, 1, 2});
        hashMap.put("BZ", new int[]{2, 2, 3, 1});
        hashMap.put("CA", new int[]{0, 3, 3, 3});
        hashMap.put("CD", new int[]{4, 4, 3, 2});
        hashMap.put("CF", new int[]{4, 3, 3, 4});
        hashMap.put("CG", new int[]{4, 4, 4, 4});
        hashMap.put("CH", new int[]{0, 0, 1, 1});
        hashMap.put("CI", new int[]{3, 4, 3, 3});
        hashMap.put("CK", new int[]{2, 4, 1, 0});
        hashMap.put("CL", new int[]{2, 2, 2, 3});
        hashMap.put("CM", new int[]{3, 4, 2, 1});
        hashMap.put("CN", new int[]{2, 2, 2, 3});
        hashMap.put("CO", new int[]{2, 3, 2, 2});
        hashMap.put("CR", new int[]{2, 2, 4, 4});
        hashMap.put("CU", new int[]{4, 4, 3, 1});
        hashMap.put("CV", new int[]{2, 3, 2, 4});
        hashMap.put("CW", new int[]{1, 0, 0, 0});
        hashMap.put("CX", new int[]{2, 2, 2, 2});
        hashMap.put("CY", new int[]{1, 1, 1, 1});
        hashMap.put("CZ", new int[]{0, 1, 0, 0});
        hashMap.put("DE", new int[]{0, 2, 2, 2});
        hashMap.put("DJ", new int[]{3, 3, 4, 0});
        hashMap.put("DK", new int[]{0, 0, 0, 0});
        hashMap.put("DM", new int[]{1, 0, 0, 3});
        hashMap.put("DO", new int[]{3, 3, 4, 4});
        hashMap.put("DZ", new int[]{3, 3, 4, 4});
        hashMap.put("EC", new int[]{2, 4, 4, 2});
        hashMap.put("EE", new int[]{0, 0, 0, 0});
        hashMap.put("EG", new int[]{3, 4, 2, 2});
        hashMap.put("EH", new int[]{2, 0, 3, 3});
        hashMap.put("ER", new int[]{4, 2, 2, 2});
        hashMap.put("ES", new int[]{0, 1, 1, 1});
        hashMap.put("ET", new int[]{4, 4, 4, 0});
        hashMap.put("FI", new int[]{0, 0, 1, 0});
        hashMap.put("FJ", new int[]{3, 1, 3, 3});
        hashMap.put("FK", new int[]{4, 2, 2, 3});
        hashMap.put("FM", new int[]{4, 2, 4, 0});
        hashMap.put("FO", new int[]{0, 0, 0, 0});
        hashMap.put("FR", new int[]{1, 0, 3, 1});
        hashMap.put("GA", new int[]{3, 3, 2, 1});
        hashMap.put("GB", new int[]{0, 1, 3, 3});
        hashMap.put("GD", new int[]{2, 0, 4, 4});
        hashMap.put("GE", new int[]{1, 1, 0, 3});
        hashMap.put("GF", new int[]{1, 2, 4, 4});
        hashMap.put("GG", new int[]{0, 0, 0, 0});
        hashMap.put("GH", new int[]{3, 3, 3, 2});
        hashMap.put("GI", new int[]{0, 0, 0, 1});
        hashMap.put("GL", new int[]{2, 2, 3, 4});
        hashMap.put("GM", new int[]{4, 3, 3, 2});
        hashMap.put("GN", new int[]{4, 4, 4, 0});
        hashMap.put("GP", new int[]{2, 2, 1, 3});
        hashMap.put("GQ", new int[]{4, 3, 3, 0});
        hashMap.put("GR", new int[]{1, 1, 0, 1});
        hashMap.put("GT", new int[]{3, 3, 3, 4});
        hashMap.put("GU", new int[]{1, 2, 4, 4});
        hashMap.put("GW", new int[]{4, 4, 4, 0});
        hashMap.put("GY", new int[]{3, 4, 1, 0});
        hashMap.put("HK", new int[]{0, 1, 4, 4});
        hashMap.put("HN", new int[]{3, 3, 2, 2});
        hashMap.put("HR", new int[]{1, 0, 0, 2});
        hashMap.put("HT", new int[]{3, 4, 4, 3});
        hashMap.put("HU", new int[]{0, 0, 1, 0});
        hashMap.put("ID", new int[]{3, 2, 3, 4});
        hashMap.put("IE", new int[]{0, 0, 3, 2});
        hashMap.put("IL", new int[]{0, 1, 2, 3});
        hashMap.put("IM", new int[]{0, 0, 0, 1});
        hashMap.put("IN", new int[]{2, 2, 4, 4});
        hashMap.put("IO", new int[]{4, 4, 2, 2});
        hashMap.put("IQ", new int[]{3, 3, 4, 4});
        hashMap.put("IR", new int[]{1, 0, 1, 0});
        hashMap.put("IS", new int[]{0, 0, 0, 0});
        hashMap.put("IT", new int[]{1, 0, 1, 1});
        hashMap.put("JE", new int[]{1, 0, 0, 1});
        hashMap.put("JM", new int[]{3, 2, 2, 1});
        hashMap.put("JO", new int[]{1, 1, 1, 2});
        hashMap.put("JP", new int[]{0, 2, 2, 2});
        hashMap.put("KE", new int[]{3, 3, 3, 3});
        hashMap.put("KG", new int[]{1, 1, 2, 3});
        hashMap.put("KH", new int[]{2, 0, 4, 4});
        hashMap.put("KI", new int[]{4, 4, 4, 4});
        hashMap.put("KM", new int[]{4, 4, 3, 3});
        hashMap.put("KN", new int[]{1, 0, 1, 4});
        hashMap.put("KP", new int[]{1, 2, 0, 2});
        hashMap.put("KR", new int[]{0, 3, 0, 2});
        hashMap.put("KW", new int[]{2, 2, 1, 2});
        hashMap.put("KY", new int[]{1, 1, 0, 2});
        hashMap.put("KZ", new int[]{1, 2, 2, 2});
        hashMap.put("LA", new int[]{2, 1, 1, 0});
        hashMap.put("LB", new int[]{3, 2, 0, 0});
        hashMap.put("LC", new int[]{2, 1, 0, 0});
        hashMap.put("LI", new int[]{0, 0, 2, 2});
        hashMap.put("LK", new int[]{1, 1, 2, 2});
        hashMap.put("LR", new int[]{3, 4, 4, 1});
        hashMap.put("LS", new int[]{3, 3, 2, 0});
        hashMap.put("LT", new int[]{0, 0, 0, 0});
        hashMap.put("LU", new int[]{0, 1, 0, 0});
        hashMap.put("LV", new int[]{0, 0, 0, 0});
        hashMap.put("LY", new int[]{4, 3, 4, 4});
        hashMap.put("MA", new int[]{2, 1, 2, 2});
        hashMap.put("MC", new int[]{1, 0, 1, 0});
        hashMap.put("MD", new int[]{1, 1, 0, 0});
        hashMap.put("ME", new int[]{1, 2, 2, 3});
        hashMap.put("MF", new int[]{1, 4, 2, 1});
        hashMap.put("MG", new int[]{3, 4, 1, 3});
        hashMap.put("MH", new int[]{4, 0, 2, 3});
        hashMap.put("MK", new int[]{1, 0, 0, 0});
        hashMap.put("ML", new int[]{4, 4, 4, 3});
        hashMap.put("MM", new int[]{2, 3, 1, 2});
        hashMap.put("MN", new int[]{2, 3, 2, 4});
        hashMap.put("MO", new int[]{0, 0, 4, 4});
        hashMap.put("MP", new int[]{0, 2, 4, 4});
        hashMap.put("MQ", new int[]{1, 1, 1, 3});
        hashMap.put("MR", new int[]{4, 4, 4, 4});
        hashMap.put("MS", new int[]{1, 4, 0, 3});
        hashMap.put("MT", new int[]{0, 1, 0, 0});
        hashMap.put("MU", new int[]{2, 2, 3, 4});
        hashMap.put("MV", new int[]{3, 2, 1, 1});
        hashMap.put("MW", new int[]{4, 2, 1, 1});
        hashMap.put("MX", new int[]{2, 4, 3, 2});
        hashMap.put("MY", new int[]{2, 2, 2, 3});
        hashMap.put("MZ", new int[]{3, 4, 2, 2});
        hashMap.put("NA", new int[]{3, 2, 2, 1});
        hashMap.put("NC", new int[]{2, 1, 3, 2});
        hashMap.put("NE", new int[]{4, 4, 4, 3});
        hashMap.put("NF", new int[]{1, 2, 2, 2});
        hashMap.put("NG", new int[]{3, 4, 3, 2});
        hashMap.put("NI", new int[]{3, 3, 3, 4});
        hashMap.put("NL", new int[]{0, 2, 4, 3});
        hashMap.put("NO", new int[]{0, 1, 0, 0});
        hashMap.put("NP", new int[]{3, 3, 2, 2});
        hashMap.put("NR", new int[]{4, 0, 4, 0});
        hashMap.put("NU", new int[]{2, 2, 2, 1});
        hashMap.put("NZ", new int[]{0, 0, 0, 1});
        hashMap.put("OM", new int[]{2, 2, 1, 3});
        hashMap.put("PA", new int[]{1, 3, 3, 4});
        hashMap.put("PE", new int[]{2, 3, 4, 4});
        hashMap.put("PF", new int[]{3, 1, 0, 1});
        hashMap.put("PG", new int[]{4, 3, 1, 1});
        hashMap.put("PH", new int[]{3, 0, 4, 4});
        hashMap.put("PK", new int[]{3, 3, 3, 3});
        hashMap.put("PL", new int[]{1, 1, 1, 3});
        hashMap.put("PM", new int[]{0, 2, 0, 0});
        hashMap.put("PR", new int[]{2, 1, 3, 3});
        hashMap.put("PS", new int[]{3, 3, 1, 4});
        hashMap.put("PT", new int[]{1, 1, 0, 1});
        hashMap.put("PW", new int[]{2, 2, 1, 1});
        hashMap.put("PY", new int[]{3, 1, 3, 3});
        hashMap.put("QA", new int[]{2, 3, 0, 1});
        hashMap.put("RE", new int[]{1, 0, 2, 2});
        hashMap.put("RO", new int[]{0, 1, 1, 2});
        hashMap.put("RS", new int[]{1, 2, 0, 0});
        hashMap.put("RU", new int[]{0, 1, 1, 1});
        hashMap.put("RW", new int[]{3, 4, 2, 4});
        hashMap.put("SA", new int[]{2, 2, 1, 2});
        hashMap.put("SB", new int[]{4, 4, 3, 0});
        hashMap.put("SC", new int[]{4, 2, 0, 1});
        hashMap.put("SD", new int[]{4, 4, 4, 2});
        hashMap.put("SE", new int[]{0, 1, 0, 0});
        hashMap.put("SG", new int[]{1, 2, 3, 3});
        hashMap.put("SH", new int[]{4, 4, 2, 3});
        hashMap.put("SI", new int[]{0, 1, 0, 1});
        hashMap.put("SJ", new int[]{0, 0, 2, 0});
        hashMap.put("SK", new int[]{0, 1, 0, 1});
        hashMap.put("SL", new int[]{4, 3, 2, 4});
        hashMap.put("SM", new int[]{0, 0, 1, 3});
        hashMap.put("SN", new int[]{4, 4, 4, 3});
        hashMap.put("SO", new int[]{4, 4, 4, 4});
        hashMap.put("SR", new int[]{3, 2, 2, 4});
        hashMap.put("SS", new int[]{4, 2, 4, 2});
        hashMap.put("ST", new int[]{3, 4, 2, 2});
        hashMap.put("SV", new int[]{2, 3, 3, 4});
        hashMap.put("SX", new int[]{2, 4, 1, 0});
        hashMap.put("SY", new int[]{4, 4, 1, 0});
        hashMap.put("SZ", new int[]{3, 4, 2, 3});
        hashMap.put("TC", new int[]{1, 1, 3, 1});
        hashMap.put("TD", new int[]{4, 4, 4, 3});
        hashMap.put("TG", new int[]{3, 3, 1, 0});
        hashMap.put("TH", new int[]{1, 3, 4, 4});
        hashMap.put("TJ", new int[]{4, 4, 4, 4});
        hashMap.put("TL", new int[]{4, 2, 4, 4});
        hashMap.put("TM", new int[]{4, 1, 2, 3});
        hashMap.put("TN", new int[]{2, 1, 1, 1});
        hashMap.put("TO", new int[]{3, 3, 3, 1});
        hashMap.put("TR", new int[]{1, 2, 0, 1});
        hashMap.put("TT", new int[]{2, 3, 1, 2});
        hashMap.put("TV", new int[]{4, 2, 2, 4});
        hashMap.put("TW", new int[]{0, 0, 0, 1});
        hashMap.put("TZ", new int[]{3, 3, 4, 3});
        hashMap.put("UA", new int[]{0, 2, 1, 2});
        hashMap.put("UG", new int[]{4, 3, 2, 3});
        hashMap.put("US", new int[]{0, 1, 3, 3});
        hashMap.put("UY", new int[]{2, 2, 2, 2});
        hashMap.put("UZ", new int[]{3, 2, 2, 2});
        hashMap.put("VA", new int[]{1, 2, 2, 2});
        hashMap.put("VC", new int[]{2, 1, 0, 0});
        hashMap.put("VE", new int[]{4, 4, 4, 3});
        hashMap.put("VG", new int[]{2, 1, 1, 2});
        hashMap.put("VI", new int[]{1, 0, 2, 4});
        hashMap.put("VN", new int[]{0, 2, 4, 4});
        hashMap.put("VU", new int[]{4, 1, 3, 1});
        hashMap.put("WS", new int[]{3, 2, 3, 1});
        hashMap.put("XK", new int[]{1, 2, 1, 0});
        hashMap.put("YE", new int[]{4, 4, 4, 2});
        hashMap.put("YT", new int[]{2, 0, 2, 3});
        hashMap.put("ZA", new int[]{2, 3, 2, 2});
        hashMap.put("ZM", new int[]{3, 3, 2, 1});
        hashMap.put("ZW", new int[]{3, 3, 3, 1});
        f7969a = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public C1973j() {
        this(null, new SparseArray(), 2000, AbstractC1999b.f8075a, false);
    }

    private C1973j(Context context, SparseArray<Long> sparseArray, int i, AbstractC1999b abstractC1999b, boolean z) {
        this.f7975g = context == null ? null : context.getApplicationContext();
        this.f7976h = sparseArray;
        this.f7977i = new C2003f<>();
        this.f7978j = new C2021s(i);
        this.f7979k = abstractC1999b;
        int m41669a = context == null ? 0 : C1996ac.m41669a(context);
        this.f7983o = m41669a;
        this.f7986r = m41725a(m41669a);
        if (context == null || !z) {
            return;
        }
        C1976b.m41715a(context).m41714a(this);
    }

    /* renamed from: a */
    private long m41725a(int i) {
        Long l = this.f7976h.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.f7976h.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    /* renamed from: a */
    public static C1973j m41722a(Context context) {
        C1973j c1973j;
        synchronized (C1973j.class) {
            try {
                if (f7974f == null) {
                    C1975a c1975a = new C1975a(context);
                    f7974f = new C1973j(c1975a.f7990a, c1975a.f7991b, c1975a.f7992c, c1975a.f7993d, c1975a.f7994e);
                }
                c1973j = f7974f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1973j;
    }

    /* renamed from: a */
    private void m41724a(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.f7987s) {
            return;
        }
        this.f7987s = j2;
        this.f7977i.m41590a(new C2003f.AbstractC2004a(i, j, j2) { // from class: androidx.media2.exoplayer.external.upstream.k

            /* renamed from: a */
            private final int f7998a;

            /* renamed from: b */
            private final long f7999b;

            /* renamed from: c */
            private final long f8000c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7998a = i;
                this.f7999b = j;
                this.f8000c = j2;
            }

            @Override // androidx.media2.exoplayer.external.util.C2003f.AbstractC2004a
            /* renamed from: a */
            public final void mo41588a(Object obj) {
                int i2 = this.f7998a;
                long j3 = this.f7999b;
                long j4 = this.f8000c;
                ((AbstractC1964c.AbstractC1965a) obj).mo41744f();
            }
        });
    }

    /* renamed from: c */
    public void m41717c() {
        int i;
        synchronized (this) {
            if (this.f7988t) {
                i = this.f7989u;
            } else {
                Context context = this.f7975g;
                i = context == null ? 0 : C1996ac.m41669a(context);
            }
            if (this.f7983o == i) {
                return;
            }
            this.f7983o = i;
            if (i == 1 || i == 0 || i == 8) {
                return;
            }
            this.f7986r = m41725a(i);
            long mo41494a = this.f7979k.mo41494a();
            m41724a(this.f7980l > 0 ? (int) (mo41494a - this.f7981m) : 0, this.f7982n, this.f7986r);
            this.f7981m = mo41494a;
            this.f7982n = 0L;
            this.f7985q = 0L;
            this.f7984p = 0L;
            C2021s c2021s = this.f7978j;
            c2021s.f8141d.clear();
            c2021s.f8143f = -1;
            c2021s.f8144g = 0;
            c2021s.f8145h = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1964c
    /* renamed from: a */
    public final long mo41726a() {
        long j;
        synchronized (this) {
            j = this.f7986r;
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1964c
    /* renamed from: a */
    public final void mo41721a(Handler handler, AbstractC1964c.AbstractC1965a abstractC1965a) {
        this.f7977i.m41591a(handler, abstractC1965a);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1964c
    /* renamed from: a */
    public final void mo41720a(AbstractC1964c.AbstractC1965a abstractC1965a) {
        this.f7977i.m41589a((C2003f<AbstractC1964c.AbstractC1965a>) abstractC1965a);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1990w
    /* renamed from: a */
    public final void mo41695a(boolean z) {
        synchronized (this) {
            if (!z) {
                return;
            }
            if (this.f7980l == 0) {
                this.f7981m = this.f7979k.mo41494a();
            }
            this.f7980l++;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1990w
    /* renamed from: a */
    public final void mo41694a(boolean z, int i) {
        synchronized (this) {
            if (!z) {
                return;
            }
            this.f7982n += i;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1964c
    /* renamed from: b */
    public final AbstractC1990w mo41718b() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1990w
    /* renamed from: b */
    public final void mo41693b(boolean z) {
        C2021s.C2023a c2023a;
        float f;
        synchronized (this) {
            if (!z) {
                return;
            }
            int i = 0;
            C1993a.m41686b(this.f7980l > 0);
            long mo41494a = this.f7979k.mo41494a();
            int i2 = (int) (mo41494a - this.f7981m);
            this.f7984p += i2;
            long j = this.f7985q;
            long j2 = this.f7982n;
            this.f7985q = j + j2;
            if (i2 > 0) {
                float f2 = (((float) j2) * 8000.0f) / i2;
                C2021s c2021s = this.f7978j;
                int sqrt = (int) Math.sqrt(j2);
                if (c2021s.f8143f != 1) {
                    Collections.sort(c2021s.f8141d, C2021s.f8138a);
                    c2021s.f8143f = 1;
                }
                if (c2021s.f8146i > 0) {
                    C2021s.C2023a[] c2023aArr = c2021s.f8142e;
                    int i3 = c2021s.f8146i - 1;
                    c2021s.f8146i = i3;
                    c2023a = c2023aArr[i3];
                } else {
                    c2023a = new C2021s.C2023a();
                }
                int i4 = c2021s.f8144g;
                c2021s.f8144g = i4 + 1;
                c2023a.f8147a = i4;
                c2023a.f8148b = sqrt;
                c2023a.f8149c = f2;
                c2021s.f8141d.add(c2023a);
                c2021s.f8145h += sqrt;
                while (c2021s.f8145h > c2021s.f8140c) {
                    int i5 = c2021s.f8145h - c2021s.f8140c;
                    C2021s.C2023a c2023a2 = c2021s.f8141d.get(0);
                    if (c2023a2.f8148b <= i5) {
                        c2021s.f8145h -= c2023a2.f8148b;
                        c2021s.f8141d.remove(0);
                        if (c2021s.f8146i < 5) {
                            C2021s.C2023a[] c2023aArr2 = c2021s.f8142e;
                            int i6 = c2021s.f8146i;
                            c2021s.f8146i = i6 + 1;
                            c2023aArr2[i6] = c2023a2;
                        }
                    } else {
                        c2023a2.f8148b -= i5;
                        c2021s.f8145h -= i5;
                    }
                }
                if (this.f7984p >= 2000 || this.f7985q >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    C2021s c2021s2 = this.f7978j;
                    if (c2021s2.f8143f != 0) {
                        Collections.sort(c2021s2.f8141d, C2021s.f8139b);
                        c2021s2.f8143f = 0;
                    }
                    float f3 = c2021s2.f8145h;
                    int i7 = 0;
                    while (true) {
                        if (i < c2021s2.f8141d.size()) {
                            C2021s.C2023a c2023a3 = c2021s2.f8141d.get(i);
                            i7 += c2023a3.f8148b;
                            if (i7 >= f3 * 0.5f) {
                                f = c2023a3.f8149c;
                                break;
                            }
                            i++;
                        } else {
                            f = c2021s2.f8141d.isEmpty() ? Float.NaN : c2021s2.f8141d.get(c2021s2.f8141d.size() - 1).f8149c;
                        }
                    }
                    this.f7986r = f;
                }
                m41724a(i2, this.f7982n, this.f7986r);
                this.f7981m = mo41494a;
                this.f7982n = 0L;
            }
            this.f7980l--;
        }
    }
}
