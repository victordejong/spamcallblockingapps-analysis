package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdj.class */
public final class cdj implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final int f25635a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25636b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f25637c;

    /* renamed from: d  reason: collision with root package name */
    private final int f25638d;
    private final int e;
    private final int f;
    private final float g;
    private final boolean h;

    public cdj(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f25635a = i;
        this.f25636b = z;
        this.f25637c = z2;
        this.f25638d = i2;
        this.e = i3;
        this.f = i4;
        this.g = f;
        this.h = z3;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f25635a);
        bundle2.putBoolean("ma", this.f25636b);
        bundle2.putBoolean("sp", this.f25637c);
        bundle2.putInt("muv", this.f25638d);
        bundle2.putInt("rm", this.e);
        bundle2.putInt("riv", this.f);
        bundle2.putFloat("android_app_volume", this.g);
        bundle2.putBoolean("android_app_muted", this.h);
    }
}
