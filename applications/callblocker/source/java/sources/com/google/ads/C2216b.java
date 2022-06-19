package com.google.ads;

import com.google.android.gms.ads.C2286e;
@Deprecated
/* renamed from: com.google.ads.b */
/* loaded from: classes-dex2jar.jar:com/google/ads/b.class */
public final class C2216b {

    /* renamed from: a */
    public static final C2216b f6494a = new C2216b(-1, -2, "mb");

    /* renamed from: b */
    public static final C2216b f6495b = new C2216b(320, 50, "mb");

    /* renamed from: c */
    public static final C2216b f6496c = new C2216b(300, 250, "as");

    /* renamed from: d */
    public static final C2216b f6497d = new C2216b(468, 60, "as");

    /* renamed from: e */
    public static final C2216b f6498e = new C2216b(728, 90, "as");

    /* renamed from: f */
    public static final C2216b f6499f = new C2216b(160, 600, "as");

    /* renamed from: g */
    private final C2286e f6500g;

    private C2216b(int i, int i2, String str) {
        this(new C2286e(i, i2));
    }

    public C2216b(C2286e c2286e) {
        this.f6500g = c2286e;
    }

    /* renamed from: a */
    public final int m14920a() {
        return this.f6500g.m14827b();
    }

    /* renamed from: b */
    public final int m14919b() {
        return this.f6500g.m14831a();
    }

    public final boolean equals(Object obj) {
        return !(obj instanceof C2216b) ? false : this.f6500g.equals(((C2216b) obj).f6500g);
    }

    public final int hashCode() {
        return this.f6500g.hashCode();
    }

    public final String toString() {
        return this.f6500g.toString();
    }
}
