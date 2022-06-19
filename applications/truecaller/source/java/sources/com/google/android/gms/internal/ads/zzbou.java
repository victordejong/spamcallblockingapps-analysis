package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.razorpay.AnalyticsConstants;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbou.class */
public final class zzbou implements zzbpr<zzcml> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        String str = (String) map.get("action");
        if (!"tick".equals(str)) {
            if ("experiment".equals(str)) {
                String str2 = (String) map.get("value");
                if (TextUtils.isEmpty(str2)) {
                    zzcgt.zzi("No value given for CSI experiment.");
                    return;
                } else {
                    zzcmlVar2.zzq().zzc().zzd("e", str2);
                    return;
                }
            } else if (!"extra".equals(str)) {
                return;
            } else {
                String str3 = (String) map.get(AnalyticsConstants.NAME);
                String str4 = (String) map.get("value");
                if (TextUtils.isEmpty(str4)) {
                    zzcgt.zzi("No value given for CSI extra.");
                    return;
                } else if (TextUtils.isEmpty(str3)) {
                    zzcgt.zzi("No name given for CSI extra.");
                    return;
                } else {
                    zzcmlVar2.zzq().zzc().zzd(str3, str4);
                    return;
                }
            }
        }
        String str5 = (String) map.get("label");
        String str6 = (String) map.get("start_label");
        String str7 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str5)) {
            zzcgt.zzi("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str7)) {
            zzcgt.zzi("No timestamp given for CSI tick.");
        } else {
            try {
                long parseLong = Long.parseLong(str7);
                long mo38787c = zzt.zzj().mo38787c();
                long mo38789a = zzt.zzj().mo38789a();
                String str8 = str6;
                if (true == TextUtils.isEmpty(str6)) {
                    str8 = "native:view_load";
                }
                zzcmlVar2.zzq().zzb(str5, str8, (parseLong - mo38787c) + mo38789a);
            } catch (NumberFormatException e) {
                zzcgt.zzj("Malformed timestamp for CSI tick.", e);
            }
        }
    }
}
