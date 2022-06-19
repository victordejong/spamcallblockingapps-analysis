package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aei.class */
public final class aei {

    /* renamed from: a */
    public final int f7983a;

    /* renamed from: b */
    public final int f7984b;

    /* renamed from: c */
    private final int f7985c;

    private aei(int i, int i2, int i3) {
        this.f7985c = i;
        this.f7984b = i2;
        this.f7983a = i3;
    }

    /* renamed from: a */
    public static aei m13555a() {
        return new aei(0, 0, 0);
    }

    /* renamed from: a */
    public static aei m13554a(int i, int i2) {
        return new aei(1, i, i2);
    }

    /* renamed from: a */
    public static aei m13553a(dyd dydVar) {
        return dydVar.f16093d ? new aei(3, 0, 0) : dydVar.f16098i ? new aei(2, 0, 0) : dydVar.f16097h ? m13555a() : m13554a(dydVar.f16095f, dydVar.f16092c);
    }

    /* renamed from: b */
    public static aei m13552b() {
        return new aei(4, 0, 0);
    }

    /* renamed from: c */
    public static aei m13551c() {
        return new aei(5, 0, 0);
    }

    /* renamed from: d */
    public final boolean m13550d() {
        return this.f7985c == 2;
    }

    /* renamed from: e */
    public final boolean m13549e() {
        return this.f7985c == 3;
    }

    /* renamed from: f */
    public final boolean m13548f() {
        return this.f7985c == 0;
    }

    /* renamed from: g */
    public final boolean m13547g() {
        return this.f7985c == 4;
    }

    /* renamed from: h */
    public final boolean m13546h() {
        return this.f7985c == 5;
    }
}
