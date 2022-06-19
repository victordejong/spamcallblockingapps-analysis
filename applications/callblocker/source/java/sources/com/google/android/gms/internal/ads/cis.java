package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cis.class */
final class cis {

    /* renamed from: a */
    private final civ f13121a = new civ();

    /* renamed from: b */
    private int f13122b;

    /* renamed from: c */
    private int f13123c;

    /* renamed from: d */
    private int f13124d;

    /* renamed from: e */
    private int f13125e;

    /* renamed from: f */
    private int f13126f;

    /* renamed from: a */
    public final void m11228a() {
        this.f13124d++;
    }

    /* renamed from: b */
    public final void m11227b() {
        this.f13125e++;
    }

    /* renamed from: c */
    public final void m11226c() {
        this.f13122b++;
        this.f13121a.f13142a = true;
    }

    /* renamed from: d */
    public final void m11225d() {
        this.f13123c++;
        this.f13121a.f13143b = true;
    }

    /* renamed from: e */
    public final void m11224e() {
        this.f13126f++;
    }

    /* renamed from: f */
    public final civ m11223f() {
        civ civVar = (civ) this.f13121a.clone();
        civ civVar2 = this.f13121a;
        civVar2.f13142a = false;
        civVar2.f13143b = false;
        return civVar;
    }

    /* renamed from: g */
    public final String m11222g() {
        return "\n\tPool does not exist: " + this.f13124d + "\n\tNew pools created: " + this.f13122b + "\n\tPools removed: " + this.f13123c + "\n\tEntries added: " + this.f13126f + "\n\tNo entries retrieved: " + this.f13125e + "\n";
    }
}
