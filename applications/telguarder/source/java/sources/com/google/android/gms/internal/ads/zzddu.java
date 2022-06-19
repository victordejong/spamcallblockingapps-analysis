package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.internal.AnalyticsEvents;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddu.class */
public final class zzddu implements zzdfj<Bundle> {
    private final String zzhcj;

    public zzddu(String str) {
        this.zzhcj = str;
    }

    public static boolean zze(Set<String> set) {
        return set.contains("rewarded") || set.contains(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE) || set.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) || set.contains(POBConstants.KEY_BANNER);
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        zzdnz.zza(bundle, "omid_v", this.zzhcj);
    }
}
