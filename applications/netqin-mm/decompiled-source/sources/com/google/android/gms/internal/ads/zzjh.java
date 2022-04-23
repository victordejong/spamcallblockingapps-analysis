package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjh.class */
public class zzjh {

    /* renamed from: a */
    public int f28407a;

    /* renamed from: a */
    public void mo11909a() {
        this.f28407a = 0;
    }

    /* renamed from: a */
    public final void m11915a(int i) {
        this.f28407a = i;
    }

    /* renamed from: b */
    public final void m11913b(int i) {
        this.f28407a |= Integer.MIN_VALUE;
    }

    /* renamed from: b */
    public final boolean m11914b() {
        return m11911c(Integer.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m11912c() {
        return m11911c(4);
    }

    /* renamed from: c */
    public final boolean m11911c(int i) {
        return (this.f28407a & i) == i;
    }

    /* renamed from: d */
    public final boolean m11910d() {
        return m11911c(1);
    }
}
