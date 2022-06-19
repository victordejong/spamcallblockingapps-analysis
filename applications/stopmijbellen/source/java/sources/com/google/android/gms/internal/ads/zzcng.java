package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcng.class */
public final class zzcng implements zzbrt<zzclh> {
    private static final Integer zzb(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException e) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(C0033h.m8889h(str, 39, String.valueOf(str2).length()));
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzciz.zzj(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzclh zzclhVar, Map map) {
        zzcno zzcnoVar;
        zzcmx zzcmxVar;
        zzclh zzclhVar2 = zzclhVar;
        if (zzciz.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzciz.zze("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzcmy zzy = zzt.zzy();
        if (map.containsKey("abort")) {
            if (zzy.zzd(zzclhVar2)) {
                return;
            }
            zzciz.zzj("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer zzb = zzb(map, "periodicReportIntervalMs");
        Integer zzb2 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer zzb3 = zzb(map, "exoPlayerIdleIntervalMs");
        zzclg zzclgVar = new zzclg((String) map.get("flags"));
        boolean z = zzclgVar.zzn;
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
                    zzciz.zzj(str2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(str2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            }
            String[] strArr2 = strArr;
            if (strArr == null) {
                strArr2 = new String[]{str};
            }
            if (z) {
                Iterator<zzcmx> it2 = zzy.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        zzcmxVar = null;
                        break;
                    }
                    zzcmxVar = it2.next();
                    if (zzcmxVar.zza == zzclhVar2 && str.equals(zzcmxVar.zze())) {
                        break;
                    }
                }
            } else {
                zzcmxVar = zzy.zza(zzclhVar2);
            }
            if (zzcmxVar != null) {
                zzciz.zzj("Precache task is already running.");
                return;
            } else if (zzclhVar2.zzm() == null) {
                zzciz.zzj("Precache requires a dependency provider.");
                return;
            } else {
                Integer zzb4 = zzb(map, "player");
                Integer num = zzb4;
                if (zzb4 == null) {
                    num = 0;
                }
                if (zzb != null) {
                    zzclhVar2.zzC(zzb.intValue());
                }
                if (zzb2 != null) {
                    zzclhVar2.zzA(zzb2.intValue());
                }
                if (zzb3 != null) {
                    zzclhVar2.zzz(zzb3.intValue());
                }
                int intValue = num.intValue();
                zzcmr zzcmrVar = zzclhVar2.zzm().zzc;
                if (intValue > 0) {
                    int zzs = zzcky.zzs();
                    zzcnoVar = zzs < zzclgVar.zzh ? new zzcno(zzclhVar2, zzclgVar) : zzs < zzclgVar.zzb ? new zzcnl(zzclhVar2, zzclgVar) : new zzcnj(zzclhVar2);
                } else {
                    zzcnoVar = new zzcni(zzclhVar2);
                }
                new zzcmx(zzclhVar2, zzcnoVar, str, strArr2).zzb();
            }
        } else {
            zzcmx zza = zzy.zza(zzclhVar2);
            if (zza == null) {
                zzciz.zzj("Precache must specify a source.");
                return;
            }
            zzcnoVar = zza.zzb;
        }
        Integer zzb5 = zzb(map, "minBufferMs");
        if (zzb5 != null) {
            zzcnoVar.zzp(zzb5.intValue());
        }
        Integer zzb6 = zzb(map, "maxBufferMs");
        if (zzb6 != null) {
            zzcnoVar.zzo(zzb6.intValue());
        }
        Integer zzb7 = zzb(map, "bufferForPlaybackMs");
        if (zzb7 != null) {
            zzcnoVar.zzh(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (zzb8 == null) {
            return;
        }
        zzcnoVar.zzn(zzb8.intValue());
    }
}
