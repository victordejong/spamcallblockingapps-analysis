package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqw.class */
public final class zzbqw implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        zzcop zzcopVar2 = zzcopVar;
        String str = (String) map.get("action");
        if (!"tick".equals(str)) {
            if ("experiment".equals(str)) {
                String str2 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                if (TextUtils.isEmpty(str2)) {
                    zzciz.zzj("No value given for CSI experiment.");
                    return;
                } else {
                    zzcopVar2.zzo().zza().zzd("e", str2);
                    return;
                }
            } else if (!"extra".equals(str)) {
                return;
            } else {
                String str3 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
                String str4 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                if (TextUtils.isEmpty(str4)) {
                    zzciz.zzj("No value given for CSI extra.");
                    return;
                } else if (TextUtils.isEmpty(str3)) {
                    zzciz.zzj("No name given for CSI extra.");
                    return;
                } else {
                    zzcopVar2.zzo().zza().zzd(str3, str4);
                    return;
                }
            }
        }
        String str5 = (String) map.get("label");
        String str6 = (String) map.get("start_label");
        String str7 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str5)) {
            zzciz.zzj("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str7)) {
            zzciz.zzj("No timestamp given for CSI tick.");
        } else {
            try {
                long parseLong = Long.parseLong(str7);
                long currentTimeMillis = zzt.zzA().currentTimeMillis();
                long elapsedRealtime = zzt.zzA().elapsedRealtime();
                String str8 = str6;
                if (true == TextUtils.isEmpty(str6)) {
                    str8 = "native:view_load";
                }
                zzcopVar2.zzo().zzc(str5, str8, (parseLong - currentTimeMillis) + elapsedRealtime);
            } catch (NumberFormatException e) {
                zzciz.zzk("Malformed timestamp for CSI tick.", e);
            }
        }
    }
}
