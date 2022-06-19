package com.google.android.exoplayer2.upstream;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.p008v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.upstream.C11574l;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11632y;
import com.google.common.collect.AbstractC15549v;
import com.google.common.collect.AbstractC15556x;
import com.google.common.collect.C15554w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/l.class */
public final class C11574l implements AbstractC11534c, AbstractC11590v {

    /* renamed from: a */
    public static final C15554w<String, Integer> f38541a = m20055c();

    /* renamed from: b */
    public static final AbstractC15549v<Long> f38542b = AbstractC15549v.m8726a(6100000L, 3800000L, 2100000L, 1300000L, 590000L);

    /* renamed from: c */
    public static final AbstractC15549v<Long> f38543c = AbstractC15549v.m8726a(218000L, 159000L, 145000L, 130000L, 112000L);

    /* renamed from: d */
    public static final AbstractC15549v<Long> f38544d = AbstractC15549v.m8726a(2200000L, 1300000L, 930000L, 730000L, 530000L);

    /* renamed from: e */
    public static final AbstractC15549v<Long> f38545e = AbstractC15549v.m8726a(4800000L, 2700000L, 1800000L, 1200000L, 630000L);

    /* renamed from: f */
    public static final AbstractC15549v<Long> f38546f = AbstractC15549v.m8726a(12000000L, 8800000L, 5900000L, 3500000L, 1800000L);

    /* renamed from: g */
    private static C11574l f38547g;

    /* renamed from: h */
    private final Context f38548h;

    /* renamed from: i */
    private final AbstractC15556x<Integer, Long> f38549i;

    /* renamed from: j */
    private final AbstractC11534c.AbstractC11535a.C11536a f38550j;

    /* renamed from: k */
    private final C11632y f38551k;

    /* renamed from: l */
    private final AbstractC11603c f38552l;

    /* renamed from: m */
    private int f38553m;

    /* renamed from: n */
    private long f38554n;

    /* renamed from: o */
    private long f38555o;

    /* renamed from: p */
    private int f38556p;

    /* renamed from: q */
    private long f38557q;

    /* renamed from: r */
    private long f38558r;

    /* renamed from: s */
    private long f38559s;

    /* renamed from: t */
    private long f38560t;

    /* renamed from: u */
    private boolean f38561u;

    /* renamed from: v */
    private int f38562v;

    /* renamed from: com.google.android.exoplayer2.upstream.l$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/l$a.class */
    public static final class C11576a {

        /* renamed from: a */
        final Context f38563a;

        /* renamed from: b */
        Map<Integer, Long> f38564b;

        /* renamed from: c */
        int f38565c;

        /* renamed from: d */
        AbstractC11603c f38566d;

        /* renamed from: e */
        boolean f38567e;

