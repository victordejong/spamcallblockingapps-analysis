package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdeg.class */
public final class zzdeg implements zzdfj<Bundle> {
    private String zzdun;

    public zzdeg(String str) {
        this.zzdun = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.zzdun);
    }
}
