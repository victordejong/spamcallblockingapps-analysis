package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bo1.class */
final class bo1 {

    /* renamed from: a */
    private final long f6185a;

    /* renamed from: c */
    private long f6187c;

    /* renamed from: b */
    private final ao1 f6186b = new ao1();

    /* renamed from: d */
    private int f6188d = 0;

    /* renamed from: e */
    private int f6189e = 0;

    /* renamed from: f */
    private int f6190f = 0;

    public bo1() {
        long m8247a = C1407r.m8913k().m8247a();
        this.f6185a = m8247a;
        this.f6187c = m8247a;
    }

    /* renamed from: a */
    public final void m7940a() {
        this.f6187c = C1407r.m8913k().m8247a();
        this.f6188d++;
    }

    /* renamed from: b */
    public final void m7939b() {
        this.f6189e++;
        this.f6186b.f6059b = true;
    }

    /* renamed from: c */
    public final void m7938c() {
        this.f6190f++;
        this.f6186b.f6060c++;
    }

    /* renamed from: d */
    public final long m7937d() {
        return this.f6185a;
    }

    /* renamed from: e */
    public final long m7936e() {
        return this.f6187c;
    }

    /* renamed from: f */
    public final int m7935f() {
        return this.f6188d;
    }

    /* renamed from: g */
    public final ao1 m7934g() {
        ao1 clone = this.f6186b.clone();
        ao1 ao1Var = this.f6186b;
        ao1Var.f6059b = false;
        ao1Var.f6060c = 0;
        return clone;
    }

    /* renamed from: h */
    public final String m7933h() {
        return "Created: " + this.f6185a + " Last accessed: " + this.f6187c + " Accesses: " + this.f6188d + "\nEntries retrieved: Valid: " + this.f6189e + " Stale: " + this.f6190f;
    }
}
