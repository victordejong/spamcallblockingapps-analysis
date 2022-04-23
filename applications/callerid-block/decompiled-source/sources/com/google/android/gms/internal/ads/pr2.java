package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pr2.class */
public final class pr2 {

    /* renamed from: a */
    private int f8150a = 2500;

    /* renamed from: b */
    private int f8151b;

    /* renamed from: a */
    public final int m6170a() {
        return this.f8150a;
    }

    /* renamed from: b */
    public final int m6169b() {
        return this.f8151b;
    }

    /* renamed from: c */
    public final void m6168c(zzal zzalVar) {
        int i = this.f8151b + 1;
        this.f8151b = i;
        int i2 = this.f8150a;
        this.f8150a = i2 + i2;
        if (i > 1) {
            throw zzalVar;
        }
    }
}
