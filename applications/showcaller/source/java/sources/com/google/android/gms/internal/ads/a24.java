package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a24.class */
public class a24 {

    /* renamed from: a */
    private int f19800a;

    /* renamed from: a */
    public void mo8537a() {
        this.f19800a = 0;
    }

    /* renamed from: b */
    public final boolean m16714b() {
        return m16708h(Integer.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m16713c() {
        return m16708h(4);
    }

    /* renamed from: d */
    public final boolean m16712d() {
        return m16708h(1);
    }

    /* renamed from: e */
    public final boolean m16711e() {
        return m16708h(268435456);
    }

    /* renamed from: f */
    public final void m16710f(int i) {
        this.f19800a = i;
    }

    /* renamed from: g */
    public final void m16709g(int i) {
        this.f19800a |= Integer.MIN_VALUE;
    }

    /* renamed from: h */
    public final boolean m16708h(int i) {
        return (this.f19800a & i) == i;
    }
}