        public C11576a(Context context) {
            this.f38563a = context == null ? null : context.getApplicationContext();
            AbstractC15549v<Integer> mo8682d = C11574l.f38541a.mo8682d(C11599af.m19945b(context));
            AbstractC15549v<Integer> m8726a = mo8682d.isEmpty() ? AbstractC15549v.m8726a(2, 2, 2, 2, 2) : mo8682d;
            HashMap hashMap = new HashMap(6);
            hashMap.put(0, 1000000L);
            hashMap.put(2, C11574l.f38542b.get(m8726a.get(0).intValue()));
            hashMap.put(3, C11574l.f38543c.get(m8726a.get(1).intValue()));
            hashMap.put(4, C11574l.f38544d.get(m8726a.get(2).intValue()));
            hashMap.put(5, C11574l.f38545e.get(m8726a.get(3).intValue()));
            hashMap.put(9, C11574l.f38546f.get(m8726a.get(4).intValue()));
            hashMap.put(7, C11574l.f38542b.get(m8726a.get(0).intValue()));
            this.f38564b = hashMap;
            this.f38565c = 2000;
            this.f38566d = AbstractC11603c.f38667a;
            this.f38567e = true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.l$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/l$b.class */
    public static final class C11577b extends BroadcastReceiver {

        /* renamed from: a */
        private static C11577b f38568a;

        /* renamed from: b */
        private final Handler f38569b = new Handler(Looper.getMainLooper());

        /* renamed from: c */
        private final ArrayList<WeakReference<C11574l>> f38570c = new ArrayList<>();

        private C11577b() {
        }

        /* renamed from: a */
        public static C11577b m20052a(Context context) {
            C11577b c11577b;
            synchronized (C11577b.class) {
                try {
                    if (f38568a == null) {
                        f38568a = new C11577b();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f38568a, intentFilter);
                    }
                    c11577b = f38568a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c11577b;
        }

        /* renamed from: a */
        private void m20053a() {
            for (int size = this.f38570c.size() - 1; size >= 0; size--) {
                if (this.f38570c.get(size).get() == null) {
                    this.f38570c.remove(size);
                }
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m20050b(C11574l c11574l) {
            c11574l.m20056b();
        }

        /* renamed from: a */
        public final void m20051a(final C11574l c11574l) {
            synchronized (this) {
                m20053a();
                this.f38570c.add(new WeakReference<>(c11574l));
                this.f38569b.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream._$$Lambda$l$b$NfEQ4zhxeWpt1Q4lTRve9Gr2v0o
                    @Override // java.lang.Runnable
                    public final void run() {
                        C11574l.C11577b.this.m20050b(c11574l);
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
                m20053a();
                for (int i = 0; i < this.f38570c.size(); i++) {
                    C11574l c11574l = this.f38570c.get(i).get();
                    if (c11574l != null) {
                        c11574l.m20056b();
                    }
                }
            }
        }
    }

    @Deprecated
    public C11574l() {
        this(null, AbstractC15556x.m8704a(), 2000, AbstractC11603c.f38667a, false);
    }

    private C11574l(Context context, Map<Integer, Long> map, int i, AbstractC11603c abstractC11603c, boolean z) {
        this.f38548h = context == null ? null : context.getApplicationContext();
        this.f38549i = AbstractC15556x.m8703a(map);
        this.f38550j = new AbstractC11534c.AbstractC11535a.C11536a();
        this.f38551k = new C11632y(i);
        this.f38552l = abstractC11603c;
        int m19992a = context == null ? 0 : C11599af.m19992a(context);
        this.f38556p = m19992a;
        this.f38559s = m20062a(m19992a);
        if (context == null || !z) {
            return;
        }
        C11577b.m20052a(context).m20051a(this);
    }

    /* renamed from: a */
    private long m20062a(int i) {
        Long l = this.f38549i.get(Integer.valueOf(i));
        Long l2 = l;
        if (l == null) {
            l2 = this.f38549i.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    /* renamed from: a */
    public static C11574l m20060a(Context context) {
        C11574l c11574l;
        synchronized (C11574l.class) {
            try {
                if (f38547g == null) {
                    C11576a c11576a = new C11576a(context);
                    f38547g = new C11574l(c11576a.f38563a, c11576a.f38564b, c11576a.f38565c, c11576a.f38566d, c11576a.f38567e);
                }
                c11574l = f38547g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c11574l;
    }

    /* renamed from: a */
    private void m20061a(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.f38560t) {
            return;
        }
        this.f38560t = j2;
        this.f38550j.m20184a(i, j, j2);
    }

    /* renamed from: b */
    public void m20056b() {
        int i;
        synchronized (this) {
            if (this.f38561u) {
                i = this.f38562v;
            } else {
                Context context = this.f38548h;
                i = context == null ? 0 : C11599af.m19992a(context);
            }
            if (this.f38556p == i) {
                return;
            }
            this.f38556p = i;
            if (i == 1 || i == 0 || i == 8) {
                return;
            }
            this.f38559s = m20062a(i);
            long mo19910a = this.f38552l.mo19910a();
            m20061a(this.f38553m > 0 ? (int) (mo19910a - this.f38554n) : 0, this.f38555o, this.f38559s);
            this.f38554n = mo19910a;
            this.f38555o = 0L;
            this.f38558r = 0L;
            this.f38557q = 0L;
            C11632y c11632y = this.f38551k;
            c11632y.f38744d.clear();
            c11632y.f38746f = -1;
            c11632y.f38747g = 0;
            c11632y.f38748h = 0;
        }
    }

    /* renamed from: c */
    private static C15554w<String, Integer> m20055c() {
        C15554w.C15555a m8709a = C15554w.m8709a();
        m8709a.m8705a((C15554w.C15555a) "AD", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "AE", (Object[]) new Integer[]{1, 4, 4, 4, 1});
        m8709a.m8705a((C15554w.C15555a) "AF", (Object[]) new Integer[]{4, 4, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "AG", (Object[]) new Integer[]{2, 2, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "AI", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "AL", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "AM", (Object[]) new Integer[]{2, 2, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "AO", (Object[]) new Integer[]{3, 4, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "AR", (Object[]) new Integer[]{2, 4, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "AS", (Object[]) new Integer[]{2, 2, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "AT", (Object[]) new Integer[]{0, 3, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "AU", (Object[]) new Integer[]{0, 2, 0, 1, 1});
        m8709a.m8705a((C15554w.C15555a) "AW", (Object[]) new Integer[]{1, 2, 0, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "AX", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "AZ", (Object[]) new Integer[]{3, 3, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "BA", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "BB", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "BD", (Object[]) new Integer[]{2, 0, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "BE", (Object[]) new Integer[]{0, 1, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "BF", (Object[]) new Integer[]{4, 4, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "BG", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "BH", (Object[]) new Integer[]{1, 0, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "BI", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "BJ", (Object[]) new Integer[]{4, 4, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "BL", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "BM", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "BN", (Object[]) new Integer[]{4, 0, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "BO", (Object[]) new Integer[]{2, 3, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "BQ", (Object[]) new Integer[]{1, 2, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "BR", (Object[]) new Integer[]{2, 4, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "BS", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "BT", (Object[]) new Integer[]{3, 0, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "BW", (Object[]) new Integer[]{3, 4, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "BY", (Object[]) new Integer[]{1, 0, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "BZ", (Object[]) new Integer[]{2, 2, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "CA", (Object[]) new Integer[]{0, 3, 1, 2, 3});
        m8709a.m8705a((C15554w.C15555a) "CD", (Object[]) new Integer[]{4, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "CF", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "CG", (Object[]) new Integer[]{3, 4, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "CH", (Object[]) new Integer[]{0, 1, 0, 0, 0});
        m8709a.m8705a((C15554w.C15555a) "CI", (Object[]) new Integer[]{3, 3, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "CK", (Object[]) new Integer[]{3, 2, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "CL", (Object[]) new Integer[]{1, 1, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "CM", (Object[]) new Integer[]{3, 4, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "CN", (Object[]) new Integer[]{2, 2, 2, 1, 3});
        m8709a.m8705a((C15554w.C15555a) "CO", (Object[]) new Integer[]{2, 4, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "CR", (Object[]) new Integer[]{2, 3, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "CU", (Object[]) new Integer[]{4, 4, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "CV", (Object[]) new Integer[]{2, 3, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "CW", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "CY", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "CZ", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "DE", (Object[]) new Integer[]{0, 1, 1, 2, 0});
        m8709a.m8705a((C15554w.C15555a) "DJ", (Object[]) new Integer[]{4, 1, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "DK", (Object[]) new Integer[]{0, 0, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "DM", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "DO", (Object[]) new Integer[]{3, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "DZ", (Object[]) new Integer[]{3, 2, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "EC", (Object[]) new Integer[]{2, 4, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "EE", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "EG", (Object[]) new Integer[]{3, 4, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "EH", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "ER", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "ES", (Object[]) new Integer[]{0, 1, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "ET", (Object[]) new Integer[]{4, 4, 4, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "FI", (Object[]) new Integer[]{0, 0, 1, 0, 0});
        m8709a.m8705a((C15554w.C15555a) "FJ", (Object[]) new Integer[]{3, 0, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "FK", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "FM", (Object[]) new Integer[]{4, 2, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "FO", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "FR", (Object[]) new Integer[]{1, 0, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "GA", (Object[]) new Integer[]{3, 3, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "GB", (Object[]) new Integer[]{0, 0, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "GD", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "GE", (Object[]) new Integer[]{1, 0, 1, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "GF", (Object[]) new Integer[]{2, 2, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "GG", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "GH", (Object[]) new Integer[]{3, 2, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "GI", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "GL", (Object[]) new Integer[]{1, 2, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "GM", (Object[]) new Integer[]{4, 3, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "GN", (Object[]) new Integer[]{4, 3, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "GP", (Object[]) new Integer[]{2, 2, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "GQ", (Object[]) new Integer[]{4, 2, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "GR", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "GT", (Object[]) new Integer[]{3, 2, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "GU", (Object[]) new Integer[]{1, 2, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "GW", (Object[]) new Integer[]{3, 4, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "GY", (Object[]) new Integer[]{3, 3, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "HK", (Object[]) new Integer[]{0, 2, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "HN", (Object[]) new Integer[]{3, 0, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "HR", (Object[]) new Integer[]{1, 1, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "HT", (Object[]) new Integer[]{4, 3, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "HU", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "ID", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "IE", (Object[]) new Integer[]{0, 0, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "IL", (Object[]) new Integer[]{1, 0, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "IM", (Object[]) new Integer[]{0, 2, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "IN", (Object[]) new Integer[]{2, 1, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "IO", (Object[]) new Integer[]{4, 2, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "IQ", (Object[]) new Integer[]{3, 2, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "IR", (Object[]) new Integer[]{4, 2, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "IS", (Object[]) new Integer[]{0, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "IT", (Object[]) new Integer[]{0, 0, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "JE", (Object[]) new Integer[]{2, 2, 0, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "JM", (Object[]) new Integer[]{3, 3, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "JO", (Object[]) new Integer[]{1, 2, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "JP", (Object[]) new Integer[]{0, 2, 0, 1, 3});
        m8709a.m8705a((C15554w.C15555a) "KE", (Object[]) new Integer[]{3, 4, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "KG", (Object[]) new Integer[]{1, 0, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "KH", (Object[]) new Integer[]{2, 0, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "KI", (Object[]) new Integer[]{4, 2, 3, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "KM", (Object[]) new Integer[]{4, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "KN", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "KP", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "KR", (Object[]) new Integer[]{0, 2, 1, 1, 1});
        m8709a.m8705a((C15554w.C15555a) "KW", (Object[]) new Integer[]{2, 3, 1, 1, 1});
        m8709a.m8705a((C15554w.C15555a) "KY", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "KZ", (Object[]) new Integer[]{1, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "LA", (Object[]) new Integer[]{2, 2, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "LB", (Object[]) new Integer[]{3, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "LC", (Object[]) new Integer[]{1, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "LI", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "LK", (Object[]) new Integer[]{2, 0, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "LR", (Object[]) new Integer[]{3, 4, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "LS", (Object[]) new Integer[]{3, 3, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "LT", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "LU", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "LV", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "LY", (Object[]) new Integer[]{4, 2, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "MA", (Object[]) new Integer[]{2, 1, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "MC", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "MD", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "ME", (Object[]) new Integer[]{1, 2, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "MF", (Object[]) new Integer[]{1, 2, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "MG", (Object[]) new Integer[]{3, 4, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "MH", (Object[]) new Integer[]{4, 2, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "MK", (Object[]) new Integer[]{1, 0, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "ML", (Object[]) new Integer[]{4, 4, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "MM", (Object[]) new Integer[]{2, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "MN", (Object[]) new Integer[]{2, 4, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "MO", (Object[]) new Integer[]{0, 2, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "MP", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "MQ", (Object[]) new Integer[]{2, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "MR", (Object[]) new Integer[]{3, 0, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "MS", (Object[]) new Integer[]{1, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "MT", (Object[]) new Integer[]{0, 2, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "MU", (Object[]) new Integer[]{3, 1, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "MV", (Object[]) new Integer[]{4, 3, 1, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "MW", (Object[]) new Integer[]{4, 1, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "MX", (Object[]) new Integer[]{2, 4, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "MY", (Object[]) new Integer[]{2, 0, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "MZ", (Object[]) new Integer[]{3, 3, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "NA", (Object[]) new Integer[]{4, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "NC", (Object[]) new Integer[]{2, 0, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "NE", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "NF", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "NG", (Object[]) new Integer[]{3, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "NI", (Object[]) new Integer[]{3, 1, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "NL", (Object[]) new Integer[]{0, 2, 4, 2, 0});
        m8709a.m8705a((C15554w.C15555a) "NO", (Object[]) new Integer[]{0, 1, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "NP", (Object[]) new Integer[]{2, 0, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "NR", (Object[]) new Integer[]{4, 2, 3, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "NU", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "NZ", (Object[]) new Integer[]{0, 2, 1, 2, 4});
        m8709a.m8705a((C15554w.C15555a) "OM", (Object[]) new Integer[]{2, 2, 0, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "PA", (Object[]) new Integer[]{1, 3, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "PE", (Object[]) new Integer[]{2, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "PF", (Object[]) new Integer[]{2, 2, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "PG", (Object[]) new Integer[]{4, 3, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "PH", (Object[]) new Integer[]{3, 0, 3, 4, 4});
        m8709a.m8705a((C15554w.C15555a) "PK", (Object[]) new Integer[]{3, 2, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "PL", (Object[]) new Integer[]{1, 0, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "PM", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "PR", (Object[]) new Integer[]{1, 2, 2, 3, 4});
        m8709a.m8705a((C15554w.C15555a) "PS", (Object[]) new Integer[]{3, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "PT", (Object[]) new Integer[]{1, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "PW", (Object[]) new Integer[]{1, 2, 3, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "PY", (Object[]) new Integer[]{2, 0, 3, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "QA", (Object[]) new Integer[]{2, 3, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "RE", (Object[]) new Integer[]{1, 0, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "RO", (Object[]) new Integer[]{1, 1, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "RS", (Object[]) new Integer[]{1, 2, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "RU", (Object[]) new Integer[]{0, 1, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "RW", (Object[]) new Integer[]{4, 3, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "SA", (Object[]) new Integer[]{2, 2, 2, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "SB", (Object[]) new Integer[]{4, 2, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "SC", (Object[]) new Integer[]{4, 2, 0, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "SD", (Object[]) new Integer[]{4, 4, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "SE", (Object[]) new Integer[]{0, 0, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "SG", (Object[]) new Integer[]{0, 0, 3, 3, 4});
        m8709a.m8705a((C15554w.C15555a) "SH", (Object[]) new Integer[]{4, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "SI", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "SJ", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "SK", (Object[]) new Integer[]{0, 1, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "SL", (Object[]) new Integer[]{4, 3, 3, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "SM", (Object[]) new Integer[]{0, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "SN", (Object[]) new Integer[]{4, 4, 4, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "SO", (Object[]) new Integer[]{3, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "SR", (Object[]) new Integer[]{3, 2, 3, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "SS", (Object[]) new Integer[]{4, 1, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "ST", (Object[]) new Integer[]{2, 2, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "SV", (Object[]) new Integer[]{2, 1, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "SX", (Object[]) new Integer[]{2, 2, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "SY", (Object[]) new Integer[]{4, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "SZ", (Object[]) new Integer[]{3, 4, 3, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "TC", (Object[]) new Integer[]{1, 2, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "TD", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "TG", (Object[]) new Integer[]{3, 2, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "TH", (Object[]) new Integer[]{1, 3, 4, 3, 0});
        m8709a.m8705a((C15554w.C15555a) "TJ", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "TL", (Object[]) new Integer[]{4, 1, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "TM", (Object[]) new Integer[]{4, 2, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "TN", (Object[]) new Integer[]{2, 1, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "TO", (Object[]) new Integer[]{3, 3, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "TR", (Object[]) new Integer[]{1, 2, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "TT", (Object[]) new Integer[]{1, 3, 1, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "TV", (Object[]) new Integer[]{3, 2, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "TW", (Object[]) new Integer[]{0, 0, 0, 0, 1});
        m8709a.m8705a((C15554w.C15555a) "TZ", (Object[]) new Integer[]{3, 3, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "UA", (Object[]) new Integer[]{0, 3, 0, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "UG", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "US", (Object[]) new Integer[]{0, 1, 3, 3, 3});
        m8709a.m8705a((C15554w.C15555a) "UY", (Object[]) new Integer[]{2, 1, 1, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "UZ", (Object[]) new Integer[]{2, 0, 3, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "VC", (Object[]) new Integer[]{2, 2, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "VE", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "VG", (Object[]) new Integer[]{2, 2, 1, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "VI", (Object[]) new Integer[]{1, 2, 2, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "VN", (Object[]) new Integer[]{0, 1, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "VU", (Object[]) new Integer[]{4, 1, 3, 1, 2});
        m8709a.m8705a((C15554w.C15555a) "WS", (Object[]) new Integer[]{3, 1, 4, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "XK", (Object[]) new Integer[]{1, 1, 1, 0, 2});
        m8709a.m8705a((C15554w.C15555a) "YE", (Object[]) new Integer[]{4, 4, 4, 4, 2});
        m8709a.m8705a((C15554w.C15555a) "YT", (Object[]) new Integer[]{3, 2, 1, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "ZA", (Object[]) new Integer[]{2, 3, 2, 2, 2});
        m8709a.m8705a((C15554w.C15555a) "ZM", (Object[]) new Integer[]{3, 2, 2, 3, 2});
        m8709a.m8705a((C15554w.C15555a) "ZW", (Object[]) new Integer[]{3, 3, 3, 3, 2});
        return m8709a.m8706a();
    }

    /* renamed from: c */
    private static boolean m20054c(C11570j c11570j, boolean z) {
        return z && !c11570j.m20074b(8);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11534c
    /* renamed from: a */
    public final AbstractC11590v mo20063a() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11534c
    /* renamed from: a */
    public final void mo20059a(Handler handler, AbstractC11534c.AbstractC11535a abstractC11535a) {
        C11593a.m20020b(handler);
        C11593a.m20020b(abstractC11535a);
        AbstractC11534c.AbstractC11535a.C11536a c11536a = this.f38550j;
        C11593a.m20020b(handler);
        C11593a.m20020b(abstractC11535a);
        c11536a.m20182a(abstractC11535a);
        c11536a.f38392a.add(new AbstractC11534c.AbstractC11535a.C11536a.C11537a(handler, abstractC11535a));
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11534c
    /* renamed from: a */
    public final void mo20058a(AbstractC11534c.AbstractC11535a abstractC11535a) {
        this.f38550j.m20182a(abstractC11535a);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11590v
    /* renamed from: a */
    public final void mo20030a(C11570j c11570j, boolean z) {
        synchronized (this) {
            if (!m20054c(c11570j, z)) {
                return;
            }
            if (this.f38553m == 0) {
                this.f38554n = this.f38552l.mo19910a();
            }
            this.f38553m++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11590v
    /* renamed from: a */
    public final void mo20029a(C11570j c11570j, boolean z, int i) {
        synchronized (this) {
            if (!m20054c(c11570j, z)) {
                return;
            }
            this.f38555o += i;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11590v
    /* renamed from: b */
    public final void mo20028b(C11570j c11570j, boolean z) {
        C11632y.C11634a c11634a;
        float f;
        synchronized (this) {
            if (!m20054c(c11570j, z)) {
                return;
            }
            int i = 0;
            C11593a.m20019b(this.f38553m > 0);
            long mo19910a = this.f38552l.mo19910a();
            int i2 = (int) (mo19910a - this.f38554n);
            this.f38557q += i2;
            long j = this.f38558r;
            long j2 = this.f38555o;
            this.f38558r = j + j2;
            if (i2 > 0) {
                float f2 = (((float) j2) * 8000.0f) / i2;
                C11632y c11632y = this.f38551k;
                int sqrt = (int) Math.sqrt(j2);
                if (c11632y.f38746f != 1) {
                    Collections.sort(c11632y.f38744d, C11632y.f38741a);
                    c11632y.f38746f = 1;
                }
                if (c11632y.f38749i > 0) {
                    C11632y.C11634a[] c11634aArr = c11632y.f38745e;
                    int i3 = c11632y.f38749i - 1;
                    c11632y.f38749i = i3;
                    c11634a = c11634aArr[i3];
                } else {
                    c11634a = new C11632y.C11634a();
                }
                int i4 = c11632y.f38747g;
                c11632y.f38747g = i4 + 1;
                c11634a.f38750a = i4;
                c11634a.f38751b = sqrt;
                c11634a.f38752c = f2;
                c11632y.f38744d.add(c11634a);
                c11632y.f38748h += sqrt;
                while (c11632y.f38748h > c11632y.f38743c) {
                    int i5 = c11632y.f38748h - c11632y.f38743c;
                    C11632y.C11634a c11634a2 = c11632y.f38744d.get(0);
                    if (c11634a2.f38751b <= i5) {
                        c11632y.f38748h -= c11634a2.f38751b;
                        c11632y.f38744d.remove(0);
                        if (c11632y.f38749i < 5) {
                            C11632y.C11634a[] c11634aArr2 = c11632y.f38745e;
                            int i6 = c11632y.f38749i;
                            c11632y.f38749i = i6 + 1;
                            c11634aArr2[i6] = c11634a2;
                        }
                    } else {
                        c11634a2.f38751b -= i5;
                        c11632y.f38748h -= i5;
                    }
                }
                if (this.f38557q >= 2000 || this.f38558r >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    C11632y c11632y2 = this.f38551k;
                    if (c11632y2.f38746f != 0) {
                        Collections.sort(c11632y2.f38744d, C11632y.f38742b);
                        c11632y2.f38746f = 0;
                    }
                    float f3 = c11632y2.f38748h;
                    int i7 = 0;
                    while (true) {
                        if (i < c11632y2.f38744d.size()) {
                            C11632y.C11634a c11634a3 = c11632y2.f38744d.get(i);
                            i7 += c11634a3.f38751b;
                            if (i7 >= f3 * 0.5f) {
                                f = c11634a3.f38752c;
                                break;
                            }
                            i++;
                        } else {
                            f = c11632y2.f38744d.isEmpty() ? Float.NaN : c11632y2.f38744d.get(c11632y2.f38744d.size() - 1).f38752c;
                        }
                    }
                    this.f38559s = f;
                }
                m20061a(i2, this.f38555o, this.f38559s);
                this.f38554n = mo19910a;
                this.f38555o = 0L;
            }
            this.f38553m--;
        }
    }
}
