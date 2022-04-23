package androidx.media2.exoplayer.external.upstream;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.upstream.c;
import androidx.media2.exoplayer.external.upstream.j;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.f;
import androidx.media2.exoplayer.external.util.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/j.class */
public final class j implements c, w {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, int[]> f4072a;

    /* renamed from: b  reason: collision with root package name */
    public static final long[] f4073b = {5400000, 3400000, 1900000, 1100000, 400000};

    /* renamed from: c  reason: collision with root package name */
    public static final long[] f4074c = {170000, 139000, 122000, 107000, 90000};

    /* renamed from: d  reason: collision with root package name */
    public static final long[] f4075d = {2100000, 1300000, 960000, 770000, 450000};
    public static final long[] e = {6000000, 3400000, 2100000, 1400000, 570000};
    private static j f;
    private final Context g;
    private final SparseArray<Long> h;
    private final f<c.a> i;
    private final s j;
    private final androidx.media2.exoplayer.external.util.b k;
    private int l;
    private long m;
    private long n;
    private int o;
    private long p;
    private long q;
    private long r;
    private long s;
    private boolean t;
    private int u;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Context f4076a;

        /* renamed from: b  reason: collision with root package name */
        SparseArray<Long> f4077b;

        /* renamed from: c  reason: collision with root package name */
        int f4078c;

        /* renamed from: d  reason: collision with root package name */
        androidx.media2.exoplayer.external.util.b f4079d;
        boolean e;

        public a(Context context) {
            this.f4076a = context == null ? null : context.getApplicationContext();
            int[] iArr = j.f4072a.get(ac.b(context));
            int[] iArr2 = iArr == null ? new int[]{2, 2, 2, 2} : iArr;
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, 1000000L);
            sparseArray.append(2, Long.valueOf(j.f4073b[iArr2[0]]));
            sparseArray.append(3, Long.valueOf(j.f4074c[iArr2[1]]));
            sparseArray.append(4, Long.valueOf(j.f4075d[iArr2[2]]));
            sparseArray.append(5, Long.valueOf(j.e[iArr2[3]]));
            sparseArray.append(7, Long.valueOf(j.f4073b[iArr2[0]]));
            this.f4077b = sparseArray;
            this.f4078c = 2000;
            this.f4079d = androidx.media2.exoplayer.external.util.b.f4124a;
            this.e = true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/j$b.class */
    static final class b extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private static b f4080a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f4081b = new Handler(Looper.getMainLooper());

        /* renamed from: c  reason: collision with root package name */
        private final ArrayList<WeakReference<j>> f4082c = new ArrayList<>();

        private b() {
        }

