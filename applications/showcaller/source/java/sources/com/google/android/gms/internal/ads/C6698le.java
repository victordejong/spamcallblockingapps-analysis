package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.le */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/le.class */
final class C6698le {

    /* renamed from: a */
    public final int f26065a;

    /* renamed from: b */
    public int f26066b;

    /* renamed from: c */
    public int f26067c;

    /* renamed from: d */
    public long f26068d;

    /* renamed from: e */
    private final boolean f26069e;

    /* renamed from: f */
    private final C6665ki f26070f;

    /* renamed from: g */
    private final C6665ki f26071g;

    /* renamed from: h */
    private int f26072h;

    /* renamed from: i */
    private int f26073i;

    public C6698le(C6665ki c6665ki, C6665ki c6665ki2, boolean z) {
        this.f26071g = c6665ki;
        this.f26070f = c6665ki2;
        this.f26069e = z;
        c6665ki2.m13899i(12);
        this.f26065a = c6665ki2.m13887u();
        c6665ki.m13899i(12);
        this.f26073i = c6665ki.m13887u();
        C6367ci.m16038e(c6665ki.m13890r() != 1 ? false : true, "first_chunk must be 1");
        this.f26066b = -1;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: a */
    public final boolean m13569a() {
        int i = this.f26066b + 1;
        this.f26066b = i;
        if (i == this.f26065a) {
            return false;
        }
        this.f26068d = this.f26069e ? this.f26070f.m13886v() : this.f26070f.m13892p();
        if (this.f26066b != this.f26072h) {
            return true;
        }
        this.f26067c = this.f26071g.m13887u();
        this.f26071g.m13898j(4);
        int i2 = -1;
        int i3 = this.f26073i - 1;
        this.f26073i = i3;
        if (i3 > 0) {
            i2 = (-1) + this.f26071g.m13887u();
        }
        this.f26072h = i2;
        return true;
    }
}
