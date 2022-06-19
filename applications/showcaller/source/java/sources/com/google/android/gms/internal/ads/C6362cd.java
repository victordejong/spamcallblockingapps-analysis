package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.cd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cd.class */
public class C6362cd {

    /* renamed from: a */
    private int f21173a;

    /* renamed from: a */
    public void mo14715a() {
        this.f21173a = 0;
    }

    /* renamed from: b */
    public final boolean m16086b() {
        return m16081g(Integer.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m16085c() {
        return m16081g(4);
    }

    /* renamed from: d */
    public final boolean m16084d() {
        return m16081g(1);
    }

    /* renamed from: e */
    public final void m16083e(int i) {
        this.f21173a = i;
    }

    /* renamed from: f */
    public final void m16082f(int i) {
        this.f21173a |= Integer.MIN_VALUE;
    }

    /* renamed from: g */
    public final boolean m16081g(int i) {
        return (this.f21173a & i) == i;
    }
}
