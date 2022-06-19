package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclb.class */
public final class zzclb implements zzbpr<zzcjb> {
    private static final Integer zzb(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException e) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(str.length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzcgt.zzi(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcjb zzcjbVar, Map map) {
        zzclj zzcljVar;
        zzcks zzcksVar;
        zzcjb zzcjbVar2 = zzcjbVar;
        if (zzcgt.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzcgt.zzd("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzckt zzy = zzt.zzy();
        if (map.containsKey(AnalyticsConstants.ABORT)) {
            if (zzy.zza(zzcjbVar2)) {
                return;
            }
            zzcgt.zzi("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer zzb = zzb(map, "periodicReportIntervalMs");
        Integer zzb2 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer zzb3 = zzb(map, "exoPlayerIdleIntervalMs");
        zzcja zzcjaVar = new zzcja((String) map.get("flags"));
        boolean z = zzcjaVar.zzn;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    strArr = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr[i] = jSONArray.getString(i);
                    }
                } catch (JSONException e) {
                    zzcgt.zzi(str2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(str2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            }
            String[] strArr2 = strArr;
            if (strArr == null) {
                strArr2 = new String[]{str};
            }
            if (z) {
                Iterator<zzcks> it = zzy.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zzcksVar = null;
                        break;
                    }
                    zzcksVar = it.next();
                    if (zzcksVar.zza == zzcjbVar2 && str.equals(zzcksVar.zzd())) {
                        break;
                    }
                }
            } else {
                zzcksVar = zzy.zzb(zzcjbVar2);
            }
            if (zzcksVar != null) {
                zzcgt.zzi("Precache task is already running.");
                return;
            } else if (zzcjbVar2.zzk() == null) {
                zzcgt.zzi("Precache requires a dependency provider.");
                return;
            } else {
                Integer zzb4 = zzb(map, "player");
                Integer num = zzb4;
                if (zzb4 == null) {
                    num = 0;
                }
                if (zzb != null) {
                    zzcjbVar2.zzo(zzb.intValue());
                }
                if (zzb2 != null) {
                    zzcjbVar2.zzB(zzb2.intValue());
                }
                if (zzb3 != null) {
                    zzcjbVar2.zzC(zzb3.intValue());
                }
                int intValue = num.intValue();
                zzckm zzckmVar = zzcjbVar2.zzk().zzc;
                if (intValue > 0) {
                    int zzQ = zzcis.zzQ();
                    zzcljVar = zzQ < zzcjaVar.zzh ? new zzclj(zzcjbVar2, zzcjaVar) : zzQ < zzcjaVar.zzb ? new zzclg(zzcjbVar2, zzcjaVar) : new zzcle(zzcjbVar2);
                } else {
                    zzcljVar = new zzcld(zzcjbVar2);
                }
                new zzcks(zzcjbVar2, zzcljVar, str, strArr2).zzc();
            }
        } else {
            zzcks zzb5 = zzy.zzb(zzcjbVar2);
            if (zzb5 == null) {
                zzcgt.zzi("Precache must specify a source.");
                return;
            }
            zzcljVar = zzb5.zzb;
        }
        Integer zzb6 = zzb(map, "minBufferMs");
        if (zzb6 != null) {
            zzcljVar.zzh(zzb6.intValue());
        }
        Integer zzb7 = zzb(map, "maxBufferMs");
        if (zzb7 != null) {
            zzcljVar.zzg(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, "bufferForPlaybackMs");
        if (zzb8 != null) {
            zzcljVar.zzi(zzb8.intValue());
        }
        Integer zzb9 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (zzb9 == null) {
            return;
        }
        zzcljVar.zzl(zzb9.intValue());
    }
}
