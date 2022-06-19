package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzu.class */
public final class zzu extends zzc {
    public zzu(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzc, com.google.android.gms.internal.ads.zzaro
    public final void onCreate(Bundle bundle) {
        zzd.zzeb("AdOverlayParcel is null or does not contain valid overlay type.");
        this.zzdru = zzn.OTHER;
        this.zzaas.finish();
    }
}
