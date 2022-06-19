package com.google.android.exoplayer2.upstream;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.upstream.C5483n;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5519k;
import com.google.android.exoplayer2.util.C5540z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/n.class */
public final class C5483n implements AbstractC5473f, AbstractC5497x {

    /* renamed from: a */
    public static final Map<String, int[]> f17763a = m19000j();

    /* renamed from: b */
    public static final long[] f17764b = {5700000, 3500000, 2000000, 1100000, 470000};

    /* renamed from: c */
    public static final long[] f17765c = {200000, 148000, 132000, 115000, 95000};

    /* renamed from: d */
    public static final long[] f17766d = {2200000, 1300000, 970000, 810000, 490000};

    /* renamed from: e */
    public static final long[] f17767e = {5300000, 3200000, 2000000, 1400000, 690000};

    /* renamed from: f */
    private static C5483n f17768f;

    /* renamed from: g */
    private final Context f17769g;

    /* renamed from: h */
    private final SparseArray<Long> f17770h;

    /* renamed from: i */
    private final C5519k<AbstractC5473f.AbstractC5474a> f17771i;

    /* renamed from: j */
    private final C5540z f17772j;

    /* renamed from: k */
    private final AbstractC5510f f17773k;

    /* renamed from: l */
    private int f17774l;

    /* renamed from: m */
    private long f17775m;

    /* renamed from: n */
    private long f17776n;

    /* renamed from: o */
    private int f17777o;

    /* renamed from: p */
    private long f17778p;

    /* renamed from: q */
    private long f17779q;

    /* renamed from: r */
    private long f17780r;

    /* renamed from: s */
    private long f17781s;

    /* renamed from: t */
    private boolean f17782t;

    /* renamed from: u */
    private int f17783u;

    /* renamed from: com.google.android.exoplayer2.upstream.n$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/n$b.class */
    public static final class C5485b {

        /* renamed from: a */
        private final Context f17784a;

        /* renamed from: b */
        private SparseArray<Long> f17785b;

        /* renamed from: c */
        private int f17786c;

        /* renamed from: d */
        private AbstractC5510f f17787d;

        /* renamed from: e */
        private boolean f17788e;

        public C5485b(Context context) {
            this.f17784a = context == null ? null : context.getApplicationContext();
            this.f17785b = m18992c(C5515h0.m18871A(context));
            this.f17786c = 2000;
            this.f17787d = AbstractC5510f.f17868a;
            this.f17788e = true;
        }

        /* renamed from: b */
        private static int[] m18993b(String str) {
            int[] iArr = C5483n.f17763a.get(str);
            int[] iArr2 = iArr;
            if (iArr == null) {
                iArr2 = new int[]{2, 2, 2, 2};
            }
            return iArr2;
        }

        /* renamed from: c */
        private static SparseArray<Long> m18992c(String str) {
            int[] m18993b = m18993b(str);
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, 1000000L);
            long[] jArr = C5483n.f17764b;
            sparseArray.append(2, Long.valueOf(jArr[m18993b[0]]));
            sparseArray.append(3, Long.valueOf(C5483n.f17765c[m18993b[1]]));
            sparseArray.append(4, Long.valueOf(C5483n.f17766d[m18993b[2]]));
            sparseArray.append(5, Long.valueOf(C5483n.f17767e[m18993b[3]]));
            sparseArray.append(7, Long.valueOf(jArr[m18993b[0]]));
            sparseArray.append(9, Long.valueOf(jArr[m18993b[0]]));
            return sparseArray;
        }

        /* renamed from: a */
        public C5483n m18994a() {
            return new C5483n(this.f17784a, this.f17785b, this.f17786c, this.f17787d, this.f17788e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.n$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/n$c.class */
    public static class C5486c extends BroadcastReceiver {

        /* renamed from: a */
        private static C5486c f17789a;

        /* renamed from: b */
        private final Handler f17790b = new Handler(Looper.getMainLooper());

        /* renamed from: c */
        private final ArrayList<WeakReference<C5483n>> f17791c = new ArrayList<>();

        private C5486c() {
        }

        /* renamed from: a */
        public static C5486c m18991a(Context context) {
            C5486c c5486c;
            synchronized (C5486c.class) {
                try {
                    if (f17789a == null) {
                        f17789a = new C5486c();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f17789a, intentFilter);
                    }
                    c5486c = f17789a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c5486c;
        }

        /* renamed from: e */
        private void m18987e() {
            for (int size = this.f17791c.size() - 1; size >= 0; size--) {
                if (this.f17791c.get(size).get() == null) {
                    this.f17791c.remove(size);
                }
            }
        }

        /* renamed from: f */
        public void m18990b(C5483n c5483n) {
            c5483n.m18995o();
        }

        /* renamed from: d */
        public void m18988d(final C5483n c5483n) {
            synchronized (this) {
                m18987e();
                this.f17791c.add(new WeakReference<>(c5483n));
                this.f17790b.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        C5483n.C5486c.this.m18989c(c5483n);
                    }
                });
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (isInitialStickyBroadcast()) {
                    return;
                }
                m18987e();
                for (int i = 0; i < this.f17791c.size(); i++) {
                    C5483n c5483n = this.f17791c.get(i).get();
                    if (c5483n != null) {
                        m18990b(c5483n);
                    }
                }
            }
        }
    }

