package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqh.class */
public final class zzbqh implements zzbpr<Object> {
    private final zzbqg zza;

    public zzbqh(zzbqg zzbqgVar) {
        this.zza = zzbqgVar;
    }

    public static void zzb(zzcml zzcmlVar, zzbqg zzbqgVar) {
        zzcmlVar.zzab("/reward", new zzbqh(zzbqgVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        zzccl zzcclVar;
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.zza.zza();
                return;
            } else if (!"video_complete".equals(str)) {
                return;
            } else {
                this.zza.zzc();
                return;
            }
        }
        try {
            int parseInt = Integer.parseInt(map.get(AnalyticsConstants.AMOUNT));
            String str2 = map.get("type");
            zzcclVar = null;
            if (!TextUtils.isEmpty(str2)) {
                zzcclVar = new zzccl(str2, parseInt);
            }
        } catch (NumberFormatException e) {
            zzcgt.zzj("Unable to parse reward amount.", e);
            zzcclVar = null;
        }
        this.zza.zzb(zzcclVar);
    }
}
