package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddc.class */
public final class zzddc implements zzdgu<Bundle> {

    /* renamed from: a */
    public final int f27150a;

    /* renamed from: b */
    public final boolean f27151b;

    /* renamed from: c */
    public final boolean f27152c;

    /* renamed from: d */
    public final int f27153d;

    /* renamed from: e */
    public final int f27154e;

    /* renamed from: f */
    public final int f27155f;

    /* renamed from: g */
    public final float f27156g;

    /* renamed from: h */
    public final boolean f27157h;

    public zzddc(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f27150a = i;
        this.f27151b = z;
        this.f27152c = z2;
        this.f27153d = i2;
        this.f27154e = i3;
        this.f27155f = i4;
        this.f27156g = f;
        this.f27157h = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f27150a);
        bundle2.putBoolean("ma", this.f27151b);
        bundle2.putBoolean("sp", this.f27152c);
        bundle2.putInt("muv", this.f27153d);
        bundle2.putInt("rm", this.f27154e);
        bundle2.putInt("riv", this.f27155f);
        bundle2.putFloat("android_app_volume", this.f27156g);
        bundle2.putBoolean("android_app_muted", this.f27157h);
    }
}
