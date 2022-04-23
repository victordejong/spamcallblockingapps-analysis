package p131c.p161d.p170b.p188c.p201f1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.facebook.ads.AdError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2822f;
import p131c.p161d.p170b.p188c.p201f1.C2831m;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2882g;
import p131c.p161d.p170b.p188c.p203g1.C2868a0;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2888k;
/* renamed from: c.d.b.c.f1.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/m.class */
public final class C2831m implements AbstractC2822f, AbstractC2841t {

    /* renamed from: p */
    public static final Map<String, int[]> f10282p = m28917c();

    /* renamed from: q */
    public static final long[] f10283q = {5700000, 3500000, 2000000, 1100000, 470000};

    /* renamed from: r */
    public static final long[] f10284r = {200000, 148000, 132000, 115000, 95000};

    /* renamed from: s */
    public static final long[] f10285s = {2200000, 1300000, 970000, 810000, 490000};

    /* renamed from: t */
    public static final long[] f10286t = {5300000, 3200000, 2000000, 1400000, 690000};

    /* renamed from: u */
    public static C2831m f10287u;

    /* renamed from: a */
    public final Context f10288a;

    /* renamed from: b */
    public final SparseArray<Long> f10289b;

    /* renamed from: c */
    public final C2888k<AbstractC2822f.AbstractC2823a> f10290c;

    /* renamed from: d */
    public final C2868a0 f10291d;

    /* renamed from: e */
    public final AbstractC2882g f10292e;

    /* renamed from: f */
    public int f10293f;

    /* renamed from: g */
    public long f10294g;

    /* renamed from: h */
    public long f10295h;

    /* renamed from: i */
    public int f10296i;

    /* renamed from: j */
    public long f10297j;

    /* renamed from: k */
    public long f10298k;

    /* renamed from: l */
    public long f10299l;

    /* renamed from: m */
    public long f10300m;

    /* renamed from: n */
    public boolean f10301n;

    /* renamed from: o */
    public int f10302o;

    /* renamed from: c.d.b.c.f1.m$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/m$b.class */
    public static final class C2833b {

        /* renamed from: a */
        public final Context f10303a;

        /* renamed from: b */
        public SparseArray<Long> f10304b;

        /* renamed from: c */
        public int f10305c;

        /* renamed from: d */
        public AbstractC2882g f10306d;

        /* renamed from: e */
        public boolean f10307e;

        public C2833b(Context context) {
            this.f10303a = context == null ? null : context.getApplicationContext();
            this.f10304b = m28914b(C2885h0.m28680a(context));
            this.f10305c = AdError.SERVER_ERROR_CODE;
            this.f10306d = AbstractC2882g.f10473a;
            this.f10307e = true;
        }

        /* renamed from: a */
        public static int[] m28915a(String str) {
            int[] iArr = C2831m.f10282p.get(str);
            int[] iArr2 = iArr;
            if (iArr == null) {
                iArr2 = new int[]{2, 2, 2, 2};
            }
            return iArr2;
        }

        /* renamed from: b */
        public static SparseArray<Long> m28914b(String str) {
            int[] a = m28915a(str);
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, 1000000L);
            sparseArray.append(2, Long.valueOf(C2831m.f10283q[a[0]]));
            sparseArray.append(3, Long.valueOf(C2831m.f10284r[a[1]]));
            sparseArray.append(4, Long.valueOf(C2831m.f10285s[a[2]]));
            sparseArray.append(5, Long.valueOf(C2831m.f10286t[a[3]]));
            sparseArray.append(7, Long.valueOf(C2831m.f10283q[a[0]]));
            return sparseArray;
        }

