package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gn1.class */
final class gn1 {

    /* renamed from: a */
    private final fn1 f6667a = new fn1();

    /* renamed from: b */
    private int f6668b;

    /* renamed from: c */
    private int f6669c;

    /* renamed from: d */
    private int f6670d;

    /* renamed from: e */
    private int f6671e;

    /* renamed from: f */
    private int f6672f;

    gn1() {
    }

    /* renamed from: a */
    public final void m7359a() {
        this.f6670d++;
    }

    /* renamed from: b */
    public final void m7358b() {
        this.f6671e++;
    }

    /* renamed from: c */
    public final void m7357c() {
        this.f6668b++;
        this.f6667a.f6562b = true;
    }

    /* renamed from: d */
    public final void m7356d() {
        this.f6669c++;
        this.f6667a.f6563c = true;
    }

    /* renamed from: e */
    public final void m7355e() {
        this.f6672f++;
    }

    /* renamed from: f */
    public final fn1 m7354f() {
        fn1 b = this.f6667a.clone();
        fn1 fn1Var = this.f6667a;
        fn1Var.f6562b = false;
        fn1Var.f6563c = false;
        return b;
    }

    /* renamed from: g */
    public final String m7353g() {
        return "\n\tPool does not exist: " + this.f6670d + "\n\tNew pools created: " + this.f6668b + "\n\tPools removed: " + this.f6669c + "\n\tEntries added: " + this.f6672f + "\n\tNo entries retrieved: " + this.f6671e + "\n";
    }
}
