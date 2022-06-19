package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5679c2;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mk0.class */
public final class mk0 implements Runnable {

    /* renamed from: d */
    private final zzcip f26636d;

    /* renamed from: e */
    private boolean f26637e = false;

    public mk0(zzcip zzcipVar) {
        this.f26636d = zzcipVar;
    }

    /* renamed from: c */
    private final void m13172c() {
        au2 au2Var = C5679c2.f18451a;
        au2Var.removeCallbacks(this);
        au2Var.postDelayed(this, 250L);
    }

    /* renamed from: a */
    public final void m13174a() {
        this.f26637e = true;
        this.f26636d.m8033n();
    }

    /* renamed from: b */
    public final void m13173b() {
        this.f26637e = false;
        m13172c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f26637e) {
            this.f26636d.m8033n();
            m13172c();
        }
    }
}