        /* renamed from: a */
        public C2831m m28916a() {
            return new C2831m(this.f10303a, this.f10304b, this.f10305c, this.f10306d, this.f10307e);
        }
    }

    /* renamed from: c.d.b.c.f1.m$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/m$c.class */
    public static class C2834c extends BroadcastReceiver {

        /* renamed from: c */
        public static C2834c f10308c;

        /* renamed from: a */
        public final Handler f10309a = new Handler(Looper.getMainLooper());

        /* renamed from: b */
        public final ArrayList<WeakReference<C2831m>> f10310b = new ArrayList<>();

        /* renamed from: a */
        public static C2834c m28912a(Context context) {
            C2834c cVar;
            synchronized (C2834c.class) {
                try {
                    if (f10308c == null) {
                        f10308c = new C2834c();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f10308c, intentFilter);
                    }
                    cVar = f10308c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return cVar;
        }

        /* renamed from: a */
        public final void m28913a() {
            for (int size = this.f10310b.size() - 1; size >= 0; size--) {
                if (this.f10310b.get(size).get() == null) {
                    this.f10310b.remove(size);
                }
            }
        }

        /* renamed from: b */
        public void m28910b(final C2831m mVar) {
            synchronized (this) {
                m28913a();
                this.f10310b.add(new WeakReference<>(mVar));
                this.f10309a.post(new Runnable() { // from class: c.d.b.c.f1.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2831m.C2834c.this.m28911a(mVar);
                    }
                });
            }
        }

        /* renamed from: c */
        public final void m28911a(C2831m mVar) {
            mVar.m28918b();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (!isInitialStickyBroadcast()) {
                    m28913a();
                    for (int i = 0; i < this.f10310b.size(); i++) {
                        C2831m mVar = this.f10310b.get(i).get();
                        if (mVar != null) {
                            m28911a(mVar);
                        }
                    }
                }
            }
        }
    }

    @Deprecated
    public C2831m() {
        this(null, new SparseArray(), AdError.SERVER_ERROR_CODE, AbstractC2882g.f10473a, false);
    }

    public C2831m(Context context, SparseArray<Long> sparseArray, int i, AbstractC2882g gVar, boolean z) {
        this.f10288a = context == null ? null : context.getApplicationContext();
        this.f10289b = sparseArray;
        this.f10290c = new C2888k<>();
        this.f10291d = new C2868a0(i);
        this.f10292e = gVar;
        int b = context == null ? 0 : C2885h0.m28648b(context);
        this.f10296i = b;
        this.f10299l = m28923a(b);
        if (context != null && z) {
            C2834c.m28912a(context).m28910b(this);
        }
    }

    /* renamed from: a */
    public static C2831m m28920a(Context context) {
        C2831m mVar;
        synchronized (C2831m.class) {
            try {
                if (f10287u == null) {
                    f10287u = new C2833b(context).m28916a();
                }
                mVar = f10287u;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mVar;
    }

    /* renamed from: c */
    public static Map<String, int[]> m28917c() {
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
        hashMap.put("MA", new int[]{2, 1, 2, 1});
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
        hashMap.put("NA", new int[]{3, 3, 2, 1});
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
        hashMap.put("PG", new int[]{4, 3, 3, 1});
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
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public final long m28923a(int i) {
        Long l = this.f10289b.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.f10289b.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2822f
    /* renamed from: a */
    public AbstractC2841t mo28924a() {
        return this;
    }

    /* renamed from: a */
    public final void m28922a(final int i, final long j, final long j2) {
        if (i != 0 || j != 0 || j2 != this.f10300m) {
            this.f10300m = j2;
            this.f10290c.m28621a(new C2888k.AbstractC2889a() { // from class: c.d.b.c.f1.a
                @Override // p131c.p161d.p170b.p188c.p203g1.C2888k.AbstractC2889a
                /* renamed from: a */
                public final void mo28620a(Object obj) {
                    ((AbstractC2822f.AbstractC2823a) obj).m28943a(i, j, j2);
                }
            });
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2841t
    /* renamed from: a */
    public void mo28891a(AbstractC2827j jVar, C2829k kVar, boolean z) {
        synchronized (this) {
            if (z) {
                C2877e.m28731b(this.f10293f > 0);
                long a = this.f10292e.mo28705a();
                int i = (int) (a - this.f10294g);
                this.f10297j += i;
                this.f10298k += this.f10295h;
                if (i > 0) {
                    this.f10291d.m28746a((int) Math.sqrt(this.f10295h), (((float) this.f10295h) * 8000.0f) / i);
                    if (this.f10297j >= 2000 || this.f10298k >= 524288) {
                        this.f10299l = this.f10291d.m28747a(0.5f);
                    }
                    m28922a(i, this.f10295h, this.f10299l);
                    this.f10294g = a;
                    this.f10295h = 0L;
                }
                this.f10293f--;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2841t
    /* renamed from: a */
    public void mo28890a(AbstractC2827j jVar, C2829k kVar, boolean z, int i) {
        synchronized (this) {
            if (z) {
                this.f10295h += i;
            }
        }
    }

    /* renamed from: b */
    public final void m28918b() {
        synchronized (this) {
            int b = this.f10301n ? this.f10302o : this.f10288a == null ? 0 : C2885h0.m28648b(this.f10288a);
            if (this.f10296i != b) {
                this.f10296i = b;
                if (b != 1 && b != 0 && b != 8) {
                    this.f10299l = m28923a(b);
                    long a = this.f10292e.mo28705a();
                    m28922a(this.f10293f > 0 ? (int) (a - this.f10294g) : 0, this.f10295h, this.f10299l);
                    this.f10294g = a;
                    this.f10295h = 0L;
                    this.f10298k = 0L;
                    this.f10297j = 0L;
                    this.f10291d.m28742c();
                }
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2841t
    /* renamed from: b */
    public void mo28889b(AbstractC2827j jVar, C2829k kVar, boolean z) {
        synchronized (this) {
            if (z) {
                if (this.f10293f == 0) {
                    this.f10294g = this.f10292e.mo28705a();
                }
                this.f10293f++;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2841t
    /* renamed from: c */
    public void mo28888c(AbstractC2827j jVar, C2829k kVar, boolean z) {
    }
}
