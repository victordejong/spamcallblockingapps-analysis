package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csa.class */
public final class csa implements cxx {

    /* renamed from: k */
    private static csa f46467k;

    /* renamed from: a */
    final Context f46468a;

    /* renamed from: b */
    final cwq f46469b;

    /* renamed from: c */
    final cwt f46470c;

    /* renamed from: d */
    final cwx f46471d;

    /* renamed from: e */
    final cuy f46472e;

    /* renamed from: f */
    final duu f46473f;

    /* renamed from: g */
    final cwu f46474g;

    /* renamed from: h */
    volatile long f46475h = 0;

    /* renamed from: i */
    final Object f46476i = new Object();

    /* renamed from: j */
    volatile boolean f46477j;

    /* renamed from: l */
    private final dtb f46478l;

    /* renamed from: m */
    private final Executor f46479m;

    private csa(Context context, cuy cuyVar, cwq cwqVar, cwt cwtVar, cwx cwxVar, dtb dtbVar, Executor executor, cux cuxVar, duu duuVar) {
        this.f46468a = context;
        this.f46472e = cuyVar;
        this.f46469b = cwqVar;
        this.f46470c = cwtVar;
        this.f46471d = cwxVar;
        this.f46478l = dtbVar;
        this.f46479m = executor;
        this.f46473f = duuVar;
        this.f46474g = new cuc(this, cuxVar);
    }

    /* renamed from: a */
    public static csa m17276a(Context context, cuy cuyVar, cvc cvcVar, Executor executor) {
        cvo m17162a = cvo.m17162a(context, executor, cuyVar, cvcVar);
        zzfa zzfaVar = new zzfa(context);
        dtb dtbVar = new dtb(cvcVar, m17162a, new dtn(context, zzfaVar), zzfaVar);
        duu m17136a = new cwf(context, cuyVar).m17136a();
        cux cuxVar = new cux();
        return new csa(context, cuyVar, new cwq(context, m17136a), new cwt(context, m17136a, new cra(cuyVar), ((Boolean) ekb.m14831e().m18571a(C12187aq.f42735bs)).booleanValue()), new cwx(context, dtbVar, cuyVar, cuxVar), dtbVar, executor, cuxVar, m17136a);
    }

    /* renamed from: a */
    public static csa m17275a(String str, Context context, boolean z) {
        csa csaVar;
        synchronized (csa.class) {
            try {
                if (f46467k == null) {
                    cvc mo17176b = cvc.m17183d().mo17178a(str).mo17177a(z).mo17176b();
                    ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
                    csa m17276a = m17276a(context, cuy.m17187a(context, newCachedThreadPool), mo17176b, newCachedThreadPool);
                    f46467k = m17276a;
                    m17276a.m17278a();
                    f46467k.m17273c();
                }
                csaVar = f46467k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return csaVar;
    }

    /* renamed from: a */
    public final cwn m17277a(int i) {
        if (!cwf.m17135a(this.f46473f)) {
            return null;
        }
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42733bq)).booleanValue() ? this.f46470c.m17104a(i) : this.f46469b.m17110a(i);
    }

    /* renamed from: a */
    public final void m17278a() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            cwn m17277a = m17277a(cwv.f46685a);
            if (m17277a != null) {
                this.f46471d.m17092a(m17277a);
            } else {
                this.f46472e.m17193a(4013, System.currentTimeMillis() - currentTimeMillis);
            }
        }
    }

    /* renamed from: b */
    public final void m17274b() {
        if (!cwf.m17135a(this.f46473f)) {
            return;
        }
        this.f46479m.execute(new ctb(this));
    }

    /* renamed from: c */
    public final void m17273c() {
        if (!this.f46477j) {
            synchronized (this.f46476i) {
                if (!this.f46477j) {
                    if ((System.currentTimeMillis() / 1000) - this.f46475h < 3600) {
                        return;
                    }
                    cwn m17090b = this.f46471d.m17090b();
                    if (m17090b == null || m17090b.m17127a()) {
                        m17274b();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, View view, Activity activity) {
        m17273c();
        cvf m17093a = this.f46471d.m17093a();
        if (m17093a != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo17124a = m17093a.mo17124a(context, view, activity);
            this.f46472e.m17190a(5002, System.currentTimeMillis() - currentTimeMillis, mo17124a);
            return mo17124a;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view, Activity activity) {
        m17273c();
        cvf m17093a = this.f46471d.m17093a();
        if (m17093a != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo17123a = m17093a.mo17123a(context, str, view, activity);
            this.f46472e.m17190a(5000, System.currentTimeMillis() - currentTimeMillis, mo17123a);
            return mo17123a;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zza(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zza(MotionEvent motionEvent) {
        cvf m17093a = this.f46471d.m17093a();
        if (m17093a != null) {
            try {
                m17093a.mo17122a(motionEvent);
            } catch (zzdww e) {
                this.f46472e.m17192a(e.f50216a, -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zzb(Context context) {
        m17273c();
        cvf m17093a = this.f46471d.m17093a();
        if (m17093a != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo17125a = m17093a.mo17125a(context);
            this.f46472e.m17190a(5001, System.currentTimeMillis() - currentTimeMillis, mo17125a);
            return mo17125a;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zzb(View view) {
        this.f46478l.f47532a.m15715a(view);
    }
}