    @Deprecated
    public C5483n() {
        this(null, new SparseArray(), 2000, AbstractC5510f.f17868a, false);
    }

    private C5483n(Context context, SparseArray<Long> sparseArray, int i, AbstractC5510f abstractC5510f, boolean z) {
        this.f17769g = context == null ? null : context.getApplicationContext();
        this.f17770h = sparseArray;
        this.f17771i = new C5519k<>();
        this.f17772j = new C5540z(i);
        this.f17773k = abstractC5510f;
        int m18865G = context == null ? 0 : C5515h0.m18865G(context);
        this.f17777o = m18865G;
        this.f17780r = m18999k(m18865G);
        if (context == null || !z) {
            return;
        }
        C5486c.m18991a(context).m18988d(this);
    }

    /* renamed from: j */
    private static Map<String, int[]> m19000j() {
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

    /* renamed from: k */
    private long m18999k(int i) {
        Long l = this.f17770h.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.f17770h.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    /* renamed from: l */
    public static C5483n m18998l(Context context) {
        C5483n c5483n;
        synchronized (C5483n.class) {
            try {
                if (f17768f == null) {
                    f17768f = new C5485b(context).m18994a();
                }
                c5483n = f17768f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c5483n;
    }

    /* renamed from: n */
    private void m18996n(final int i, final long j, final long j2) {
        if (i == 0 && j == 0 && j2 == this.f17781s) {
            return;
        }
        this.f17781s = j2;
        this.f17771i.m18784b(new C5519k.AbstractC5520a() { // from class: com.google.android.exoplayer2.upstream.b
            @Override // com.google.android.exoplayer2.util.C5519k.AbstractC5520a
            /* renamed from: a */
            public final void mo18782a(Object obj) {
                ((AbstractC5473f.AbstractC5474a) obj).mo19027l(i, j, j2);
            }
        });
    }

    /* renamed from: o */
    public void m18995o() {
        int i;
        synchronized (this) {
            if (this.f17782t) {
                i = this.f17783u;
            } else {
                Context context = this.f17769g;
                i = context == null ? 0 : C5515h0.m18865G(context);
            }
            if (this.f17777o == i) {
                return;
            }
            this.f17777o = i;
            if (i == 1 || i == 0 || i == 8) {
                return;
            }
            this.f17780r = m18999k(i);
            long mo18896b = this.f17773k.mo18896b();
            m18996n(this.f17774l > 0 ? (int) (mo18896b - this.f17775m) : 0, this.f17776n, this.f17780r);
            this.f17775m = mo18896b;
            this.f17776n = 0L;
            this.f17779q = 0L;
            this.f17778p = 0L;
            this.f17772j.m18631g();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5497x
    /* renamed from: a */
    public void mo18943a(AbstractC5478j abstractC5478j, C5481l c5481l, boolean z) {
        synchronized (this) {
            if (!z) {
                return;
            }
            C5508e.m18910f(this.f17774l > 0);
            long mo18896b = this.f17773k.mo18896b();
            int i = (int) (mo18896b - this.f17775m);
            this.f17778p += i;
            long j = this.f17779q;
            long j2 = this.f17776n;
            this.f17779q = j + j2;
            if (i > 0) {
                this.f17772j.m18637a((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.f17778p >= 2000 || this.f17779q >= 524288) {
                    this.f17780r = this.f17772j.m18634d(0.5f);
                }
                m18996n(i, this.f17776n, this.f17780r);
                this.f17775m = mo18896b;
                this.f17776n = 0L;
            }
            this.f17774l--;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5497x
    /* renamed from: b */
    public void mo18942b(AbstractC5478j abstractC5478j, C5481l c5481l, boolean z) {
        synchronized (this) {
            if (!z) {
                return;
            }
            if (this.f17774l == 0) {
                this.f17775m = this.f17773k.mo18896b();
            }
            this.f17774l++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5473f
    /* renamed from: c */
    public AbstractC5497x mo19005c() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5473f
    /* renamed from: d */
    public void mo19004d(AbstractC5473f.AbstractC5474a abstractC5474a) {
        this.f17771i.m18783c(abstractC5474a);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5473f
    /* renamed from: e */
    public long mo19003e() {
        long j;
        synchronized (this) {
            j = this.f17780r;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5497x
    /* renamed from: f */
    public void mo18941f(AbstractC5478j abstractC5478j, C5481l c5481l, boolean z, int i) {
        synchronized (this) {
            if (!z) {
                return;
            }
            this.f17776n += i;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5473f
    /* renamed from: g */
    public void mo19002g(Handler handler, AbstractC5473f.AbstractC5474a abstractC5474a) {
        this.f17771i.m18785a(handler, abstractC5474a);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5497x
    /* renamed from: h */
    public void mo18940h(AbstractC5478j abstractC5478j, C5481l c5481l, boolean z) {
    }
}
