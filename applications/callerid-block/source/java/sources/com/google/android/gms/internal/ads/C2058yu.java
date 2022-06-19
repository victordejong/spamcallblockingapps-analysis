package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.yu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yu.class */
public final class C2058yu {

    /* renamed from: a */
    private final int f9271a;

    /* renamed from: b */
    public final int f9272b;

    /* renamed from: c */
    public final int f9273c;

    private C2058yu(int i, int i2, int i3) {
        this.f9271a = i;
        this.f9273c = i2;
        this.f9272b = i3;
    }

    /* renamed from: a */
    public static C2058yu m4696a(zzyx zzyxVar) {
        return zzyxVar.e ? new C2058yu(3, 0, 0) : zzyxVar.j ? new C2058yu(2, 0, 0) : zzyxVar.i ? m4695b() : m4694c(zzyxVar.g, zzyxVar.d);
    }

    /* renamed from: b */
    public static C2058yu m4695b() {
        return new C2058yu(0, 0, 0);
    }

    /* renamed from: c */
    public static C2058yu m4694c(int i, int i2) {
        return new C2058yu(1, i, i2);
    }

    /* renamed from: d */
    public static C2058yu m4693d() {
        return new C2058yu(4, 0, 0);
    }

    /* renamed from: e */
    public static C2058yu m4692e() {
        return new C2058yu(5, 0, 0);
    }

    /* renamed from: f */
    public final boolean m4691f() {
        return this.f9271a == 2;
    }

    /* renamed from: g */
    public final boolean m4690g() {
        return this.f9271a == 3;
    }

    /* renamed from: h */
    public final boolean m4689h() {
        return this.f9271a == 0;
    }

    /* renamed from: i */
    public final boolean m4688i() {
        return this.f9271a == 4;
    }

    /* renamed from: j */
    public final boolean m4687j() {
        return this.f9271a == 5;
    }
}
