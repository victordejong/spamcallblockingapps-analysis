package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzs.class */
public final class zzs extends zze {
    public zzs(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zze, com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onCreate(Bundle bundle) {
        zzd.zzed("AdOverlayParcel is null or does not contain valid overlay type.");
        this.zzdtk = zzl.OTHER;
        this.zzaax.finish();
    }
}
