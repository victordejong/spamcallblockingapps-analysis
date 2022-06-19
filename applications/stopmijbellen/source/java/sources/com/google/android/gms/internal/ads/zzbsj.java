package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsj.class */
public final class zzbsj implements zzbrt<Object> {
    private final zzbsi zza;

    public zzbsj(zzbsi zzbsiVar) {
        this.zza = zzbsiVar;
    }

    public static void zzb(zzcop zzcopVar, zzbsi zzbsiVar) {
        zzcopVar.zzaf("/reward", new zzbsj(zzbsiVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        zzces zzcesVar;
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.zza.zzc();
                return;
            } else if (!"video_complete".equals(str)) {
                return;
            } else {
                this.zza.zzb();
                return;
            }
        }
        try {
            int parseInt = Integer.parseInt(map.get(AppLovinEventParameters.REVENUE_AMOUNT));
            String str2 = map.get("type");
            zzcesVar = null;
            if (!TextUtils.isEmpty(str2)) {
                zzcesVar = new zzces(str2, parseInt);
            }
        } catch (NumberFormatException e) {
            zzciz.zzk("Unable to parse reward amount.", e);
            zzcesVar = null;
        }
        this.zza.zza(zzcesVar);
    }
}
