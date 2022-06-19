package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqi.class */
public final class zzaqi {
    private final zzbeb zzdjd;
    private final boolean zzdpv;
    private final String zzdpw;

    public zzaqi(zzbeb zzbebVar, Map<String, String> map) {
        this.zzdjd = zzbebVar;
        this.zzdpw = map.get("forceOrientation");
        this.zzdpv = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean(map.get("allowOrientationChange")) : true;
    }

    public final void execute() {
        if (this.zzdjd == null) {
            zzazk.zzex("AdWebView is null");
        } else {
            this.zzdjd.setRequestedOrientation(EnvironmentUtils.ORIENTATION_PORTRAIT.equalsIgnoreCase(this.zzdpw) ? 7 : EnvironmentUtils.ORIENTATION_LANDSCAPE.equalsIgnoreCase(this.zzdpw) ? 6 : this.zzdpv ? -1 : zzr.zzkt().zzzc());
        }
    }
}
