package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cjq.class */
public final class cjq {

    /* renamed from: b */
    private final cjp f13185b = new cjp();

    /* renamed from: d */
    private int f13187d = 0;

    /* renamed from: e */
    private int f13188e = 0;

    /* renamed from: f */
    private int f13189f = 0;

    /* renamed from: a */
    private final long f13184a = C2341q.m14737j().mo13862a();

    /* renamed from: c */
    private long f13186c = this.f13184a;

    /* renamed from: a */
    public final void m11191a() {
        this.f13186c = C2341q.m14737j().mo13862a();
        this.f13187d++;
    }

    /* renamed from: b */
    public final void m11190b() {
        this.f13188e++;
        this.f13185b.f13182a = true;
    }

    /* renamed from: c */
    public final void m11189c() {
        this.f13189f++;
        this.f13185b.f13183b++;
    }

    /* renamed from: d */
    public final long m11188d() {
        return this.f13184a;
    }

    /* renamed from: e */
    public final long m11187e() {
        return this.f13186c;
    }

    /* renamed from: f */
    public final int m11186f() {
        return this.f13187d;
    }

    /* renamed from: g */
    public final cjp m11185g() {
        cjp cjpVar = (cjp) this.f13185b.clone();
        cjp cjpVar2 = this.f13185b;
        cjpVar2.f13182a = false;
        cjpVar2.f13183b = 0;
        return cjpVar;
    }

    /* renamed from: h */
    public final String m11184h() {
        return "Created: " + this.f13184a + " Last accessed: " + this.f13186c + " Accesses: " + this.f13187d + "\nEntries retrieved: Valid: " + this.f13188e + " Stale: " + this.f13189f;
    }
}
