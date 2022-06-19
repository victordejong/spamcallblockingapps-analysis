package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cfb.class */
public final class cfb implements cjd {

    /* renamed from: a */
    private static cfb f12860a;

    /* renamed from: b */
    private final Context f12861b;

    /* renamed from: c */
    private final cnk f12862c;

    /* renamed from: d */
    private final cnr f12863d;

    /* renamed from: e */
    private final dii f12864e;

    /* renamed from: f */
    private final clq f12865f;

    /* renamed from: g */
    private final Executor f12866g;

    /* renamed from: h */
    private final dkc f12867h;

    /* renamed from: i */
    private volatile long f12868i = 0;

    /* renamed from: j */
    private final Object f12869j = new Object();

    /* renamed from: k */
    private volatile boolean f12870k;

    private cfb(Context context, clq clqVar, cnk cnkVar, cnr cnrVar, dii diiVar, Executor executor, dkc dkcVar) {
        this.f12861b = context;
        this.f12865f = clqVar;
        this.f12862c = cnkVar;
        this.f12863d = cnrVar;
        this.f12864e = diiVar;
        this.f12866g = executor;
        this.f12867h = dkcVar;
    }

    /* renamed from: a */
    public static cfb m11408a(Context context, clq clqVar, clu cluVar) {
        return m11407a(context, clqVar, cluVar, Executors.newCachedThreadPool());
    }

    /* renamed from: a */
    private static cfb m11407a(Context context, clq clqVar, clu cluVar, Executor executor) {
        cmh cmhVar = new cmh(context, executor, clqVar, cluVar);
        dil dilVar = new dil(context);
        dii diiVar = new dii(cluVar, cmhVar, new diu(context, dilVar), dilVar);
        dkc m11006a = new cmx(context, clqVar).m11006a();
        return new cfb(context, clqVar, new cnk(context, m11006a), new cnr(context, diiVar, clqVar), diiVar, executor, m11006a);
    }

    /* renamed from: a */
    public static cfb m11404a(String str, Context context, boolean z) {
        cfb cfbVar;
        synchronized (cfb.class) {
            try {
                if (f12860a == null) {
                    clu mo11073a = clu.m11077d().mo11072a(str).mo11071a(z).mo11073a();
                    ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
                    cfb m11407a = m11407a(context, clq.m11080a(context, newCachedThreadPool), mo11073a, newCachedThreadPool);
                    f12860a = m11407a;
                    m11407a.m11409a();
                    f12860a.m11399d();
                }
                cfbVar = f12860a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cfbVar;
    }

    /* renamed from: c */
    public final void m11401c() {
        String str;
        String str2;
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        cng m10973a = this.f12862c.m10973a(cnp.f13410a);
        if (m10973a != null) {
            str = m10973a.m10996a().m9353a();
            str2 = m10973a.m10996a().m9347b();
        } else {
            str2 = null;
            str = null;
        }
        try {
            cno m11059a = cmc.m11059a(this.f12861b, 1, this.f12867h, str, str2, "1", this.f12865f);
            if (m11059a.f13407a == null || m11059a.f13407a.length == 0) {
                this.f12865f.m11086a(5009, System.currentTimeMillis() - currentTimeMillis);
                return;
            }
            dke m9357a = dke.m9357a(dbi.m10219a(m11059a.f13407a), dci.m10136b());
            if (m9357a.m9358a().m9353a().isEmpty() || m9357a.m9358a().m9347b().isEmpty() || m9357a.m9355c().m10210d().length == 0) {
                z = false;
            } else {
                cng m10973a2 = this.f12862c.m10973a(cnp.f13410a);
                if (m10973a2 == null) {
                    z = true;
                } else {
                    dki m10996a = m10973a2.m10996a();
                    z = m10996a == null ? true : !m9357a.m9358a().m9353a().equals(m10996a.m9353a()) || !m9357a.m9358a().m9347b().equals(m10996a.m9347b());
                }
            }
            if (!z) {
                this.f12865f.m11086a(5010, System.currentTimeMillis() - currentTimeMillis);
            } else if (!this.f12862c.m10972a(m9357a, null)) {
                this.f12865f.m11086a(4009, System.currentTimeMillis() - currentTimeMillis);
            } else {
                this.f12863d.m10966a(this.f12862c.m10973a(cnp.f13410a));
                this.f12868i = System.currentTimeMillis() / 1000;
            }
        } catch (zzeco e) {
            this.f12865f.m11085a(4002, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    /* renamed from: d */
    private final void m11399d() {
        if (!this.f12870k) {
            synchronized (this.f12869j) {
                if (!this.f12870k) {
                    if ((System.currentTimeMillis() / 1000) - this.f12868i < 3600) {
                        return;
                    }
                    cng m10964b = this.f12863d.m10964b();
                    if (m10964b == null || m10964b.m10995a(3600L)) {
                        m11403b();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11053a(Context context) {
        String str;
        m11399d();
        clw m10967a = this.f12863d.m10967a();
        if (m10967a != null) {
            long currentTimeMillis = System.currentTimeMillis();
            str = m10967a.mo10989a(context, (String) null);
            this.f12865f.m11083a(5001, System.currentTimeMillis() - currentTimeMillis, str, null);
        } else {
            str = "";
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11052a(Context context, View view, Activity activity) {
        String str;
        m11399d();
        clw m10967a = this.f12863d.m10967a();
        if (m10967a != null) {
            long currentTimeMillis = System.currentTimeMillis();
            str = m10967a.mo10988a(context, null, view, activity);
            this.f12865f.m11083a(5002, System.currentTimeMillis() - currentTimeMillis, str, null);
        } else {
            str = "";
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11049a(Context context, String str, View view) {
        return mo11048a(context, str, view, (Activity) null);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11048a(Context context, String str, View view, Activity activity) {
        String str2;
        m11399d();
        clw m10967a = this.f12863d.m10967a();
        if (m10967a != null) {
            long currentTimeMillis = System.currentTimeMillis();
            str2 = m10967a.mo10987a(context, null, str, view, activity);
            this.f12865f.m11083a(5000, System.currentTimeMillis() - currentTimeMillis, str2, null);
        } else {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: a */
    public final void m11409a() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            cng m10973a = this.f12862c.m10973a(cnp.f13410a);
            if (m10973a == null || m10973a.m10991e()) {
                this.f12865f.m11086a(4013, System.currentTimeMillis() - currentTimeMillis);
            } else {
                this.f12863d.m10966a(m10973a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final void mo11054a(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final void mo11047a(MotionEvent motionEvent) {
        clw m10967a = this.f12863d.m10967a();
        if (m10967a != null) {
            try {
                m10967a.mo10986a((String) null, motionEvent);
            } catch (zzdnk e) {
                this.f12865f.m11085a(e.m6637a(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final void mo11046a(View view) {
        this.f12864e.m9427a(view);
    }

    /* renamed from: b */
    public final void m11403b() {
        this.f12866g.execute(new cic(this));
    }
}
