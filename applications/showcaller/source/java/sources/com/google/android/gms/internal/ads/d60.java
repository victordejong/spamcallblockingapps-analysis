package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5685e0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5686e1;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d60.class */
public final class d60 {

    /* renamed from: b */
    private final Context f21492b;

    /* renamed from: c */
    private final String f21493c;

    /* renamed from: d */
    private final zzcgz f21494d;

    /* renamed from: e */
    private final AbstractC5685e0<x40> f21495e;

    /* renamed from: f */
    private final AbstractC5685e0<x40> f21496f;

    /* renamed from: g */
    private c60 f21497g;

    /* renamed from: a */
    private final Object f21491a = new Object();

    /* renamed from: h */
    private int f21498h = 1;

    public d60(Context context, zzcgz zzcgzVar, String str, AbstractC5685e0<x40> abstractC5685e0, AbstractC5685e0<x40> abstractC5685e02) {
        this.f21493c = str;
        this.f21492b = context.getApplicationContext();
        this.f21494d = zzcgzVar;
        this.f21495e = abstractC5685e0;
        this.f21496f = abstractC5685e02;
    }

    /* renamed from: f */
    public final c60 m15940f(C7016u c7016u) {
        c60 c60Var = new c60(this.f21496f);
        qi0.f28499e.execute(new Runnable(this, null, c60Var) { // from class: com.google.android.gms.internal.ads.h50

            /* renamed from: d */
            private final d60 f23803d;

            /* renamed from: e */
            private final c60 f23804e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23803d = this;
                this.f23804e = c60Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23803d.m15937i(null, this.f23804e);
            }
        });
        c60Var.m16034b(new s50(this, c60Var), new t50(this, c60Var));
        return c60Var;
    }

    /* renamed from: g */
    public final x50 m15939g(C7016u c7016u) {
        synchronized (this.f21491a) {
            synchronized (this.f21491a) {
                c60 c60Var = this.f21497g;
                if (c60Var != null && this.f21498h == 0) {
                    c60Var.m16034b(new zi0(this) { // from class: com.google.android.gms.internal.ads.i50

                        /* renamed from: a */
                        private final d60 f24148a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24148a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zi0
                        /* renamed from: a */
                        public final void mo8354a(Object obj) {
                            this.f24148a.m15938h((x40) obj);
                        }
                    }, j50.f24788a);
                }
            }
            c60 c60Var2 = this.f21497g;
            if (c60Var2 != null && c60Var2.m16031e() != -1) {
                int i = this.f21498h;
                if (i == 0) {
                    return this.f21497g.m16116f();
                } else if (i != 1) {
                    return this.f21497g.m16116f();
                } else {
                    this.f21498h = 2;
                    m15940f(null);
                    return this.f21497g.m16116f();
                }
            }
            this.f21498h = 2;
            c60 m15940f = m15940f(null);
            this.f21497g = m15940f;
            return m15940f.m16116f();
        }
    }

    /* renamed from: h */
    public final /* synthetic */ void m15938h(x40 x40Var) {
        if (x40Var.mo9358g()) {
            this.f21498h = 1;
        }
    }

    /* renamed from: i */
    public final /* synthetic */ void m15937i(C7016u c7016u, c60 c60Var) {
        try {
            f50 f50Var = new f50(this.f21492b, this.f21494d, null, null);
            f50Var.mo9360J(new w40(this, c60Var, f50Var) { // from class: com.google.android.gms.internal.ads.l50

                /* renamed from: a */
                private final d60 f25949a;

                /* renamed from: b */
                private final c60 f25950b;

                /* renamed from: c */
                private final x40 f25951c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25949a = this;
                    this.f25950b = c60Var;
                    this.f25951c = f50Var;
                }

                @Override // com.google.android.gms.internal.ads.w40
                public final void zza() {
                    final d60 d60Var = this.f25949a;
                    final c60 c60Var2 = this.f25950b;
                    final x40 x40Var = this.f25951c;
                    C5679c2.f18451a.postDelayed(new Runnable(d60Var, c60Var2, x40Var) { // from class: com.google.android.gms.internal.ads.m50

                        /* renamed from: d */
                        private final d60 f26424d;

                        /* renamed from: e */
                        private final c60 f26425e;

                        /* renamed from: f */
                        private final x40 f26426f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f26424d = d60Var;
                            this.f26425e = c60Var2;
                            this.f26426f = x40Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f26424d.m15936j(this.f26425e, this.f26426f);
                        }
                    }, OkHttpUtils.DEFAULT_MILLISECONDS);
                }
            });
            f50Var.mo15303i0("/jsLoaded", new o50(this, c60Var, f50Var));
            C5686e1 c5686e1 = new C5686e1();
            p50 p50Var = new p50(this, null, f50Var, c5686e1);
            c5686e1.m18039b(p50Var);
            f50Var.mo15303i0("/requestReload", p50Var);
            if (this.f21493c.endsWith(".js")) {
                f50Var.mo9355y(this.f21493c);
            } else if (this.f21493c.startsWith("<html>")) {
                f50Var.mo9359O(this.f21493c);
            } else {
                f50Var.mo9356p(this.f21493c);
            }
            C5679c2.f18451a.postDelayed(new r50(this, c60Var, f50Var), 60000L);
        } catch (Throwable th) {
            ei0.m15466d("Error creating webview.", th);
            C5667s.m18156h().m12235k(th, "SdkJavascriptFactory.loadJavascriptEngine");
            c60Var.m16032d();
        }
    }

    /* renamed from: j */
    public final /* synthetic */ void m15936j(c60 c60Var, x40 x40Var) {
        synchronized (this.f21491a) {
            if (c60Var.m16031e() != -1 && c60Var.m16031e() != 1) {
                c60Var.m16032d();
                qi0.f28499e.execute(n50.m13005a(x40Var));
                C5722o1.m17990k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
