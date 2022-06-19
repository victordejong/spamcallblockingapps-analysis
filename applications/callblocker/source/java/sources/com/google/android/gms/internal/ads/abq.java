package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abq.class */
public final class abq implements AbstractC3131fa<aad> {

    /* renamed from: a */
    private boolean f7756a;

    /* renamed from: a */
    private static int m13666a(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                dyx.m8162a();
                i2 = C3634xr.m6801a(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                C3556uu.m6745e(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length()).append("Could not parse ").append(str).append(" in a video GMSG: ").append(str2).toString());
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static void m13665a(C3687zq c3687zq, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                c3687zq.m6673b(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                C3556uu.m6745e(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            c3687zq.m6670c(Integer.parseInt(str2));
        }
        if (str3 != null) {
            c3687zq.m6668d(Integer.parseInt(str3));
        }
        if (str4 != null) {
            c3687zq.m6666e(Integer.parseInt(str4));
        }
        if (str5 != null) {
            c3687zq.m6664f(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(aad aadVar, Map map) {
        int i;
        String[] strArr;
        String[] split;
        aad aadVar2 = aadVar;
        String str = (String) map.get("action");
        if (str == null) {
            C3556uu.m6745e("Action missing from video GMSG.");
            return;
        }
        if (C3556uu.m6753a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            C3556uu.m6751b(new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(jSONObject2).length()).append("Video GMSG: ").append(str).append(" ").append(jSONObject2).toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                C3556uu.m6745e("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                aadVar2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException e) {
                C3556uu.m6745e("Invalid color parameter in video GMSG.");
            }
        } else if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                C3556uu.m6745e("No MIME types specified for decoder properties inspection.");
                C3687zq.m6680a(aadVar2, "missingMimeTypes");
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str4 : str3.split(",")) {
                hashMap.put(str4, C3632xp.m6804a(str4.trim()));
            }
            C3687zq.m6679a(aadVar2, hashMap);
        } else {
            C3693zw mo13450c = aadVar2.mo13450c();
            if (mo13450c == null) {
                C3556uu.m6745e("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = aadVar2.getContext();
                int m13666a = m13666a(context, map, "x", 0);
                int m13666a2 = m13666a(context, map, "y", 0);
                int m13666a3 = m13666a(context, map, "w", -1);
                int m13666a4 = m13666a(context, map, "h", -1);
                int min = Math.min(m13666a3, aadVar2.mo13436l() - m13666a);
                int min2 = Math.min(m13666a4, aadVar2.mo13437k() - m13666a2);
                try {
                    i = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException e2) {
                    i = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || mo13450c.m6651a() != null) {
                    mo13450c.m6650a(m13666a, m13666a2, min, min2);
                    return;
                }
                mo13450c.m6649a(m13666a, m13666a2, min, min2, i, parseBoolean, new aae((String) map.get("flags")));
                C3687zq m6651a = mo13450c.m6651a();
                if (m6651a == null) {
                    return;
                }
                m13665a(m6651a, (Map<String, String>) map);
                return;
            }
            adn mo13448d = aadVar2.mo13448d();
            if (mo13448d != null) {
                if ("timeupdate".equals(str)) {
                    String str5 = (String) map.get("currentTime");
                    if (str5 == null) {
                        C3556uu.m6745e("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        mo13448d.m13571a(Float.parseFloat(str5));
                        return;
                    } catch (NumberFormatException e3) {
                        String valueOf = String.valueOf(str5);
                        C3556uu.m6745e(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if ("skip".equals(str)) {
                    mo13448d.m13563l();
                    return;
                }
            }
            C3687zq m6651a2 = mo13450c.m6651a();
            if (m6651a2 == null) {
                C3687zq.m6681a(aadVar2);
            } else if ("click".equals(str)) {
                Context context2 = aadVar2.getContext();
                int m13666a5 = m13666a(context2, map, "x", 0);
                int m13666a6 = m13666a(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, m13666a5, m13666a6, 0);
                m6651a2.m6682a(obtain);
                obtain.recycle();
            } else if ("currentTime".equals(str)) {
                String str6 = (String) map.get("time");
                if (str6 == null) {
                    C3556uu.m6745e("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    m6651a2.m6685a((int) (Float.parseFloat(str6) * 1000.0f));
                } catch (NumberFormatException e4) {
                    String valueOf2 = String.valueOf(str6);
                    C3556uu.m6745e(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                m6651a2.setVisibility(4);
            } else if ("load".equals(str)) {
                m6651a2.m6662h();
            } else if ("loadControl".equals(str)) {
                m13665a(m6651a2, (Map<String, String>) map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    m6651a2.m6659k();
                } else {
                    m6651a2.m6658l();
                }
            } else if ("pause".equals(str)) {
                m6651a2.m6661i();
            } else if ("play".equals(str)) {
                m6651a2.m6660j();
            } else if ("show".equals(str)) {
                m6651a2.setVisibility(0);
            } else if ("src".equals(str)) {
                String str7 = (String) map.get("src");
                String str8 = (String) map.get("demuxed");
                if (str8 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str8);
                        strArr = new String[jSONArray.length()];
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            strArr[i2] = jSONArray.getString(i2);
                        }
                    } catch (JSONException e5) {
                        String valueOf3 = String.valueOf(str8);
                        C3556uu.m6745e(valueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(valueOf3) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str7};
                    }
                } else {
                    strArr = new String[]{str7};
                }
                m6651a2.m6676a(str7, strArr);
            } else if ("touchMove".equals(str)) {
                Context context3 = aadVar2.getContext();
                m6651a2.m6686a(m13666a(context3, map, "dx", 0), m13666a(context3, map, "dy", 0));
                if (this.f7756a) {
                    return;
                }
                aadVar2.mo13441h();
                this.f7756a = true;
            } else if (!"volume".equals(str)) {
                if ("watermark".equals(str)) {
                    m6651a2.m6657m();
                    return;
                }
                String valueOf4 = String.valueOf(str);
                C3556uu.m6745e(valueOf4.length() != 0 ? "Unknown video action: ".concat(valueOf4) : new String("Unknown video action: "));
            } else {
                String str9 = (String) map.get("volume");
                if (str9 == null) {
                    C3556uu.m6745e("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    m6651a2.setVolume(Float.parseFloat(str9));
                } catch (NumberFormatException e6) {
                    String valueOf5 = String.valueOf(str9);
                    C3556uu.m6745e(valueOf5.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf5) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            }
        }
    }
}
