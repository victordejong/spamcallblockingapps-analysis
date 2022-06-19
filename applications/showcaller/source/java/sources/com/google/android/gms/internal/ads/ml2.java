package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ml2.class */
final class ml2 {

    /* renamed from: a */
    private final ll2 f26642a = new ll2();

    /* renamed from: b */
    private int f26643b;

    /* renamed from: c */
    private int f26644c;

    /* renamed from: d */
    private int f26645d;

    /* renamed from: e */
    private int f26646e;

    /* renamed from: f */
    private int f26647f;

    /* renamed from: a */
    public final void m13167a() {
        this.f26645d++;
    }

    /* renamed from: b */
    public final void m13166b() {
        this.f26646e++;
    }

    /* renamed from: c */
    public final void m13165c() {
        this.f26643b++;
        this.f26642a.f26172d = true;
    }

    /* renamed from: d */
    public final void m13164d() {
        this.f26644c++;
        this.f26642a.f26173e = true;
    }

    /* renamed from: e */
    public final void m13163e() {
        this.f26647f++;
    }

    /* renamed from: f */
    public final ll2 m13162f() {
        ll2 clone = this.f26642a.clone();
        ll2 ll2Var = this.f26642a;
        ll2Var.f26172d = false;
        ll2Var.f26173e = false;
        return clone;
    }

    /* renamed from: g */
    public final String m13161g() {
        return "\n\tPool does not exist: " + this.f26645d + "\n\tNew pools created: " + this.f26643b + "\n\tPools removed: " + this.f26644c + "\n\tEntries added: " + this.f26647f + "\n\tNo entries retrieved: " + this.f26646e + "\n";
    }
}
