package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.pubmatic.sdk.openwrap.core.POBConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddh.class */
public final class zzddh implements zzdfj<Bundle> {
    private final Bundle zzdvb;

    public zzddh(Bundle bundle) {
        this.zzdvb = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzdnz.zza(bundle2, POBConstants.KEY_DEVICE);
        zza.putBundle("android_mem_info", this.zzdvb);
        bundle2.putBundle(POBConstants.KEY_DEVICE, zza);
    }
}
