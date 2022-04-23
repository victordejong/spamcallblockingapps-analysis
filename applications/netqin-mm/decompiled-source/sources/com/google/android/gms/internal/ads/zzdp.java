package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p131c.p161d.p170b.p224d.p252g.p253a.C3786lz;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4307zy;
import p131c.p161d.p170b.p224d.p252g.p253a.db0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdp.class */
public final class zzdp implements zzdw {

    /* renamed from: m */
    public static zzdp f27682m;

    /* renamed from: a */
    public final Context f27683a;

    /* renamed from: b */
    public final zzdur f27684b;

    /* renamed from: c */
    public final zzdva f27685c;

    /* renamed from: d */
    public final zzdvb f27686d;

    /* renamed from: e */
    public final db0 f27687e;

    /* renamed from: f */
    public final zzdtc f27688f;

    /* renamed from: g */
    public final Executor f27689g;

    /* renamed from: h */
    public final zzgo f27690h;

    /* renamed from: i */
    public final zzdux f27691i;

    /* renamed from: j */
    public volatile long f27692j = 0;

    /* renamed from: k */
    public final Object f27693k = new Object();

    /* renamed from: l */
    public volatile boolean f27694l;

    public zzdp(Context context, zzdtc zzdtcVar, zzdur zzdurVar, zzdva zzdvaVar, zzdvb zzdvbVar, db0 db0Var, Executor executor, zzdta zzdtaVar, zzgo zzgoVar) {
        this.f27683a = context;
        this.f27688f = zzdtcVar;
        this.f27684b = zzdurVar;
        this.f27685c = zzdvaVar;
        this.f27686d = zzdvbVar;
        this.f27687e = db0Var;
        this.f27689g = executor;
        this.f27690h = zzgoVar;
        this.f27691i = new C3786lz(this, zzdtaVar);
    }

    /* renamed from: a */
    public static zzdp m13380a(Context context, zzdtc zzdtcVar, zzdtd zzdtdVar) {
        return m13379a(context, zzdtcVar, zzdtdVar, Executors.newCachedThreadPool());
    }

    /* renamed from: a */
    public static zzdp m13379a(Context context, zzdtc zzdtcVar, zzdtd zzdtdVar, Executor executor) {
        zzdtp a = zzdtp.m13197a(context, executor, zzdtcVar, zzdtdVar);
        zzev zzevVar = new zzev(context);
        db0 db0Var = new db0(zzdtdVar, a, new zzfi(context, zzevVar), zzevVar);
        zzgo c = new zzduf(context, zzdtcVar).m13161c();
        zzdta zzdtaVar = new zzdta();
        return new zzdp(context, zzdtcVar, new zzdur(context, c), new zzdva(context, c), new zzdvb(context, db0Var, zzdtcVar, zzdtaVar), db0Var, executor, zzdtaVar, c);
    }

    /* renamed from: a */
    public static zzdp m13376a(String str, Context context, boolean z) {
        zzdp zzdpVar;
        synchronized (zzdp.class) {
            try {
                if (f27682m == null) {
                    zzdtg d = zzdtd.m13210d();
                    d.mo13204a(str);
                    d.mo13203a(z);
                    zzdtd a = d.mo13205a();
                    ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
                    zzdp a2 = m13379a(context, zzdtc.m13216a(context, newCachedThreadPool), a, newCachedThreadPool);
                    f27682m = a2;
                    a2.m13382a();
                    f27682m.m13371d();
                }
                zzdpVar = f27682m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdpVar;
    }

    /* renamed from: a */
    public final zzdus m13381a(int i) {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23764X0)).booleanValue() ? this.f27685c.m13126b(i) : this.f27684b.m13149b(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13024a(Context context) {
        m13371d();
        zzdtf a = this.f27686d.m13124a();
        if (a == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String a2 = a.mo13209a(context, (String) null);
        this.f27688f.m13219a(5001, System.currentTimeMillis() - currentTimeMillis, a2, null);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13023a(Context context, View view, Activity activity) {
        m13371d();
        zzdtf a = this.f27686d.m13124a();
        if (a == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String a2 = a.mo13208a(context, null, view, activity);
        this.f27688f.m13219a(5002, System.currentTimeMillis() - currentTimeMillis, a2, null);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13100a(Context context, String str, View view) {
        return mo13021a(context, str, view, (Activity) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13021a(Context context, String str, View view, Activity activity) {
        m13371d();
        zzdtf a = this.f27686d.m13124a();
        if (a == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String a2 = a.mo13207a(context, null, str, view, activity);
        this.f27688f.m13219a(5000, System.currentTimeMillis() - currentTimeMillis, a2, null);
        return a2;
    }

    /* renamed from: a */
    public final void m13382a() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            zzdus a = m13381a(zzduz.f27863a);
            if (a == null || a.m13147a()) {
                this.f27688f.m13222a(4013, System.currentTimeMillis() - currentTimeMillis);
            } else {
                this.f27686d.m13120b(a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final void mo13025a(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final void mo13019a(MotionEvent motionEvent) {
        zzdtf a = this.f27686d.m13124a();
        if (a != null) {
            try {
                a.mo13206a((String) null, motionEvent);
            } catch (zzdvc e) {
                this.f27688f.m13221a(e.zzaxb(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final void mo13018a(View view) {
        this.f27687e.m27069a(view);
    }

    /* renamed from: b */
    public final void m13375b() {
        this.f27689g.execute(new RunnableC4307zy(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00f8 A[Catch: zzekj -> 0x01a1, TRY_ENTER, TryCatch #0 {zzekj -> 0x01a1, blocks: (B:6:0x002a, B:8:0x0048, B:11:0x0053, B:14:0x007a, B:16:0x0088, B:19:0x0097, B:22:0x00ac, B:26:0x00c3, B:28:0x00d6, B:35:0x00f8, B:37:0x0109, B:42:0x012f, B:45:0x0143, B:46:0x0153, B:49:0x0165, B:51:0x0176, B:53:0x0190), top: B:58:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0109 A[Catch: zzekj -> 0x01a1, TRY_ENTER, TryCatch #0 {zzekj -> 0x01a1, blocks: (B:6:0x002a, B:8:0x0048, B:11:0x0053, B:14:0x007a, B:16:0x0088, B:19:0x0097, B:22:0x00ac, B:26:0x00c3, B:28:0x00d6, B:35:0x00f8, B:37:0x0109, B:42:0x012f, B:45:0x0143, B:46:0x0153, B:49:0x0165, B:51:0x0176, B:53:0x0190), top: B:58:0x002a }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13373c() {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdp.m13373c():void");
    }

    /* renamed from: d */
    public final void m13371d() {
        if (!this.f27694l) {
            synchronized (this.f27693k) {
                if (!this.f27694l) {
                    if ((System.currentTimeMillis() / 1000) - this.f27692j >= 3600) {
                        zzdus b = this.f27686d.m13121b();
                        if (b == null || b.m13146a(3600L)) {
                            m13375b();
                        }
                    }
                }
            }
        }
    }
}
