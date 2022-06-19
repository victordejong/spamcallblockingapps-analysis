package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hh1.class */
public final class hh1 {

    /* renamed from: a */
    private final Handler f23905a;

    /* renamed from: b */
    private final ii1 f23906b;

    public hh1(Handler handler, ii1 ii1Var) {
        this.f23905a = ii1Var == null ? null : handler;
        this.f23906b = ii1Var;
    }

    /* renamed from: a */
    public final void m14661a(C6780nm c6780nm) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, c6780nm) { // from class: com.google.android.gms.internal.ads.y61

                /* renamed from: d */
                private final hh1 f32433d;

                /* renamed from: e */
                private final C6780nm f32434e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32433d = this;
                    this.f32434e = c6780nm;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32433d.m14642t(this.f32434e);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m14660b(String str, long j, long j2) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, str, j, j2) { // from class: com.google.android.gms.internal.ads.z71

                /* renamed from: d */
                private final hh1 f32833d;

                /* renamed from: e */
                private final String f32834e;

                /* renamed from: f */
                private final long f32835f;

                /* renamed from: g */
                private final long f32836g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32833d = this;
                    this.f32834e = str;
                    this.f32835f = j;
                    this.f32836g = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32833d.m14643s(this.f32834e, this.f32835f, this.f32836g);
                }
            });
        }
    }

    /* renamed from: c */
    public final void m14659c(C7021u4 c7021u4, C6781nn c6781nn) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, c7021u4, c6781nn) { // from class: com.google.android.gms.internal.ads.a91

                /* renamed from: d */
                private final hh1 f19855d;

                /* renamed from: e */
                private final C7021u4 f19856e;

                /* renamed from: f */
                private final C6781nn f19857f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19855d = this;
                    this.f19856e = c7021u4;
                    this.f19857f = c6781nn;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f19855d.m14644r(this.f19856e, this.f19857f);
                }
            });
        }
    }

    /* renamed from: d */
    public final void m14658d(long j) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, j) { // from class: com.google.android.gms.internal.ads.ba1

                /* renamed from: d */
                private final hh1 f20326d;

                /* renamed from: e */
                private final long f20327e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20326d = this;
                    this.f20327e = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f20326d.m14645q(this.f20327e);
                }
            });
        }
    }

    /* renamed from: e */
    public final void m14657e(int i, long j, long j2) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, i, j, j2) { // from class: com.google.android.gms.internal.ads.cb1

                /* renamed from: d */
                private final hh1 f21145d;

                /* renamed from: e */
                private final int f21146e;

                /* renamed from: f */
                private final long f21147f;

                /* renamed from: g */
                private final long f21148g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21145d = this;
                    this.f21146e = i;
                    this.f21147f = j;
                    this.f21148g = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f21145d.m14646p(this.f21146e, this.f21147f, this.f21148g);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m14656f(String str) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.dc1

                /* renamed from: d */
                private final hh1 f21585d;

                /* renamed from: e */
                private final String f21586e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21585d = this;
                    this.f21586e = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f21585d.m14647o(this.f21586e);
                }
            });
        }
    }

    /* renamed from: g */
    public final void m14655g(C6780nm c6780nm) {
        c6780nm.m12852a();
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, c6780nm) { // from class: com.google.android.gms.internal.ads.dd1

                /* renamed from: d */
                private final hh1 f21590d;

                /* renamed from: e */
                private final C6780nm f21591e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21590d = this;
                    this.f21591e = c6780nm;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f21590d.m14648n(this.f21591e);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m14654h(boolean z) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.ee1

                /* renamed from: d */
                private final hh1 f22115d;

                /* renamed from: e */
                private final boolean f22116e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22115d = this;
                    this.f22116e = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22115d.m14649m(this.f22116e);
                }
            });
        }
    }

    /* renamed from: i */
    public final void m14653i(Exception exc) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: com.google.android.gms.internal.ads.ff1

                /* renamed from: d */
                private final hh1 f22877d;

                /* renamed from: e */
                private final Exception f22878e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22877d = this;
                    this.f22878e = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22877d.m14650l(this.f22878e);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m14652j(Exception exc) {
        Handler handler = this.f23905a;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: com.google.android.gms.internal.ads.gg1

                /* renamed from: d */
                private final hh1 f23344d;

                /* renamed from: e */
                private final Exception f23345e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23344d = this;
                    this.f23345e = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23344d.m14651k(this.f23345e);
                }
            });
        }
    }

    /* renamed from: k */
    public final /* synthetic */ void m14651k(Exception exc) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11211w(exc);
    }

    /* renamed from: l */
    public final /* synthetic */ void m14650l(Exception exc) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11207y(exc);
    }

    /* renamed from: m */
    public final /* synthetic */ void m14649m(boolean z) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11221m(z);
    }

    /* renamed from: n */
    public final /* synthetic */ void m14648n(C6780nm c6780nm) {
        c6780nm.m12852a();
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11224e(c6780nm);
    }

    /* renamed from: o */
    public final /* synthetic */ void m14647o(String str) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11225a(str);
    }

    /* renamed from: p */
    public final /* synthetic */ void m14646p(int i, long j, long j2) {
        ii1 ii1Var = this.f23906b;
        int i2 = C7101wa.f31475a;
        ii1Var.mo11223h(i, j, j2);
    }

    /* renamed from: q */
    public final /* synthetic */ void m14645q(long j) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11209x(j);
    }

    /* renamed from: r */
    public final /* synthetic */ void m14644r(C7021u4 c7021u4, C6781nn c6781nn) {
        int i = C7101wa.f31475a;
        this.f23906b.mo11215u(c7021u4, c6781nn);
    }

    /* renamed from: s */
    public final /* synthetic */ void m14643s(String str, long j, long j2) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11213v(str, j, j2);
    }

    /* renamed from: t */
    public final /* synthetic */ void m14642t(C6780nm c6780nm) {
        ii1 ii1Var = this.f23906b;
        int i = C7101wa.f31475a;
        ii1Var.mo11222i(c6780nm);
    }
}
