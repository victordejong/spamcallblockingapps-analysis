package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r62.class */
public final class r62 implements va2<Bundle> {

    /* renamed from: a */
    public final int f28797a;

    /* renamed from: b */
    public final boolean f28798b;

    /* renamed from: c */
    public final boolean f28799c;

    /* renamed from: d */
    public final int f28800d;

    /* renamed from: e */
    public final int f28801e;

    /* renamed from: f */
    public final int f28802f;

    /* renamed from: g */
    public final float f28803g;

    /* renamed from: h */
    public final boolean f28804h;

    public r62(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f28797a = i;
        this.f28798b = z;
        this.f28799c = z2;
        this.f28800d = i2;
        this.f28801e = i3;
        this.f28802f = i4;
        this.f28803g = f;
        this.f28804h = z3;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f28797a);
        bundle2.putBoolean("ma", this.f28798b);
        bundle2.putBoolean("sp", this.f28799c);
        bundle2.putInt("muv", this.f28800d);
        bundle2.putInt("rm", this.f28801e);
        bundle2.putInt("riv", this.f28802f);
        bundle2.putFloat("android_app_volume", this.f28803g);
        bundle2.putBoolean("android_app_muted", this.f28804h);
    }
}
