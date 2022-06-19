package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acc.class */
public final class acc implements AbstractC3131fa<aad> {
    /* renamed from: a */
    private static Integer m13650a(Map<String, String> map, String str) {
        Integer num;
        if (!map.containsKey(str)) {
            num = null;
        } else {
            try {
                num = Integer.valueOf(Integer.parseInt(map.get(str)));
            } catch (NumberFormatException e) {
                String str2 = map.get(str);
                C3556uu.m6745e(new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length()).append("Precache invalid numeric parameter '").append(str).append("': ").append(str2).toString());
                num = null;
            }
        }
        return num;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(aad aadVar, Map map) {
        abt abtVar;
        String[] strArr;
        aad aadVar2 = aadVar;
        if (C3556uu.m6753a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject);
            C3556uu.m6751b(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Precache GMSG: ").append(valueOf).toString());
        }
        C2341q.m14722y();
        if (map.containsKey("abort")) {
            if (abu.m13655a(aadVar2)) {
                return;
            }
            C3556uu.m6745e("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        if (str != null) {
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
                    C3556uu.m6745e(valueOf2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(valueOf2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            } else {
                strArr = new String[]{str};
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (abu.m13653b(aadVar2) != null) {
                C3556uu.m6745e("Precache task is already running.");
                return;
            } else if (aadVar2.mo13442g() == null) {
                C3556uu.m6745e("Precache requires a dependency provider.");
                return;
            } else {
                aae aaeVar = new aae((String) map.get("flags"));
                Integer m13650a = m13650a(map, "player");
                Integer num = m13650a;
                if (m13650a == null) {
                    num = 0;
                }
                abt mo13651a = aadVar2.mo13442g().f6628a.mo13651a(aadVar2, num.intValue(), null, aaeVar);
                new abs(aadVar2, mo13651a, str, strArr).m7063b();
                abtVar = mo13651a;
            }
        } else {
            abs m13653b = abu.m13653b(aadVar2);
            if (m13653b == null) {
                C3556uu.m6745e("Precache must specify a source.");
                return;
            }
            abtVar = m13653b.f7759b;
        }
        Integer m13650a2 = m13650a(map, "minBufferMs");
        if (m13650a2 != null) {
            abtVar.mo13629c(m13650a2.intValue());
        }
        Integer m13650a3 = m13650a(map, "maxBufferMs");
        if (m13650a3 != null) {
            abtVar.mo13640a(m13650a3.intValue());
        }
        Integer m13650a4 = m13650a(map, "bufferForPlaybackMs");
        if (m13650a4 != null) {
            abtVar.mo13627d(m13650a4.intValue());
        }
        Integer m13650a5 = m13650a(map, "bufferForPlaybackAfterRebufferMs");
        if (m13650a5 == null) {
            return;
        }
        abtVar.mo13626e(m13650a5.intValue());
    }
}
