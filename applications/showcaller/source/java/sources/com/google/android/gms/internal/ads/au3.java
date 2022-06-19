package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/au3.class */
final class au3 {

    /* renamed from: a */
    public final int f20128a;

    /* renamed from: b */
    public int f20129b;

    /* renamed from: c */
    public int f20130c;

    /* renamed from: d */
    public long f20131d;

    /* renamed from: e */
    private final boolean f20132e;

    /* renamed from: f */
    private final C6694la f20133f;

    /* renamed from: g */
    private final C6694la f20134g;

    /* renamed from: h */
    private int f20135h;

    /* renamed from: i */
    private int f20136i;

    public au3(C6694la c6694la, C6694la c6694la2, boolean z) {
        this.f20134g = c6694la;
        this.f20133f = c6694la2;
        this.f20132e = z;
        c6694la2.m13635p(12);
        this.f20128a = c6694la2.m13649b();
        c6694la.m13635p(12);
        this.f20136i = c6694la.m13649b();
        yq3.m8721a(c6694la.m13655D() != 1 ? false : true, "first_chunk must be 1");
        this.f20129b = -1;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: a */
    public final boolean m16482a() {
        int i = this.f20129b + 1;
        this.f20129b = i;
        if (i == this.f20128a) {
            return false;
        }
        this.f20131d = this.f20132e ? this.f20133f.m13647d() : this.f20133f.m13657B();
        if (this.f20129b != this.f20135h) {
            return true;
        }
        this.f20130c = this.f20134g.m13649b();
        this.f20134g.m13632s(4);
        int i2 = -1;
        int i3 = this.f20136i - 1;
        this.f20136i = i3;
        if (i3 > 0) {
            i2 = (-1) + this.f20134g.m13649b();
        }
        this.f20135h = i2;
        return true;
    }
}
