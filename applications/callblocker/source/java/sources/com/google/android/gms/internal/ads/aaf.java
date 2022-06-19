package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aaf.class */
public final class aaf implements Runnable {

    /* renamed from: a */
    private C3687zq f7622a;

    /* renamed from: b */
    private boolean f7623b = false;

    public aaf(C3687zq c3687zq) {
        this.f7622a = c3687zq;
    }

    /* renamed from: c */
    private final void m13738c() {
        C3567ve.f17498a.removeCallbacks(this);
        C3567ve.f17498a.postDelayed(this, 250L);
    }

    /* renamed from: a */
    public final void m13740a() {
        this.f7623b = true;
        this.f7622a.m6655o();
    }

    /* renamed from: b */
    public final void m13739b() {
        this.f7623b = false;
        m13738c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f7623b) {
            this.f7622a.m6655o();
            m13738c();
        }
    }
}
