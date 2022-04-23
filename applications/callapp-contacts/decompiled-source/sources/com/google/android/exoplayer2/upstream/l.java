package com.google.android.exoplayer2.upstream;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.upstream.c;
import com.google.android.exoplayer2.upstream.l;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.y;
import com.google.common.collect.v;
import com.google.common.collect.w;
import com.google.common.collect.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/l.class */
public final class l implements c, v {

    /* renamed from: a  reason: collision with root package name */
    public static final w<String, Integer> f22216a = c();

    /* renamed from: b  reason: collision with root package name */
    public static final v<Long> f22217b = v.a(6100000L, 3800000L, 2100000L, 1300000L, 590000L);

    /* renamed from: c  reason: collision with root package name */
    public static final v<Long> f22218c = v.a(218000L, 159000L, 145000L, 130000L, 112000L);

    /* renamed from: d  reason: collision with root package name */
    public static final v<Long> f22219d = v.a(2200000L, 1300000L, 930000L, 730000L, 530000L);
    public static final v<Long> e = v.a(4800000L, 2700000L, 1800000L, 1200000L, 630000L);
    public static final v<Long> f = v.a(12000000L, 8800000L, 5900000L, 3500000L, 1800000L);
    private static l g;
    private final Context h;
    private final x<Integer, Long> i;
    private final c.a.C0446a j;
    private final y k;
    private final com.google.android.exoplayer2.util.c l;
    private int m;
    private long n;
    private long o;
    private int p;
    private long q;
    private long r;
    private long s;
    private long t;
    private boolean u;
    private int v;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Context f22220a;

        /* renamed from: b  reason: collision with root package name */
        Map<Integer, Long> f22221b;

        /* renamed from: c  reason: collision with root package name */
        int f22222c;

        /* renamed from: d  reason: collision with root package name */
        com.google.android.exoplayer2.util.c f22223d;
        boolean e;

