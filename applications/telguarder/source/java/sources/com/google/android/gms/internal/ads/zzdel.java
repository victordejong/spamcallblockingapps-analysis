package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdel.class */
public final class zzdel implements zzdfj<Bundle> {
    private final String zzhcp;

    public zzdel(String str) {
        this.zzhcp = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putString("rtb", this.zzhcp);
    }
}
