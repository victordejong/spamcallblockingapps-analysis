package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mp0.class */
public final class mp0 {

    /* renamed from: a */
    private final int f26703a;

    /* renamed from: b */
    public final int f26704b;

    /* renamed from: c */
    public final int f26705c;

    private mp0(int i, int i2, int i3) {
        this.f26703a = i;
        this.f26705c = i2;
        this.f26704b = i3;
    }

    /* renamed from: a */
    public static mp0 m13134a(zzbdl zzbdlVar) {
        return zzbdlVar.f33685g ? new mp0(3, 0, 0) : zzbdlVar.f33690l ? new mp0(2, 0, 0) : zzbdlVar.f33689k ? m13133b() : m13132c(zzbdlVar.f33687i, zzbdlVar.f33684f);
    }

    /* renamed from: b */
    public static mp0 m13133b() {
        return new mp0(0, 0, 0);
    }

    /* renamed from: c */
    public static mp0 m13132c(int i, int i2) {
        return new mp0(1, i, i2);
    }

    /* renamed from: d */
    public static mp0 m13131d() {
        return new mp0(4, 0, 0);
    }

    /* renamed from: e */
    public static mp0 m13130e() {
        return new mp0(5, 0, 0);
    }

    /* renamed from: f */
    public final boolean m13129f() {
        return this.f26703a == 2;
    }

    /* renamed from: g */
    public final boolean m13128g() {
        return this.f26703a == 3;
    }

    /* renamed from: h */
    public final boolean m13127h() {
        return this.f26703a == 0;
    }

    /* renamed from: i */
    public final boolean m13126i() {
        return this.f26703a == 4;
    }

    /* renamed from: j */
    public final boolean m13125j() {
        return this.f26703a == 5;
    }
}
