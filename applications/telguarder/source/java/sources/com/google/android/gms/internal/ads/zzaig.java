package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaig.class */
public final class zzaig implements zzaif<zzbeb> {
    private static final Map<String, Integer> zzdhz = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final zza zzdhw;
    private final zzaqg zzdhx;
    private final zzaqt zzdhy;

    public zzaig(zza zzaVar, zzaqg zzaqgVar, zzaqt zzaqtVar) {
        this.zzdhw = zzaVar;
        this.zzdhx = zzaqgVar;
        this.zzdhy = zzaqtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zza zzaVar;
        zzbeb zzbebVar2 = zzbebVar;
        int intValue = zzdhz.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && (zzaVar = this.zzdhw) != null && !zzaVar.zzjy()) {
            this.zzdhw.zzbk(null);
        } else if (intValue == 1) {
            this.zzdhx.zzg(map);
        } else if (intValue == 3) {
            new zzaql(zzbebVar2, map).execute();
        } else if (intValue == 4) {
            new zzaqf(zzbebVar2, map).execute();
        } else if (intValue == 5) {
            new zzaqi(zzbebVar2, map).execute();
        } else if (intValue == 6) {
            this.zzdhx.zzad(true);
        } else if (intValue != 7) {
            zzd.zzew("Unknown MRAID command called.");
        } else {
            this.zzdhy.zzvr();
        }
    }
}