        public a(Context context) {
            this.f22220a = context == null ? null : context.getApplicationContext();
            v<Integer> c2 = l.f22216a.d(af.b(context));
            v<Integer> a2 = c2.isEmpty() ? v.a(2, 2, 2, 2, 2) : c2;
            HashMap hashMap = new HashMap(6);
            hashMap.put(0, 1000000L);
            hashMap.put(2, l.f22217b.get(a2.get(0).intValue()));
            hashMap.put(3, l.f22218c.get(a2.get(1).intValue()));
            hashMap.put(4, l.f22219d.get(a2.get(2).intValue()));
            hashMap.put(5, l.e.get(a2.get(3).intValue()));
            hashMap.put(9, l.f.get(a2.get(4).intValue()));
            hashMap.put(7, l.f22217b.get(a2.get(0).intValue()));
            this.f22221b = hashMap;
            this.f22222c = 2000;
            this.f22223d = com.google.android.exoplayer2.util.c.f22283a;
            this.e = true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/l$b.class */
    static final class b extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private static b f22224a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f22225b = new Handler(Looper.getMainLooper());

        /* renamed from: c  reason: collision with root package name */
        private final ArrayList<WeakReference<l>> f22226c = new ArrayList<>();

        private b() {
        }

        public static b a(Context context) {
            b bVar;
            synchronized (b.class) {
                try {
                    if (f22224a == null) {
                        f22224a = new b();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f22224a, intentFilter);
                    }
                    bVar = f22224a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return bVar;
        }

        private void a() {
            for (int size = this.f22226c.size() - 1; size >= 0; size--) {
                if (this.f22226c.get(size).get() == null) {
                    this.f22226c.remove(size);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(l lVar) {
            lVar.b();
        }

        public final void a(final l lVar) {
            synchronized (this) {
                a();
                this.f22226c.add(new WeakReference<>(lVar));
                this.f22225b.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream._$$Lambda$l$b$NfEQ4zhxeWpt1Q4lTRve9Gr2v0o
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.b.this.b(lVar);
                    }
                });
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (!isInitialStickyBroadcast()) {
                    a();
                    for (int i = 0; i < this.f22226c.size(); i++) {
                        l lVar = this.f22226c.get(i).get();
                        if (lVar != null) {
                            lVar.b();
                        }
                    }
                }
            }
        }
    }

    @Deprecated
    public l() {
        this(null, x.a(), 2000, com.google.android.exoplayer2.util.c.f22283a, false);
    }

    private l(Context context, Map<Integer, Long> map, int i, com.google.android.exoplayer2.util.c cVar, boolean z) {
        this.h = context == null ? null : context.getApplicationContext();
        this.i = x.a(map);
        this.j = new c.a.C0446a();
        this.k = new y(i);
        this.l = cVar;
        int a2 = context == null ? 0 : af.a(context);
        this.p = a2;
        this.s = a(a2);
        if (context != null && z) {
            b.a(context).a(this);
        }
    }

    private long a(int i) {
        Long l = this.i.get(Integer.valueOf(i));
        Long l2 = l;
        if (l == null) {
            l2 = this.i.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    public static l a(Context context) {
        l lVar;
        synchronized (l.class) {
            try {
                if (g == null) {
                    a aVar = new a(context);
                    g = new l(aVar.f22220a, aVar.f22221b, aVar.f22222c, aVar.f22223d, aVar.e);
                }
                lVar = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    private void a(int i, long j, long j2) {
        if (i != 0 || j != 0 || j2 != this.t) {
            this.t = j2;
            this.j.a(i, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int i;
        synchronized (this) {
            if (this.u) {
                i = this.v;
            } else {
                Context context = this.h;
                i = context == null ? 0 : af.a(context);
            }
            if (this.p != i) {
                this.p = i;
                if (i != 1 && i != 0 && i != 8) {
                    this.s = a(i);
                    long a2 = this.l.a();
                    a(this.m > 0 ? (int) (a2 - this.n) : 0, this.o, this.s);
                    this.n = a2;
                    this.o = 0L;
                    this.r = 0L;
                    this.q = 0L;
                    y yVar = this.k;
                    yVar.f22346d.clear();
                    yVar.f = -1;
                    yVar.g = 0;
                    yVar.h = 0;
                }
            }
        }
    }

    private static w<String, Integer> c() {
        w.a a2 = w.a();
        a2.a((w.a) "AD", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "AE", (Object[]) new Integer[]{1, 4, 4, 4, 1});
        a2.a((w.a) "AF", (Object[]) new Integer[]{4, 4, 3, 4, 2});
        a2.a((w.a) "AG", (Object[]) new Integer[]{2, 2, 1, 1, 2});
        a2.a((w.a) "AI", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        a2.a((w.a) "AL", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        a2.a((w.a) "AM", (Object[]) new Integer[]{2, 2, 1, 2, 2});
        a2.a((w.a) "AO", (Object[]) new Integer[]{3, 4, 4, 2, 2});
        a2.a((w.a) "AR", (Object[]) new Integer[]{2, 4, 2, 2, 2});
        a2.a((w.a) "AS", (Object[]) new Integer[]{2, 2, 4, 3, 2});
        a2.a((w.a) "AT", (Object[]) new Integer[]{0, 3, 0, 0, 2});
        a2.a((w.a) "AU", (Object[]) new Integer[]{0, 2, 0, 1, 1});
        a2.a((w.a) "AW", (Object[]) new Integer[]{1, 2, 0, 4, 2});
        a2.a((w.a) "AX", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        a2.a((w.a) "AZ", (Object[]) new Integer[]{3, 3, 3, 4, 2});
        a2.a((w.a) "BA", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        a2.a((w.a) "BB", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        a2.a((w.a) "BD", (Object[]) new Integer[]{2, 0, 3, 3, 2});
        a2.a((w.a) "BE", (Object[]) new Integer[]{0, 1, 2, 3, 2});
        a2.a((w.a) "BF", (Object[]) new Integer[]{4, 4, 4, 2, 2});
        a2.a((w.a) "BG", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        a2.a((w.a) "BH", (Object[]) new Integer[]{1, 0, 2, 4, 2});
        a2.a((w.a) "BI", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        a2.a((w.a) "BJ", (Object[]) new Integer[]{4, 4, 3, 4, 2});
        a2.a((w.a) "BL", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        a2.a((w.a) "BM", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "BN", (Object[]) new Integer[]{4, 0, 1, 1, 2});
        a2.a((w.a) "BO", (Object[]) new Integer[]{2, 3, 3, 2, 2});
        a2.a((w.a) "BQ", (Object[]) new Integer[]{1, 2, 1, 2, 2});
        a2.a((w.a) "BR", (Object[]) new Integer[]{2, 4, 2, 1, 2});
        a2.a((w.a) "BS", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        a2.a((w.a) "BT", (Object[]) new Integer[]{3, 0, 3, 2, 2});
        a2.a((w.a) "BW", (Object[]) new Integer[]{3, 4, 2, 2, 2});
        a2.a((w.a) "BY", (Object[]) new Integer[]{1, 0, 2, 1, 2});
        a2.a((w.a) "BZ", (Object[]) new Integer[]{2, 2, 2, 1, 2});
        a2.a((w.a) "CA", (Object[]) new Integer[]{0, 3, 1, 2, 3});
        a2.a((w.a) "CD", (Object[]) new Integer[]{4, 3, 2, 2, 2});
        a2.a((w.a) "CF", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        a2.a((w.a) "CG", (Object[]) new Integer[]{3, 4, 1, 1, 2});
        a2.a((w.a) "CH", (Object[]) new Integer[]{0, 1, 0, 0, 0});
        a2.a((w.a) "CI", (Object[]) new Integer[]{3, 3, 3, 3, 2});
        a2.a((w.a) "CK", (Object[]) new Integer[]{3, 2, 1, 0, 2});
        a2.a((w.a) "CL", (Object[]) new Integer[]{1, 1, 2, 3, 2});
        a2.a((w.a) "CM", (Object[]) new Integer[]{3, 4, 3, 2, 2});
        a2.a((w.a) "CN", (Object[]) new Integer[]{2, 2, 2, 1, 3});
        a2.a((w.a) "CO", (Object[]) new Integer[]{2, 4, 3, 2, 2});
        a2.a((w.a) "CR", (Object[]) new Integer[]{2, 3, 4, 4, 2});
        a2.a((w.a) "CU", (Object[]) new Integer[]{4, 4, 2, 1, 2});
        a2.a((w.a) "CV", (Object[]) new Integer[]{2, 3, 3, 3, 2});
        a2.a((w.a) "CW", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "CY", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "CZ", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        a2.a((w.a) "DE", (Object[]) new Integer[]{0, 1, 1, 2, 0});
        a2.a((w.a) "DJ", (Object[]) new Integer[]{4, 1, 4, 4, 2});
        a2.a((w.a) "DK", (Object[]) new Integer[]{0, 0, 1, 0, 2});
        a2.a((w.a) "DM", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        a2.a((w.a) "DO", (Object[]) new Integer[]{3, 4, 4, 4, 2});
        a2.a((w.a) "DZ", (Object[]) new Integer[]{3, 2, 4, 4, 2});
        a2.a((w.a) "EC", (Object[]) new Integer[]{2, 4, 3, 2, 2});
        a2.a((w.a) "EE", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        a2.a((w.a) "EG", (Object[]) new Integer[]{3, 4, 2, 1, 2});
        a2.a((w.a) "EH", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        a2.a((w.a) "ER", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        a2.a((w.a) "ES", (Object[]) new Integer[]{0, 1, 2, 1, 2});
        a2.a((w.a) "ET", (Object[]) new Integer[]{4, 4, 4, 1, 2});
        a2.a((w.a) "FI", (Object[]) new Integer[]{0, 0, 1, 0, 0});
        a2.a((w.a) "FJ", (Object[]) new Integer[]{3, 0, 3, 3, 2});
        a2.a((w.a) "FK", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        a2.a((w.a) "FM", (Object[]) new Integer[]{4, 2, 4, 3, 2});
        a2.a((w.a) "FO", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        a2.a((w.a) "FR", (Object[]) new Integer[]{1, 0, 2, 1, 2});
        a2.a((w.a) "GA", (Object[]) new Integer[]{3, 3, 1, 0, 2});
        a2.a((w.a) "GB", (Object[]) new Integer[]{0, 0, 1, 2, 2});
        a2.a((w.a) "GD", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        a2.a((w.a) "GE", (Object[]) new Integer[]{1, 0, 1, 3, 2});
        a2.a((w.a) "GF", (Object[]) new Integer[]{2, 2, 2, 4, 2});
        a2.a((w.a) "GG", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        a2.a((w.a) "GH", (Object[]) new Integer[]{3, 2, 3, 2, 2});
        a2.a((w.a) "GI", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        a2.a((w.a) "GL", (Object[]) new Integer[]{1, 2, 2, 1, 2});
        a2.a((w.a) "GM", (Object[]) new Integer[]{4, 3, 2, 4, 2});
        a2.a((w.a) "GN", (Object[]) new Integer[]{4, 3, 4, 2, 2});
        a2.a((w.a) "GP", (Object[]) new Integer[]{2, 2, 3, 4, 2});
        a2.a((w.a) "GQ", (Object[]) new Integer[]{4, 2, 3, 4, 2});
        a2.a((w.a) "GR", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        a2.a((w.a) "GT", (Object[]) new Integer[]{3, 2, 3, 2, 2});
        a2.a((w.a) "GU", (Object[]) new Integer[]{1, 2, 4, 4, 2});
        a2.a((w.a) "GW", (Object[]) new Integer[]{3, 4, 4, 3, 2});
        a2.a((w.a) "GY", (Object[]) new Integer[]{3, 3, 1, 0, 2});
        a2.a((w.a) "HK", (Object[]) new Integer[]{0, 2, 3, 4, 2});
        a2.a((w.a) "HN", (Object[]) new Integer[]{3, 0, 3, 3, 2});
        a2.a((w.a) "HR", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        a2.a((w.a) "HT", (Object[]) new Integer[]{4, 3, 4, 4, 2});
        a2.a((w.a) "HU", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        a2.a((w.a) "ID", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        a2.a((w.a) "IE", (Object[]) new Integer[]{0, 0, 1, 1, 2});
        a2.a((w.a) "IL", (Object[]) new Integer[]{1, 0, 2, 3, 2});
        a2.a((w.a) "IM", (Object[]) new Integer[]{0, 2, 0, 1, 2});
        a2.a((w.a) "IN", (Object[]) new Integer[]{2, 1, 3, 3, 2});
        a2.a((w.a) "IO", (Object[]) new Integer[]{4, 2, 2, 4, 2});
        a2.a((w.a) "IQ", (Object[]) new Integer[]{3, 2, 4, 3, 2});
        a2.a((w.a) "IR", (Object[]) new Integer[]{4, 2, 3, 4, 2});
        a2.a((w.a) "IS", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        a2.a((w.a) "IT", (Object[]) new Integer[]{0, 0, 1, 1, 2});
        a2.a((w.a) "JE", (Object[]) new Integer[]{2, 2, 0, 2, 2});
        a2.a((w.a) "JM", (Object[]) new Integer[]{3, 3, 4, 4, 2});
        a2.a((w.a) "JO", (Object[]) new Integer[]{1, 2, 1, 1, 2});
        a2.a((w.a) "JP", (Object[]) new Integer[]{0, 2, 0, 1, 3});
        a2.a((w.a) "KE", (Object[]) new Integer[]{3, 4, 2, 2, 2});
        a2.a((w.a) "KG", (Object[]) new Integer[]{1, 0, 2, 2, 2});
        a2.a((w.a) "KH", (Object[]) new Integer[]{2, 0, 4, 3, 2});
        a2.a((w.a) "KI", (Object[]) new Integer[]{4, 2, 3, 1, 2});
        a2.a((w.a) "KM", (Object[]) new Integer[]{4, 2, 2, 3, 2});
        a2.a((w.a) "KN", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        a2.a((w.a) "KP", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        a2.a((w.a) "KR", (Object[]) new Integer[]{0, 2, 1, 1, 1});
        a2.a((w.a) "KW", (Object[]) new Integer[]{2, 3, 1, 1, 1});
        a2.a((w.a) "KY", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "KZ", (Object[]) new Integer[]{1, 2, 2, 3, 2});
        a2.a((w.a) "LA", (Object[]) new Integer[]{2, 2, 1, 1, 2});
        a2.a((w.a) "LB", (Object[]) new Integer[]{3, 2, 0, 0, 2});
        a2.a((w.a) "LC", (Object[]) new Integer[]{1, 1, 0, 0, 2});
        a2.a((w.a) "LI", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        a2.a((w.a) "LK", (Object[]) new Integer[]{2, 0, 2, 3, 2});
        a2.a((w.a) "LR", (Object[]) new Integer[]{3, 4, 3, 2, 2});
        a2.a((w.a) "LS", (Object[]) new Integer[]{3, 3, 2, 3, 2});
        a2.a((w.a) "LT", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        a2.a((w.a) "LU", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        a2.a((w.a) "LV", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        a2.a((w.a) "LY", (Object[]) new Integer[]{4, 2, 4, 3, 2});
        a2.a((w.a) "MA", (Object[]) new Integer[]{2, 1, 2, 1, 2});
        a2.a((w.a) "MC", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        a2.a((w.a) "MD", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "ME", (Object[]) new Integer[]{1, 2, 1, 2, 2});
        a2.a((w.a) "MF", (Object[]) new Integer[]{1, 2, 1, 0, 2});
        a2.a((w.a) "MG", (Object[]) new Integer[]{3, 4, 3, 3, 2});
        a2.a((w.a) "MH", (Object[]) new Integer[]{4, 2, 2, 4, 2});
        a2.a((w.a) "MK", (Object[]) new Integer[]{1, 0, 0, 0, 2});
        a2.a((w.a) "ML", (Object[]) new Integer[]{4, 4, 1, 1, 2});
        a2.a((w.a) "MM", (Object[]) new Integer[]{2, 3, 2, 2, 2});
        a2.a((w.a) "MN", (Object[]) new Integer[]{2, 4, 1, 1, 2});
        a2.a((w.a) "MO", (Object[]) new Integer[]{0, 2, 4, 4, 2});
        a2.a((w.a) "MP", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        a2.a((w.a) "MQ", (Object[]) new Integer[]{2, 2, 2, 3, 2});
        a2.a((w.a) "MR", (Object[]) new Integer[]{3, 0, 4, 2, 2});
        a2.a((w.a) "MS", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        a2.a((w.a) "MT", (Object[]) new Integer[]{0, 2, 0, 1, 2});
        a2.a((w.a) "MU", (Object[]) new Integer[]{3, 1, 2, 3, 2});
        a2.a((w.a) "MV", (Object[]) new Integer[]{4, 3, 1, 4, 2});
        a2.a((w.a) "MW", (Object[]) new Integer[]{4, 1, 1, 0, 2});
        a2.a((w.a) "MX", (Object[]) new Integer[]{2, 4, 3, 3, 2});
        a2.a((w.a) "MY", (Object[]) new Integer[]{2, 0, 3, 3, 2});
        a2.a((w.a) "MZ", (Object[]) new Integer[]{3, 3, 2, 3, 2});
        a2.a((w.a) "NA", (Object[]) new Integer[]{4, 3, 2, 2, 2});
        a2.a((w.a) "NC", (Object[]) new Integer[]{2, 0, 4, 4, 2});
        a2.a((w.a) "NE", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        a2.a((w.a) "NF", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        a2.a((w.a) "NG", (Object[]) new Integer[]{3, 3, 2, 2, 2});
        a2.a((w.a) "NI", (Object[]) new Integer[]{3, 1, 4, 4, 2});
        a2.a((w.a) "NL", (Object[]) new Integer[]{0, 2, 4, 2, 0});
        a2.a((w.a) "NO", (Object[]) new Integer[]{0, 1, 1, 0, 2});
        a2.a((w.a) "NP", (Object[]) new Integer[]{2, 0, 4, 3, 2});
        a2.a((w.a) "NR", (Object[]) new Integer[]{4, 2, 3, 1, 2});
        a2.a((w.a) "NU", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        a2.a((w.a) "NZ", (Object[]) new Integer[]{0, 2, 1, 2, 4});
        a2.a((w.a) "OM", (Object[]) new Integer[]{2, 2, 0, 2, 2});
        a2.a((w.a) "PA", (Object[]) new Integer[]{1, 3, 3, 4, 2});
        a2.a((w.a) "PE", (Object[]) new Integer[]{2, 4, 4, 4, 2});
        a2.a((w.a) "PF", (Object[]) new Integer[]{2, 2, 1, 1, 2});
        a2.a((w.a) "PG", (Object[]) new Integer[]{4, 3, 3, 2, 2});
        a2.a((w.a) "PH", (Object[]) new Integer[]{3, 0, 3, 4, 4});
        a2.a((w.a) "PK", (Object[]) new Integer[]{3, 2, 3, 3, 2});
        a2.a((w.a) "PL", (Object[]) new Integer[]{1, 0, 2, 2, 2});
        a2.a((w.a) "PM", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        a2.a((w.a) "PR", (Object[]) new Integer[]{1, 2, 2, 3, 4});
        a2.a((w.a) "PS", (Object[]) new Integer[]{3, 3, 2, 2, 2});
        a2.a((w.a) "PT", (Object[]) new Integer[]{1, 1, 0, 0, 2});
        a2.a((w.a) "PW", (Object[]) new Integer[]{1, 2, 3, 0, 2});
        a2.a((w.a) "PY", (Object[]) new Integer[]{2, 0, 3, 3, 2});
        a2.a((w.a) "QA", (Object[]) new Integer[]{2, 3, 1, 2, 2});
        a2.a((w.a) "RE", (Object[]) new Integer[]{1, 0, 2, 1, 2});
        a2.a((w.a) "RO", (Object[]) new Integer[]{1, 1, 1, 2, 2});
        a2.a((w.a) "RS", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        a2.a((w.a) "RU", (Object[]) new Integer[]{0, 1, 0, 1, 2});
        a2.a((w.a) "RW", (Object[]) new Integer[]{4, 3, 3, 4, 2});
        a2.a((w.a) "SA", (Object[]) new Integer[]{2, 2, 2, 1, 2});
        a2.a((w.a) "SB", (Object[]) new Integer[]{4, 2, 4, 2, 2});
        a2.a((w.a) "SC", (Object[]) new Integer[]{4, 2, 0, 1, 2});
        a2.a((w.a) "SD", (Object[]) new Integer[]{4, 4, 4, 3, 2});
        a2.a((w.a) "SE", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        a2.a((w.a) "SG", (Object[]) new Integer[]{0, 0, 3, 3, 4});
        a2.a((w.a) "SH", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        a2.a((w.a) "SI", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        a2.a((w.a) "SJ", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        a2.a((w.a) "SK", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        a2.a((w.a) "SL", (Object[]) new Integer[]{4, 3, 3, 1, 2});
        a2.a((w.a) "SM", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        a2.a((w.a) "SN", (Object[]) new Integer[]{4, 4, 4, 3, 2});
        a2.a((w.a) "SO", (Object[]) new Integer[]{3, 4, 4, 4, 2});
        a2.a((w.a) "SR", (Object[]) new Integer[]{3, 2, 3, 1, 2});
        a2.a((w.a) "SS", (Object[]) new Integer[]{4, 1, 4, 2, 2});
        a2.a((w.a) "ST", (Object[]) new Integer[]{2, 2, 1, 2, 2});
        a2.a((w.a) "SV", (Object[]) new Integer[]{2, 1, 4, 4, 2});
        a2.a((w.a) "SX", (Object[]) new Integer[]{2, 2, 1, 0, 2});
        a2.a((w.a) "SY", (Object[]) new Integer[]{4, 3, 2, 2, 2});
        a2.a((w.a) "SZ", (Object[]) new Integer[]{3, 4, 3, 4, 2});
        a2.a((w.a) "TC", (Object[]) new Integer[]{1, 2, 1, 0, 2});
        a2.a((w.a) "TD", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        a2.a((w.a) "TG", (Object[]) new Integer[]{3, 2, 1, 0, 2});
        a2.a((w.a) "TH", (Object[]) new Integer[]{1, 3, 4, 3, 0});
        a2.a((w.a) "TJ", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        a2.a((w.a) "TL", (Object[]) new Integer[]{4, 1, 4, 4, 2});
        a2.a((w.a) "TM", (Object[]) new Integer[]{4, 2, 1, 2, 2});
        a2.a((w.a) "TN", (Object[]) new Integer[]{2, 1, 1, 1, 2});
        a2.a((w.a) "TO", (Object[]) new Integer[]{3, 3, 4, 2, 2});
        a2.a((w.a) "TR", (Object[]) new Integer[]{1, 2, 1, 1, 2});
        a2.a((w.a) "TT", (Object[]) new Integer[]{1, 3, 1, 3, 2});
        a2.a((w.a) "TV", (Object[]) new Integer[]{3, 2, 2, 4, 2});
        a2.a((w.a) "TW", (Object[]) new Integer[]{0, 0, 0, 0, 1});
        a2.a((w.a) "TZ", (Object[]) new Integer[]{3, 3, 3, 2, 2});
        a2.a((w.a) "UA", (Object[]) new Integer[]{0, 3, 0, 0, 2});
        a2.a((w.a) "UG", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        a2.a((w.a) "US", (Object[]) new Integer[]{0, 1, 3, 3, 3});
        a2.a((w.a) "UY", (Object[]) new Integer[]{2, 1, 1, 1, 2});
        a2.a((w.a) "UZ", (Object[]) new Integer[]{2, 0, 3, 2, 2});
        a2.a((w.a) "VC", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        a2.a((w.a) "VE", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        a2.a((w.a) "VG", (Object[]) new Integer[]{2, 2, 1, 2, 2});
        a2.a((w.a) "VI", (Object[]) new Integer[]{1, 2, 2, 4, 2});
        a2.a((w.a) "VN", (Object[]) new Integer[]{0, 1, 4, 4, 2});
        a2.a((w.a) "VU", (Object[]) new Integer[]{4, 1, 3, 1, 2});
        a2.a((w.a) "WS", (Object[]) new Integer[]{3, 1, 4, 2, 2});
        a2.a((w.a) "XK", (Object[]) new Integer[]{1, 1, 1, 0, 2});
        a2.a((w.a) "YE", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        a2.a((w.a) "YT", (Object[]) new Integer[]{3, 2, 1, 3, 2});
        a2.a((w.a) "ZA", (Object[]) new Integer[]{2, 3, 2, 2, 2});
        a2.a((w.a) "ZM", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        a2.a((w.a) "ZW", (Object[]) new Integer[]{3, 3, 3, 3, 2});
        return a2.a();
    }

    private static boolean c(j jVar, boolean z) {
        return z && !jVar.b(8);
    }

    @Override // com.google.android.exoplayer2.upstream.c
    public final v a() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.c
    public final void a(Handler handler, c.a aVar) {
        com.google.android.exoplayer2.util.a.b(handler);
        com.google.android.exoplayer2.util.a.b(aVar);
        c.a.C0446a aVar2 = this.j;
        com.google.android.exoplayer2.util.a.b(handler);
        com.google.android.exoplayer2.util.a.b(aVar);
        aVar2.a(aVar);
        aVar2.f22131a.add(new c.a.C0446a.C0447a(handler, aVar));
    }

    @Override // com.google.android.exoplayer2.upstream.c
    public final void a(c.a aVar) {
        this.j.a(aVar);
    }

    @Override // com.google.android.exoplayer2.upstream.v
    public final void a(j jVar, boolean z) {
        synchronized (this) {
            if (c(jVar, z)) {
                if (this.m == 0) {
                    this.n = this.l.a();
                }
                this.m++;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.v
    public final void a(j jVar, boolean z, int i) {
        synchronized (this) {
            if (c(jVar, z)) {
                this.o += i;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.v
    public final void b(j jVar, boolean z) {
        y.a aVar;
        float f2;
        synchronized (this) {
            if (c(jVar, z)) {
                int i = 0;
                com.google.android.exoplayer2.util.a.b(this.m > 0);
                long a2 = this.l.a();
                int i2 = (int) (a2 - this.n);
                this.q += i2;
                long j = this.r;
                long j2 = this.o;
                this.r = j + j2;
                if (i2 > 0) {
                    float f3 = (((float) j2) * 8000.0f) / i2;
                    y yVar = this.k;
                    int sqrt = (int) Math.sqrt(j2);
                    if (yVar.f != 1) {
                        Collections.sort(yVar.f22346d, y.f22343a);
                        yVar.f = 1;
                    }
                    if (yVar.i > 0) {
                        y.a[] aVarArr = yVar.e;
                        int i3 = yVar.i - 1;
                        yVar.i = i3;
                        aVar = aVarArr[i3];
                    } else {
                        aVar = new y.a();
                    }
                    int i4 = yVar.g;
                    yVar.g = i4 + 1;
                    aVar.f22347a = i4;
                    aVar.f22348b = sqrt;
                    aVar.f22349c = f3;
                    yVar.f22346d.add(aVar);
                    yVar.h += sqrt;
                    while (yVar.h > yVar.f22345c) {
                        int i5 = yVar.h - yVar.f22345c;
                        y.a aVar2 = yVar.f22346d.get(0);
                        if (aVar2.f22348b <= i5) {
                            yVar.h -= aVar2.f22348b;
                            yVar.f22346d.remove(0);
                            if (yVar.i < 5) {
                                y.a[] aVarArr2 = yVar.e;
                                int i6 = yVar.i;
                                yVar.i = i6 + 1;
                                aVarArr2[i6] = aVar2;
                            }
                        } else {
                            aVar2.f22348b -= i5;
                            yVar.h -= i5;
                        }
                    }
                    if (this.q >= 2000 || this.r >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                        y yVar2 = this.k;
                        if (yVar2.f != 0) {
                            Collections.sort(yVar2.f22346d, y.f22344b);
                            yVar2.f = 0;
                        }
                        float f4 = yVar2.h;
                        int i7 = 0;
                        while (true) {
                            if (i < yVar2.f22346d.size()) {
                                y.a aVar3 = yVar2.f22346d.get(i);
                                i7 += aVar3.f22348b;
                                if (i7 >= f4 * 0.5f) {
                                    f2 = aVar3.f22349c;
                                    break;
                                }
                                i++;
                            } else {
                                f2 = yVar2.f22346d.isEmpty() ? Float.NaN : yVar2.f22346d.get(yVar2.f22346d.size() - 1).f22349c;
                            }
                        }
                        this.s = f2;
                    }
                    a(i2, this.o, this.s);
                    this.n = a2;
                    this.o = 0L;
                }
                this.m--;
            }
        }
    }
}
