package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: com.google.android.gms.internal.ads.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n.class */
public final class C6757n implements AbstractC6868q {

    /* renamed from: d */
    private static C6757n f26927d;

    /* renamed from: e */
    private final Context f26928e;

    /* renamed from: f */
    private final ys2 f26929f;

    /* renamed from: g */
    private final et2 f26930g;

    /* renamed from: h */
    private final ft2 f26931h;

    /* renamed from: i */
    private final C6647k0 f26932i;

    /* renamed from: j */
    private final mr2 f26933j;

    /* renamed from: k */
    private final Executor f26934k;

    /* renamed from: l */
    private final dt2 f26935l;

    /* renamed from: p */
    private volatile boolean f26939p;

    /* renamed from: r */
    private final int f26941r;

    /* renamed from: n */
    volatile long f26937n = 0;

    /* renamed from: o */
    private final Object f26938o = new Object();

    /* renamed from: q */
    private volatile boolean f26940q = false;

    /* renamed from: m */
    private final CountDownLatch f26936m = new CountDownLatch(1);

    C6757n(Context context, mr2 mr2Var, ys2 ys2Var, et2 et2Var, ft2 ft2Var, C6647k0 c6647k0, Executor executor, ir2 ir2Var, int i) {
        this.f26928e = context;
        this.f26933j = mr2Var;
        this.f26929f = ys2Var;
        this.f26930g = et2Var;
        this.f26931h = ft2Var;
        this.f26932i = c6647k0;
        this.f26934k = executor;
        this.f26941r = i;
        this.f26935l = new C6683l(this, ir2Var);
    }

    @Deprecated
    /* renamed from: l */
    public static C6757n m13031l(String str, Context context, Executor executor, boolean z, boolean z2) {
        C6757n c6757n;
        synchronized (C6757n.class) {
            try {
                if (f26927d == null) {
                    nr2 m12541d = or2.m12541d();
                    m12541d.mo11816a(str);
                    m12541d.mo11815b(z);
                    or2 mo11813d = m12541d.mo11813d();
                    mr2 m13102a = mr2.m13102a(context, executor, z2);
                    C7090w m9818b = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25613W1)).booleanValue() ? C7090w.m9818b(context) : null;
                    gs2 m14821a = gs2.m14821a(context, executor, m13102a, mo11813d);
                    zzabk zzabkVar = new zzabk(context);
                    C6647k0 c6647k0 = new C6647k0(mo11813d, m14821a, new View$OnAttachStateChangeListenerC7128x0(context, zzabkVar), zzabkVar, m9818b);
                    int m12158b = ps2.m12158b(context, m13102a);
                    ir2 ir2Var = new ir2();
                    C6757n c6757n2 = new C6757n(context, m13102a, new ys2(context, m12158b), new et2(context, m12158b, new C6646k(m13102a), ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25816v1)).booleanValue()), new ft2(context, c6647k0, m13102a, ir2Var), c6647k0, executor, ir2Var, m12158b);
                    f26927d = c6757n2;
                    c6757n2.m13028o();
                    f26927d.m13026q();
                }
                c6757n = f26927d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c6757n;
    }

    /* renamed from: m */
    public static C6757n m13030m(String str, Context context, boolean z, boolean z2) {
        C6757n m13031l;
        synchronized (C6757n.class) {
            try {
                m13031l = m13031l(str, context, Executors.newCachedThreadPool(), z, z2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m13031l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c7, code lost:
        if (r0.m15325C().m14510D().equals(r0.m14510D()) != false) goto L51;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m13027p(com.google.android.gms.internal.ads.C6757n r8) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6757n.m13027p(com.google.android.gms.internal.ads.n):void");
    }

    /* renamed from: r */
    private final xs2 m13025r(int i) {
        if (!ps2.m12159a(this.f26941r)) {
            return null;
        }
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25800t1)).booleanValue() ? this.f26930g.m15383c(1) : this.f26929f.m8696c(1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: a */
    public final String mo11751a(Context context) {
        m13026q();
        pr2 m15056b = this.f26931h.m15056b();
        if (m15056b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo9474c = m15056b.mo9474c(context, null);
            this.f26933j.m13099d(5001, System.currentTimeMillis() - currentTimeMillis, mo9474c, null);
            return mo9474c;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: b */
    public final String mo11750b(Context context, String str, View view) {
        return mo11748e(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: c */
    public final void mo11198c(View view) {
        this.f26932i.m14008a(view);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: d */
    public final String mo11749d(Context context, View view, Activity activity) {
        m13026q();
        pr2 m15056b = this.f26931h.m15056b();
        if (m15056b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo9473d = m15056b.mo9473d(context, null, view, null);
            this.f26933j.m13099d(5002, System.currentTimeMillis() - currentTimeMillis, mo9473d, null);
            return mo9473d;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: e */
    public final String mo11748e(Context context, String str, View view, Activity activity) {
        m13026q();
        pr2 m15056b = this.f26931h.m15056b();
        if (m15056b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo9476a = m15056b.mo9476a(context, null, str, view, activity);
            this.f26933j.m13099d(5000, System.currentTimeMillis() - currentTimeMillis, mo9476a, null);
            return mo9476a;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: f */
    public final void mo11747f(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: g */
    public final void mo11746g(MotionEvent motionEvent) {
        pr2 m15056b = this.f26931h.m15056b();
        if (m15056b != null) {
            try {
                m15056b.mo9475b(null, motionEvent);
            } catch (zzfkf e) {
                this.f26933j.m13100c(e.zza(), -1L, e);
            }
        }
    }

    /* renamed from: n */
    public final boolean m13029n() {
        boolean z;
        synchronized (this) {
            z = this.f26940q;
        }
        return z;
    }

    /* renamed from: o */
    final void m13028o() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            xs2 m13025r = m13025r(1);
            if (m13025r == null) {
                this.f26933j.m13101b(4013, System.currentTimeMillis() - currentTimeMillis);
            } else if (!this.f26931h.m15057a(m13025r)) {
            } else {
                this.f26940q = true;
                this.f26936m.countDown();
            }
        }
    }

    /* renamed from: q */
    public final void m13026q() {
        if (!this.f26939p) {
            synchronized (this.f26938o) {
                if (!this.f26939p) {
                    if ((System.currentTimeMillis() / 1000) - this.f26937n < 3600) {
                        return;
                    }
                    xs2 m15055c = this.f26931h.m15055c();
                    if ((m15055c == null || m15055c.m9065e(3600L)) && ps2.m12159a(this.f26941r)) {
                        this.f26934k.execute(new RunnableC6720m(this));
                    }
                }
            }
        }
    }
}
