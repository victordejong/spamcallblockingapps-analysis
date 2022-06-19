package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gm2.class */
public final class gm2 {

    /* renamed from: a */
    private final long f23404a;

    /* renamed from: c */
    private long f23406c;

    /* renamed from: b */
    private final em2 f23405b = new em2();

    /* renamed from: d */
    private int f23407d = 0;

    /* renamed from: e */
    private int f23408e = 0;

    /* renamed from: f */
    private int f23409f = 0;

    public gm2() {
        long mo16807a = C5667s.m18153k().mo16807a();
        this.f23404a = mo16807a;
        this.f23406c = mo16807a;
    }

    /* renamed from: a */
    public final void m14898a() {
        this.f23406c = C5667s.m18153k().mo16807a();
        this.f23407d++;
    }

    /* renamed from: b */
    public final void m14897b() {
        this.f23408e++;
        this.f23405b.f22284d = true;
    }

    /* renamed from: c */
    public final void m14896c() {
        this.f23409f++;
        this.f23405b.f22285e++;
    }

    /* renamed from: d */
    public final long m14895d() {
        return this.f23404a;
    }

    /* renamed from: e */
    public final long m14894e() {
        return this.f23406c;
    }

    /* renamed from: f */
    public final int m14893f() {
        return this.f23407d;
    }

    /* renamed from: g */
    public final em2 m14892g() {
        em2 clone = this.f23405b.clone();
        em2 em2Var = this.f23405b;
        em2Var.f22284d = false;
        em2Var.f22285e = 0;
        return clone;
    }

    /* renamed from: h */
    public final String m14891h() {
        return "Created: " + this.f23404a + " Last accessed: " + this.f23406c + " Accesses: " + this.f23407d + "\nEntries retrieved: Valid: " + this.f23408e + " Stale: " + this.f23409f;
    }
}
