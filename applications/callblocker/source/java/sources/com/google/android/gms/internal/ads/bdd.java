package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import com.google.android.gms.ads.internal.overlay.AbstractC2333t;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdd.class */
public final class bdd implements AbstractC2328o, AbstractC2333t, dxs, AbstractC3111ei, AbstractC3113ek {

    /* renamed from: a */
    private dxs f10996a;

    /* renamed from: b */
    private AbstractC3111ei f10997b;

    /* renamed from: c */
    private AbstractC2328o f10998c;

    /* renamed from: d */
    private AbstractC3113ek f10999d;

    /* renamed from: e */
    private AbstractC2333t f11000e;

    private bdd() {
    }

    public /* synthetic */ bdd(bcz bczVar) {
        this();
    }

    /* renamed from: a */
    public final void m12080a(dxs dxsVar, AbstractC3111ei abstractC3111ei, AbstractC2328o abstractC2328o, AbstractC3113ek abstractC3113ek, AbstractC2333t abstractC2333t) {
        synchronized (this) {
            this.f10996a = dxsVar;
            this.f10997b = abstractC3111ei;
            this.f10998c = abstractC2328o;
            this.f10999d = abstractC3113ek;
            this.f11000e = abstractC2333t;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3111ei
    /* renamed from: a */
    public final void mo7860a(String str, Bundle bundle) {
        synchronized (this) {
            if (this.f10997b != null) {
                this.f10997b.mo7860a(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3113ek
    /* renamed from: a */
    public final void mo7859a(String str, String str2) {
        synchronized (this) {
            if (this.f10999d != null) {
                this.f10999d.mo7859a(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: c */
    public final void mo7433c() {
        synchronized (this) {
            if (this.f10998c != null) {
                this.f10998c.mo7433c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: d */
    public final void mo7432d() {
        synchronized (this) {
            if (this.f10998c != null) {
                this.f10998c.mo7432d();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxs
    /* renamed from: e */
    public final void mo8200e() {
        synchronized (this) {
            if (this.f10996a != null) {
                this.f10996a.mo8200e();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2333t
    /* renamed from: f */
    public final void mo12024f() {
        synchronized (this) {
            if (this.f11000e != null) {
                this.f11000e.mo12024f();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: f_ */
    public final void mo7431f_() {
        synchronized (this) {
            if (this.f10998c != null) {
                this.f10998c.mo7431f_();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: h_ */
    public final void mo7430h_() {
        synchronized (this) {
            if (this.f10998c != null) {
                this.f10998c.mo7430h_();
            }
        }
    }
}
