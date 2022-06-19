package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbu.class */
public final class zzdbu implements zzdfj<Bundle> {
    private final float zzdut;
    private final int zzdxv;
    private final boolean zzdxw;
    private final boolean zzdxx;
    private final int zzdxy;
    private final int zzdxz;
    private final int zzdya;
    private final boolean zzhbf;

    public zzdbu(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.zzdxv = i;
        this.zzdxw = z;
        this.zzdxx = z2;
        this.zzdxy = i2;
        this.zzdxz = i3;
        this.zzdya = i4;
        this.zzdut = f;
        this.zzhbf = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.zzdxv);
        bundle2.putBoolean("ma", this.zzdxw);
        bundle2.putBoolean("sp", this.zzdxx);
        bundle2.putInt("muv", this.zzdxy);
        bundle2.putInt("rm", this.zzdxz);
        bundle2.putInt("riv", this.zzdya);
        bundle2.putFloat("android_app_volume", this.zzdut);
        bundle2.putBoolean("android_app_muted", this.zzhbf);
    }
}
