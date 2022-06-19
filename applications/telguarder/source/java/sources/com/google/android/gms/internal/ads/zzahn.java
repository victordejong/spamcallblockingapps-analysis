package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.plus.PlusShare;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahn.class */
public final class zzahn implements zzaif<zzbeb> {
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzbeb zzbebVar2 = zzbebVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                zzd.zzex("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                zzd.zzex("No timestamp given for CSI tick.");
            } else {
                try {
                    long parseLong = Long.parseLong(str4);
                    long currentTimeMillis = zzr.zzky().currentTimeMillis();
                    long elapsedRealtime = zzr.zzky().elapsedRealtime();
                    String str5 = str3;
                    if (TextUtils.isEmpty(str3)) {
                        str5 = "native:view_load";
                    }
                    zzbebVar2.zzabi().zzb(str2, str5, elapsedRealtime + (parseLong - currentTimeMillis));
                } catch (NumberFormatException e) {
                    zzd.zzd("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str6 = (String) map.get("value");
            if (TextUtils.isEmpty(str6)) {
                zzd.zzex("No value given for CSI experiment.");
                return;
            }
            zzacc zzsp = zzbebVar2.zzabi().zzsp();
            if (zzsp == null) {
                zzd.zzex("No ticker for WebView, dropping experiment ID.");
            } else {
                zzsp.zzg("e", str6);
            }
        } else if (!"extra".equals(str)) {
        } else {
            String str7 = (String) map.get("name");
            String str8 = (String) map.get("value");
            if (TextUtils.isEmpty(str8)) {
                zzd.zzex("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str7)) {
                zzd.zzex("No name given for CSI extra.");
            } else {
                zzacc zzsp2 = zzbebVar2.zzabi().zzsp();
                if (zzsp2 == null) {
                    zzd.zzex("No ticker for WebView, dropping extra parameter.");
                } else {
                    zzsp2.zzg(str7, str8);
                }
            }
        }
    }
}
