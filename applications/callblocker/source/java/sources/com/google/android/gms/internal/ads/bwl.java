package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwl.class */
public final class bwl implements cae<Bundle> {

    /* renamed from: a */
    private final int f12396a;

    /* renamed from: b */
    private final boolean f12397b;

    /* renamed from: c */
    private final boolean f12398c;

    /* renamed from: d */
    private final int f12399d;

    /* renamed from: e */
    private final int f12400e;

    /* renamed from: f */
    private final int f12401f;

    /* renamed from: g */
    private final float f12402g;

    /* renamed from: h */
    private final boolean f12403h;

    public bwl(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f12396a = i;
        this.f12397b = z;
        this.f12398c = z2;
        this.f12399d = i2;
        this.f12400e = i3;
        this.f12401f = i4;
        this.f12402g = f;
        this.f12403h = z3;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f12396a);
        bundle2.putBoolean("ma", this.f12397b);
        bundle2.putBoolean("sp", this.f12398c);
        bundle2.putInt("muv", this.f12399d);
        bundle2.putInt("rm", this.f12400e);
        bundle2.putInt("riv", this.f12401f);
        bundle2.putFloat("android_app_volume", this.f12402g);
        bundle2.putBoolean("android_app_muted", this.f12403h);
    }
}