        public static b a(Context context) {
            b bVar;
            synchronized (b.class) {
                try {
                    if (f4080a == null) {
                        f4080a = new b();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f4080a, intentFilter);
                    }
                    bVar = f4080a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return bVar;
        }

        private void a() {
            for (int size = this.f4082c.size() - 1; size >= 0; size--) {
                if (this.f4082c.get(size).get() == null) {
                    this.f4082c.remove(size);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void b(j jVar) {
            jVar.c();
        }

        public final void a(final j jVar) {
            synchronized (this) {
                a();
                this.f4082c.add(new WeakReference<>(jVar));
                this.f4081b.post(new Runnable(this, jVar) { // from class: androidx.media2.exoplayer.external.upstream.l

                    /* renamed from: a  reason: collision with root package name */
                    private final j.b f4086a;

                    /* renamed from: b  reason: collision with root package name */
                    private final j f4087b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f4086a = this;
                        this.f4087b = jVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        j.b.b(this.f4087b);
                    }
                });
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (!isInitialStickyBroadcast()) {
                    a();
                    for (int i = 0; i < this.f4082c.size(); i++) {
                        j jVar = this.f4082c.get(i).get();
                        if (jVar != null) {
                            jVar.c();
                        }
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
        f4072a = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public j() {
        this(null, new SparseArray(), 2000, androidx.media2.exoplayer.external.util.b.f4124a, false);
    }

    private j(Context context, SparseArray<Long> sparseArray, int i, androidx.media2.exoplayer.external.util.b bVar, boolean z) {
        this.g = context == null ? null : context.getApplicationContext();
        this.h = sparseArray;
        this.i = new f<>();
        this.j = new s(i);
        this.k = bVar;
        int a2 = context == null ? 0 : ac.a(context);
        this.o = a2;
        this.r = a(a2);
        if (context != null && z) {
            b.a(context).a(this);
        }
    }

    private long a(int i) {
        Long l = this.h.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.h.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    public static j a(Context context) {
        j jVar;
        synchronized (j.class) {
            try {
                if (f == null) {
                    a aVar = new a(context);
                    f = new j(aVar.f4076a, aVar.f4077b, aVar.f4078c, aVar.f4079d, aVar.e);
                }
                jVar = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jVar;
    }

    private void a(final int i, final long j, final long j2) {
        if (i != 0 || j != 0 || j2 != this.s) {
            this.s = j2;
            this.i.a(new f.a(i, j, j2) { // from class: androidx.media2.exoplayer.external.upstream.k

                /* renamed from: a  reason: collision with root package name */
                private final int f4083a;

                /* renamed from: b  reason: collision with root package name */
                private final long f4084b;

                /* renamed from: c  reason: collision with root package name */
                private final long f4085c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4083a = i;
                    this.f4084b = j;
                    this.f4085c = j2;
                }

                @Override // androidx.media2.exoplayer.external.util.f.a
                public final void a(Object obj) {
                    int i2 = this.f4083a;
                    long j3 = this.f4084b;
                    long j4 = this.f4085c;
                    ((c.a) obj).f();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int i;
        synchronized (this) {
            if (this.t) {
                i = this.u;
            } else {
                Context context = this.g;
                i = context == null ? 0 : ac.a(context);
            }
            if (this.o != i) {
                this.o = i;
                if (i != 1 && i != 0 && i != 8) {
                    this.r = a(i);
                    long a2 = this.k.a();
                    a(this.l > 0 ? (int) (a2 - this.m) : 0, this.n, this.r);
                    this.m = a2;
                    this.n = 0L;
                    this.q = 0L;
                    this.p = 0L;
                    s sVar = this.j;
                    sVar.f4176d.clear();
                    sVar.f = -1;
                    sVar.g = 0;
                    sVar.h = 0;
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.c
    public final long a() {
        long j;
        synchronized (this) {
            j = this.r;
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.upstream.c
    public final void a(Handler handler, c.a aVar) {
        this.i.a(handler, aVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.c
    public final void a(c.a aVar) {
        this.i.a((f<c.a>) aVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.w
    public final void a(boolean z) {
        synchronized (this) {
            if (z) {
                if (this.l == 0) {
                    this.m = this.k.a();
                }
                this.l++;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.w
    public final void a(boolean z, int i) {
        synchronized (this) {
            if (z) {
                this.n += i;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.c
    public final w b() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.upstream.w
    public final void b(boolean z) {
        s.a aVar;
        float f2;
        synchronized (this) {
            if (z) {
                int i = 0;
                androidx.media2.exoplayer.external.util.a.b(this.l > 0);
                long a2 = this.k.a();
                int i2 = (int) (a2 - this.m);
                this.p += i2;
                long j = this.q;
                long j2 = this.n;
                this.q = j + j2;
                if (i2 > 0) {
                    float f3 = (((float) j2) * 8000.0f) / i2;
                    s sVar = this.j;
                    int sqrt = (int) Math.sqrt(j2);
                    if (sVar.f != 1) {
                        Collections.sort(sVar.f4176d, s.f4173a);
                        sVar.f = 1;
                    }
                    if (sVar.i > 0) {
                        s.a[] aVarArr = sVar.e;
                        int i3 = sVar.i - 1;
                        sVar.i = i3;
                        aVar = aVarArr[i3];
                    } else {
                        aVar = new s.a();
                    }
                    int i4 = sVar.g;
                    sVar.g = i4 + 1;
                    aVar.f4177a = i4;
                    aVar.f4178b = sqrt;
                    aVar.f4179c = f3;
                    sVar.f4176d.add(aVar);
                    sVar.h += sqrt;
                    while (sVar.h > sVar.f4175c) {
                        int i5 = sVar.h - sVar.f4175c;
                        s.a aVar2 = sVar.f4176d.get(0);
                        if (aVar2.f4178b <= i5) {
                            sVar.h -= aVar2.f4178b;
                            sVar.f4176d.remove(0);
                            if (sVar.i < 5) {
                                s.a[] aVarArr2 = sVar.e;
                                int i6 = sVar.i;
                                sVar.i = i6 + 1;
                                aVarArr2[i6] = aVar2;
                            }
                        } else {
                            aVar2.f4178b -= i5;
                            sVar.h -= i5;
                        }
                    }
                    if (this.p >= 2000 || this.q >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                        s sVar2 = this.j;
                        if (sVar2.f != 0) {
                            Collections.sort(sVar2.f4176d, s.f4174b);
                            sVar2.f = 0;
                        }
                        float f4 = sVar2.h;
                        int i7 = 0;
                        while (true) {
                            if (i < sVar2.f4176d.size()) {
                                s.a aVar3 = sVar2.f4176d.get(i);
                                i7 += aVar3.f4178b;
                                if (i7 >= f4 * 0.5f) {
                                    f2 = aVar3.f4179c;
                                    break;
                                }
                                i++;
                            } else {
                                f2 = sVar2.f4176d.isEmpty() ? Float.NaN : sVar2.f4176d.get(sVar2.f4176d.size() - 1).f4179c;
                            }
                        }
                        this.r = f2;
                    }
                    a(i2, this.n, this.r);
                    this.m = a2;
                    this.n = 0L;
                }
                this.l--;
            }
        }
    }
}
