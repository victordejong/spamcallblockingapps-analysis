package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acz.class */
public final class acz implements hi<abb> {
    private static Integer a(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException e) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzd.zzez(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(abb abbVar, Map map) {
        acu acuVar;
        abb abbVar2 = abbVar;
        if (zzd.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
            sb.append("Precache GMSG: ");
            sb.append(valueOf);
            zzd.zzdz(sb.toString());
        }
        zzr.zzlr();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            Integer a2 = a(map, "periodicReportIntervalMs");
            Integer a3 = a(map, "exoPlayerRenderingIntervalMs");
            Integer a4 = a(map, "exoPlayerIdleIntervalMs");
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
                        String valueOf2 = String.valueOf(str2);
                        zzd.zzez(valueOf2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(valueOf2) : new String("Malformed demuxed URL list for precache: "));
                        strArr = null;
                    }
                }
                String[] strArr2 = strArr;
                if (strArr == null) {
                    strArr2 = new String[]{str};
                }
                if (acr.b(abbVar2) != null) {
                    zzd.zzez("Precache task is already running.");
                    return;
                } else if (abbVar2.e() == null) {
                    zzd.zzez("Precache requires a dependency provider.");
                    return;
                } else {
                    aay aayVar = new aay((String) map.get("flags"));
                    Integer a5 = a(map, "player");
                    Integer num = a5;
                    if (a5 == null) {
                        num = 0;
                    }
                    if (a2 != null) {
                        abbVar2.a(a2.intValue());
                    }
                    if (a3 != null) {
                        abbVar2.b(a3.intValue());
                    }
                    if (a4 != null) {
                        abbVar2.c(a4.intValue());
                    }
                    acuVar = abbVar2.e().zzbou.a(abbVar2, num.intValue(), aayVar);
                    new acp(abbVar2, acuVar, str, strArr2).zzyx();
                }
            } else {
                acp b2 = acr.b(abbVar2);
                if (b2 != null) {
                    acuVar = b2.f23109b;
                } else {
                    zzd.zzez("Precache must specify a source.");
                    return;
                }
            }
            Integer a6 = a(map, "minBufferMs");
            if (a6 != null) {
                acuVar.b(a6.intValue());
            }
            Integer a7 = a(map, "maxBufferMs");
            if (a7 != null) {
                acuVar.a(a7.intValue());
            }
            Integer a8 = a(map, "bufferForPlaybackMs");
            if (a8 != null) {
                acuVar.d(a8.intValue());
            }
            Integer a9 = a(map, "bufferForPlaybackAfterRebufferMs");
            if (a9 != null) {
                acuVar.e(a9.intValue());
            }
        } else if (!acr.a(abbVar2)) {
            zzd.zzez("Precache abort but no precache task running.");
        }
    }
}
