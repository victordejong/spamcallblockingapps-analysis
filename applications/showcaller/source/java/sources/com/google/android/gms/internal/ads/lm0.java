package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lm0.class */
public final class lm0 implements n20<kk0> {
    /* renamed from: b */
    private static final Integer m13481b(Map<String, String> map, String str) {
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
            ei0.m15464f(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(kk0 kk0Var, Map map) {
        tm0 tm0Var;
        bm0 bm0Var;
        kk0 kk0Var2 = kk0Var;
        if (ei0.m15460j(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            ei0.m15469a("Precache GMSG: ".concat(jSONObject.toString()));
        }
        cm0 m18138z = C5667s.m18138z();
        if (map.containsKey("abort")) {
            if (m18138z.m16021c(kk0Var2)) {
                return;
            }
            ei0.m15464f("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer m13481b = m13481b(map, "periodicReportIntervalMs");
        Integer m13481b2 = m13481b(map, "exoPlayerRenderingIntervalMs");
        Integer m13481b3 = m13481b(map, "exoPlayerIdleIntervalMs");
        jk0 jk0Var = new jk0((String) map.get("flags"));
        boolean z = jk0Var.f24918n;
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
                    ei0.m15464f(str2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(str2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            }
            String[] strArr2 = strArr;
            if (strArr == null) {
                strArr2 = new String[]{str};
            }
            if (z) {
                Iterator<bm0> it = m18138z.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        bm0Var = null;
                        break;
                    }
                    bm0Var = it.next();
                    if (bm0Var.f20524c == kk0Var2 && str.equals(bm0Var.m16319d())) {
                        break;
                    }
                }
            } else {
                bm0Var = m18138z.m16020d(kk0Var2);
            }
            if (bm0Var != null) {
                ei0.m15464f("Precache task is already running.");
                return;
            } else if (kk0Var2.mo7906h() == null) {
                ei0.m15464f("Precache requires a dependency provider.");
                return;
            } else {
                Integer m13481b4 = m13481b(map, "player");
                Integer num = m13481b4;
                if (m13481b4 == null) {
                    num = 0;
                }
                if (m13481b != null) {
                    kk0Var2.mo7931T0(m13481b.intValue());
                }
                if (m13481b2 != null) {
                    kk0Var2.mo7943N(m13481b2.intValue());
                }
                if (m13481b3 != null) {
                    kk0Var2.mo7911d0(m13481b3.intValue());
                }
                int intValue = num.intValue();
                vl0 vl0Var = kk0Var2.mo7906h().f18278c;
                if (intValue > 0) {
                    int m16581Q = ak0.m16581Q();
                    tm0Var = m16581Q < jk0Var.f24912h ? new tm0(kk0Var2, jk0Var) : m16581Q < jk0Var.f24906b ? new qm0(kk0Var2, jk0Var) : new om0(kk0Var2);
                } else {
                    tm0Var = new nm0(kk0Var2);
                }
                new bm0(kk0Var2, tm0Var, str, strArr2).mo16320c();
            }
        } else {
            bm0 m16020d = m18138z.m16020d(kk0Var2);
            if (m16020d == null) {
                ei0.m15464f("Precache must specify a source.");
                return;
            }
            tm0Var = m16020d.f20525d;
        }
        Integer m13481b5 = m13481b(map, "minBufferMs");
        if (m13481b5 != null) {
            tm0Var.mo10621l(m13481b5.intValue());
        }
        Integer m13481b6 = m13481b(map, "maxBufferMs");
        if (m13481b6 != null) {
            tm0Var.mo10622k(m13481b6.intValue());
        }
        Integer m13481b7 = m13481b(map, "bufferForPlaybackMs");
        if (m13481b7 != null) {
            tm0Var.mo10620m(m13481b7.intValue());
        }
        Integer m13481b8 = m13481b(map, "bufferForPlaybackAfterRebufferMs");
        if (m13481b8 == null) {
            return;
        }
        tm0Var.mo10619n(m13481b8.intValue());
    }
}
