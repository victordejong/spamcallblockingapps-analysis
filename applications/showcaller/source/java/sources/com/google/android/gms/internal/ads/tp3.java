package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tp3.class */
public final class tp3 {

    /* renamed from: a */
    private final Handler f30107a;

    /* renamed from: b */
    private final up3 f30108b;

    public tp3(Handler handler, up3 up3Var) {
        this.f30107a = up3Var == null ? null : handler;
        this.f30108b = up3Var;
    }

    /* renamed from: a */
    public final void m10587a(C6780nm c6780nm) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, c6780nm) { // from class: com.google.android.gms.internal.ads.jp3

                /* renamed from: d */
                private final tp3 f24945d;

                /* renamed from: e */
                private final C6780nm f24946e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24945d = this;
                    this.f24946e = c6780nm;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f24945d.m10568t(this.f24946e);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m10586b(String str, long j, long j2) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, str, j, j2) { // from class: com.google.android.gms.internal.ads.kp3

                /* renamed from: d */
                private final tp3 f25292d;

                /* renamed from: e */
                private final String f25293e;

                /* renamed from: f */
                private final long f25294f;

                /* renamed from: g */
                private final long f25295g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25292d = this;
                    this.f25293e = str;
                    this.f25294f = j;
                    this.f25295g = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25292d.m10569s(this.f25293e, this.f25294f, this.f25295g);
                }
            });
        }
    }

    /* renamed from: c */
    public final void m10585c(C7021u4 c7021u4, C6781nn c6781nn) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, c7021u4, c6781nn) { // from class: com.google.android.gms.internal.ads.lp3

                /* renamed from: d */
                private final tp3 f26206d;

                /* renamed from: e */
                private final C7021u4 f26207e;

                /* renamed from: f */
                private final C6781nn f26208f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26206d = this;
                    this.f26207e = c7021u4;
                    this.f26208f = c6781nn;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26206d.m10570r(this.f26207e, this.f26208f);
                }
            });
        }
    }

    /* renamed from: d */
    public final void m10584d(int i, long j) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, i, j) { // from class: com.google.android.gms.internal.ads.mp3

                /* renamed from: d */
                private final tp3 f26715d;

                /* renamed from: e */
                private final int f26716e;

                /* renamed from: f */
                private final long f26717f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26715d = this;
                    this.f26716e = i;
                    this.f26717f = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26715d.m10571q(this.f26716e, this.f26717f);
                }
            });
        }
    }

    /* renamed from: e */
    public final void m10583e(long j, int i) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, j, i) { // from class: com.google.android.gms.internal.ads.np3

                /* renamed from: d */
                private final tp3 f27256d;

                /* renamed from: e */
                private final long f27257e;

                /* renamed from: f */
                private final int f27258f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27256d = this;
                    this.f27257e = j;
                    this.f27258f = i;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27256d.m10572p(this.f27257e, this.f27258f);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m10582f(z04 z04Var) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, z04Var) { // from class: com.google.android.gms.internal.ads.op3

                /* renamed from: d */
                private final tp3 f27672d;

                /* renamed from: e */
                private final z04 f27673e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27672d = this;
                    this.f27673e = z04Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27672d.m10573o(this.f27673e);
                }
            });
        }
    }

    /* renamed from: g */
    public final void m10581g(Object obj) {
        if (this.f30107a != null) {
            this.f30107a.post(new Runnable(this, obj, SystemClock.elapsedRealtime()) { // from class: com.google.android.gms.internal.ads.pp3

                /* renamed from: d */
                private final tp3 f28088d;

                /* renamed from: e */
                private final Object f28089e;

                /* renamed from: f */
                private final long f28090f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28088d = this;
                    this.f28089e = obj;
                    this.f28090f = elapsedRealtime;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f28088d.m10574n(this.f28089e, this.f28090f);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m10580h(String str) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.qp3

                /* renamed from: d */
                private final tp3 f28598d;

                /* renamed from: e */
                private final String f28599e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28598d = this;
                    this.f28599e = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f28598d.m10575m(this.f28599e);
                }
            });
        }
    }

    /* renamed from: i */
    public final void m10579i(C6780nm c6780nm) {
        c6780nm.m12852a();
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, c6780nm) { // from class: com.google.android.gms.internal.ads.rp3

                /* renamed from: d */
                private final tp3 f29086d;

                /* renamed from: e */
                private final C6780nm f29087e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29086d = this;
                    this.f29087e = c6780nm;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29086d.m10576l(this.f29087e);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m10578j(Exception exc) {
        Handler handler = this.f30107a;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: com.google.android.gms.internal.ads.sp3

                /* renamed from: d */
                private final tp3 f29604d;

                /* renamed from: e */
                private final Exception f29605e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29604d = this;
                    this.f29605e = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29604d.m10577k(this.f29605e);
                }
            });
        }
    }

    /* renamed from: k */
    public final /* synthetic */ void m10577k(Exception exc) {
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10265f(exc);
    }

    /* renamed from: l */
    public final /* synthetic */ void m10576l(C6780nm c6780nm) {
        c6780nm.m12852a();
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10261q(c6780nm);
    }

    /* renamed from: m */
    public final /* synthetic */ void m10575m(String str) {
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10260q0(str);
    }

    /* renamed from: n */
    public final /* synthetic */ void m10574n(Object obj, long j) {
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10264k(obj, j);
    }

    /* renamed from: o */
    public final /* synthetic */ void m10573o(z04 z04Var) {
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10262n(z04Var);
    }

    /* renamed from: p */
    public final /* synthetic */ void m10572p(long j, int i) {
        up3 up3Var = this.f30108b;
        int i2 = C7101wa.f31475a;
        up3Var.mo10266c(j, i);
    }

    /* renamed from: q */
    public final /* synthetic */ void m10571q(int i, long j) {
        up3 up3Var = this.f30108b;
        int i2 = C7101wa.f31475a;
        up3Var.mo10268A(i, j);
    }

    /* renamed from: r */
    public final /* synthetic */ void m10570r(C7021u4 c7021u4, C6781nn c6781nn) {
        int i = C7101wa.f31475a;
        this.f30108b.mo10259s(c7021u4, c6781nn);
    }

    /* renamed from: s */
    public final /* synthetic */ void m10569s(String str, long j, long j2) {
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10263l(str, j, j2);
    }

    /* renamed from: t */
    public final /* synthetic */ void m10568t(C6780nm c6780nm) {
        up3 up3Var = this.f30108b;
        int i = C7101wa.f31475a;
        up3Var.mo10267B(c6780nm);
    }
}
