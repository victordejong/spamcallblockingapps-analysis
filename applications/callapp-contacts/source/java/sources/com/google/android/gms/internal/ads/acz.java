package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acz.class */
public final class acz implements AbstractC12607hi<abb> {
    /* renamed from: a */
    private static Integer m18871a(Map<String, String> map, String str) {
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

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(abb abbVar, Map map) {
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
        if (map.containsKey("abort")) {
            if (acr.m18878a(abbVar2)) {
                return;
            }
            zzd.zzez("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer m18871a = m18871a(map, "periodicReportIntervalMs");
        Integer m18871a2 = m18871a(map, "exoPlayerRenderingIntervalMs");
        Integer m18871a3 = m18871a(map, "exoPlayerIdleIntervalMs");
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
            if (acr.m18877b(abbVar2) != null) {
                zzd.zzez("Precache task is already running.");
                return;
            } else if (abbVar2.mo13748e() == null) {
                zzd.zzez("Precache requires a dependency provider.");
                return;
            } else {
                aay aayVar = new aay((String) map.get("flags"));
                Integer m18871a4 = m18871a(map, "player");
                Integer num = m18871a4;
                if (m18871a4 == null) {
                    num = 0;
                }
                if (m18871a != null) {
                    abbVar2.mo13789a(m18871a.intValue());
                }
                if (m18871a2 != null) {
                    abbVar2.mo13762b(m18871a2.intValue());
                }
                if (m18871a3 != null) {
                    abbVar2.mo13753c(m18871a3.intValue());
                }
                acuVar = abbVar2.mo13748e().zzbou.mo18868a(abbVar2, num.intValue(), aayVar);
                new acp(abbVar2, acuVar, str, strArr2).zzyx();
            }
        } else {
            acp m18877b = acr.m18877b(abbVar2);
            if (m18877b == null) {
                zzd.zzez("Precache must specify a source.");
                return;
            }
            acuVar = m18877b.f39913b;
        }
        Integer m18871a5 = m18871a(map, "minBufferMs");
        if (m18871a5 != null) {
            acuVar.mo18864b(m18871a5.intValue());
        }
        Integer m18871a6 = m18871a(map, "maxBufferMs");
        if (m18871a6 != null) {
            acuVar.mo18866a(m18871a6.intValue());
        }
        Integer m18871a7 = m18871a(map, "bufferForPlaybackMs");
        if (m18871a7 != null) {
            acuVar.mo18860d(m18871a7.intValue());
        }
        Integer m18871a8 = m18871a(map, "bufferForPlaybackAfterRebufferMs");
        if (m18871a8 == null) {
            return;
        }
        acuVar.mo18859e(m18871a8.intValue());
    }
}
