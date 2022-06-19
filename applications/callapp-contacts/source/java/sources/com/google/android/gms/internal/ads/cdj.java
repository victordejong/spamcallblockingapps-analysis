package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdj.class */
public final class cdj implements cgy<Bundle> {

    /* renamed from: a */
    private final int f45566a;

    /* renamed from: b */
    private final boolean f45567b;

    /* renamed from: c */
    private final boolean f45568c;

    /* renamed from: d */
    private final int f45569d;

    /* renamed from: e */
    private final int f45570e;

    /* renamed from: f */
    private final int f45571f;

    /* renamed from: g */
    private final float f45572g;

    /* renamed from: h */
    private final boolean f45573h;

    public cdj(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f45566a = i;
        this.f45567b = z;
        this.f45568c = z2;
        this.f45569d = i2;
        this.f45570e = i3;
        this.f45571f = i4;
        this.f45572g = f;
        this.f45573h = z3;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f45566a);
        bundle2.putBoolean("ma", this.f45567b);
        bundle2.putBoolean("sp", this.f45568c);
        bundle2.putInt("muv", this.f45569d);
        bundle2.putInt("rm", this.f45570e);
        bundle2.putInt("riv", this.f45571f);
        bundle2.putFloat("android_app_volume", this.f45572g);
        bundle2.putBoolean("android_app_muted", this.f45573h);
    }
}
