package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nm2.class */
public class nm2 {

    /* renamed from: a */
    private int f7727a;

    /* renamed from: a */
    public void m6424a() {
        this.f7727a = 0;
    }

    /* renamed from: b */
    public final boolean m6423b() {
        return m6418g(Integer.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m6422c() {
        return m6418g(4);
    }

    /* renamed from: d */
    public final boolean m6421d() {
        return m6418g(1);
    }

    /* renamed from: e */
    public final void m6420e(int i) {
        this.f7727a = i;
    }

    /* renamed from: f */
    public final void m6419f(int i) {
        this.f7727a |= Integer.MIN_VALUE;
    }

    /* renamed from: g */
    protected final boolean m6418g(int i) {
        return (this.f7727a & i) == i;
    }
}
