package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepu.class */
public final class zzepu implements zzerx<Bundle> {
    public final zzezy zza;

    public zzepu(zzezy zzezyVar) {
        this.zza = zzezyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzezy zzezyVar = this.zza;
        if (zzezyVar != null) {
            bundle2.putBoolean("render_in_browser", zzezyVar.zzb());
            bundle2.putBoolean("disable_ml", this.zza.zzc());
        }
    }
}
