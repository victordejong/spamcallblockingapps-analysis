package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmi.class */
public final class bmi {

    /* renamed from: e */
    final Context f44263e;

    /* renamed from: f */
    final WeakReference<Context> f44264f;

    /* renamed from: g */
    final bjg f44265g;

    /* renamed from: h */
    final Executor f44266h;

    /* renamed from: i */
    final Executor f44267i;

    /* renamed from: j */
    final ScheduledExecutorService f44268j;

    /* renamed from: k */
    final blr f44269k;

    /* renamed from: l */
    final axn f44270l;

    /* renamed from: o */
    private final zzbar f44273o;

    /* renamed from: n */
    private boolean f44272n = false;

    /* renamed from: a */
    boolean f44259a = false;

    /* renamed from: b */
    boolean f44260b = false;

    /* renamed from: d */
    final C13103zp<Boolean> f44262d = new C13103zp<>();

    /* renamed from: p */
    private Map<String, zzajm> f44274p = new ConcurrentHashMap();

    /* renamed from: m */
    boolean f44271m = true;

    /* renamed from: c */
    final long f44261c = zzr.zzlc().mo19038b();

    public bmi(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, bjg bjgVar, ScheduledExecutorService scheduledExecutorService, blr blrVar, zzbar zzbarVar, axn axnVar) {
        this.f44265g = bjgVar;
        this.f44263e = context;
        this.f44264f = weakReference;
        this.f44266h = executor2;
        this.f44268j = scheduledExecutorService;
        this.f44267i = executor;
        this.f44269k = blrVar;
        this.f44273o = zzbarVar;
        this.f44270l = axnVar;
        m17734a("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* renamed from: c */
    private final dbt<String> m17732c() {
        synchronized (this) {
            String str = zzr.zzkz().m13975d().zzzg().f50057c;
            if (!TextUtils.isEmpty(str)) {
                return dbh.m16899a(str);
            }
            C13103zp c13103zp = new C13103zp();
            zzr.zzkz().m13975d().zzb(new Runnable(this, c13103zp) { // from class: com.google.android.gms.internal.ads.bmn

                /* renamed from: a */
                private final bmi f44281a;

                /* renamed from: b */
                private final C13103zp f44282b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44281a = this;
                    this.f44282b = c13103zp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final bmi bmiVar = this.f44281a;
                    final C13103zp c13103zp2 = this.f44282b;
                    bmiVar.f44266h.execute(new Runnable(bmiVar, c13103zp2) { // from class: com.google.android.gms.internal.ads.bmq

                        /* renamed from: a */
                        private final bmi f44289a;

                        /* renamed from: b */
                        private final C13103zp f44290b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f44289a = bmiVar;
                            this.f44290b = c13103zp2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            C13103zp c13103zp3 = this.f44290b;
                            String str2 = zzr.zzkz().m13975d().zzzg().f50057c;
                            if (!TextUtils.isEmpty(str2)) {
                                c13103zp3.set(str2);
                            } else {
                                c13103zp3.setException(new Exception());
                            }
                        }
                    });
                }
            });
            return c13103zp;
        }
    }

    /* renamed from: a */
    public final void m17736a() {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42724bh)).booleanValue() && !C12282cq.f46368a.mo17481a().booleanValue()) {
            if (this.f44273o.zzekb >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42725bi)).intValue() && this.f44271m) {
                if (this.f44272n) {
                    return;
                }
                synchronized (this) {
                    if (this.f44272n) {
                        return;
                    }
                    this.f44269k.m17758a();
                    this.f44270l.mo17676a();
                    this.f44262d.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bmk

                        /* renamed from: a */
                        private final bmi f44277a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f44277a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            bmi bmiVar = this.f44277a;
                            bmiVar.f44269k.m17755b();
                            bmiVar.f44270l.mo17673b();
                            bmiVar.f44259a = true;
                        }
                    }, this.f44266h);
                    this.f44272n = true;
                    dbt<String> m17732c = m17732c();
                    this.f44268j.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bmm

                        /* renamed from: a */
                        private final bmi f44280a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f44280a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            bmi bmiVar = this.f44280a;
                            synchronized (bmiVar) {
                                if (bmiVar.f44260b) {
                                    return;
                                }
                                bmiVar.m17734a("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzr.zzlc().mo19038b() - bmiVar.f44261c));
                                bmiVar.f44262d.setException(new Exception());
                            }
                        }
                    }, ((Long) ekb.m14831e().m18571a(C12187aq.f42727bk)).longValue(), TimeUnit.SECONDS);
                    dbh.m16901a(m17732c, new bmt(this), this.f44266h);
                    return;
                }
            }
        }
        if (!this.f44272n) {
            m17734a("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.f44262d.set(Boolean.FALSE);
            this.f44272n = true;
            this.f44259a = true;
        }
    }

    /* renamed from: a */
    public final void m17734a(String str, boolean z, String str2, int i) {
        this.f44274p.put(str, new zzajm(str, z, i, str2));
    }

    /* renamed from: b */
    public final List<zzajm> m17733b() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f44274p.keySet()) {
            zzajm zzajmVar = this.f44274p.get(str);
            arrayList.add(new zzajm(str, zzajmVar.zzdkb, zzajmVar.zzdkc, zzajmVar.description));
        }
        return arrayList;
    }
}
