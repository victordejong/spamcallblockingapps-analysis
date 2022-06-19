package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqi.class */
public final class zzaqi {
    private final zzbeb zzdjd;
    private final boolean zzdpv;
    private final String zzdpw;

    public zzaqi(zzbeb zzbebVar, Map<String, String> map) {
        this.zzdjd = zzbebVar;
        this.zzdpw = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzdpv = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.zzdpv = true;
        }
    }

    public final void execute() {
        if (this.zzdjd == null) {
            zzd.zzex("AdWebView is null");
        } else {
            this.zzdjd.setRequestedOrientation("portrait".equalsIgnoreCase(this.zzdpw) ? 7 : "landscape".equalsIgnoreCase(this.zzdpw) ? 6 : this.zzdpv ? -1 : zzr.zzkt().zzzc());
        }
    }
}
