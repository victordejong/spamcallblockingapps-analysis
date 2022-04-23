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
    private static csa k;

    /* renamed from: a  reason: collision with root package name */
    final Context f26332a;

    /* renamed from: b  reason: collision with root package name */
    final cwq f26333b;

    /* renamed from: c  reason: collision with root package name */
    final cwt f26334c;

    /* renamed from: d  reason: collision with root package name */
    final cwx f26335d;
    final cuy e;
    final duu f;
    final cwu g;
    volatile long h = 0;
    final Object i = new Object();
    volatile boolean j;
    private final dtb l;
    private final Executor m;

    private csa(Context context, cuy cuyVar, cwq cwqVar, cwt cwtVar, cwx cwxVar, dtb dtbVar, Executor executor, cux cuxVar, duu duuVar) {
        this.f26332a = context;
        this.e = cuyVar;
        this.f26333b = cwqVar;
        this.f26334c = cwtVar;
        this.f26335d = cwxVar;
        this.l = dtbVar;
        this.m = executor;
        this.f = duuVar;
        this.g = new cuc(this, cuxVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static csa a(Context context, cuy cuyVar, cvc cvcVar, Executor executor) {
        cvo a2 = cvo.a(context, executor, cuyVar, cvcVar);
        zzfa zzfaVar = new zzfa(context);
        dtb dtbVar = new dtb(cvcVar, a2, new dtn(context, zzfaVar), zzfaVar);
        duu a3 = new cwf(context, cuyVar).a();
        cux cuxVar = new cux();
        return new csa(context, cuyVar, new cwq(context, a3), new cwt(context, a3, new cra(cuyVar), ((Boolean) ekb.e().a(aq.bs)).booleanValue()), new cwx(context, dtbVar, cuyVar, cuxVar), dtbVar, executor, cuxVar, a3);
    }

    public static csa a(String str, Context context, boolean z) {
        csa csaVar;
        synchronized (csa.class) {
            try {
                if (k == null) {
                    cvc b2 = cvc.d().a(str).a(z).b();
                    ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
                    csa a2 = a(context, cuy.a(context, newCachedThreadPool), b2, newCachedThreadPool);
                    k = a2;
                    a2.a();
                    k.c();
                }
                csaVar = k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return csaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final cwn a(int i) {
        if (!cwf.a(this.f)) {
            return null;
        }
        return ((Boolean) ekb.e().a(aq.bq)).booleanValue() ? this.f26334c.a(i) : this.f26333b.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            cwn a2 = a(cwv.f26513a);
            if (a2 != null) {
                this.f26335d.a(a2);
            } else {
                this.e.a(4013, System.currentTimeMillis() - currentTimeMillis);
            }
        }
    }

    public final void b() {
        if (cwf.a(this.f)) {
            this.m.execute(new ctb(this));
        }
    }

    public final void c() {
        if (!this.j) {
            synchronized (this.i) {
                if (!this.j) {
                    if ((System.currentTimeMillis() / 1000) - this.h >= 3600) {
                        cwn b2 = this.f26335d.b();
                        if (b2 == null || b2.a()) {
                            b();
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, View view, Activity activity) {
        c();
        cvf a2 = this.f26335d.a();
        if (a2 == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String a3 = a2.a(context, view, activity);
        this.e.a(5002, System.currentTimeMillis() - currentTimeMillis, a3);
        return a3;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view, Activity activity) {
        c();
        cvf a2 = this.f26335d.a();
        if (a2 == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String a3 = a2.a(context, str, view, activity);
        this.e.a(5000, System.currentTimeMillis() - currentTimeMillis, a3);
        return a3;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zza(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zza(MotionEvent motionEvent) {
        cvf a2 = this.f26335d.a();
        if (a2 != null) {
            try {
                a2.a(motionEvent);
            } catch (zzdww e) {
                this.e.a(e.f28621a, -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zzb(Context context) {
        c();
        cvf a2 = this.f26335d.a();
        if (a2 == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String a3 = a2.a(context);
        this.e.a(5001, System.currentTimeMillis() - currentTimeMillis, a3);
        return a3;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final void zzb(View view) {
        this.l.f27176a.a(view);
    }
}
