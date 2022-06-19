package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.util.C5713l1;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xl0.class */
public final class xl0 implements n20<kk0> {

    /* renamed from: a */
    private boolean f32102a;

    /* renamed from: b */
    private static int m9143b(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                C7118wr.m9485a();
                i2 = xh0.m9161q(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(str.length() + 34 + str2.length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                ei0.m15464f(sb.toString());
                i2 = i;
            }
        }
        if (C5722o1.m17988m()) {
            StringBuilder sb2 = new StringBuilder(str.length() + 48 + String.valueOf(str2).length());
            sb2.append("Parse pixels for ");
            sb2.append(str);
            sb2.append(", got string ");
            sb2.append(str2);
            sb2.append(", int ");
            sb2.append(i2);
            sb2.append(".");
            C5722o1.m17990k(sb2.toString());
        }
        return i2;
    }

    /* renamed from: c */
    private static void m9142c(zzcip zzcipVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcipVar.m8050E(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                ei0.m15464f(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzcipVar.m8049F(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcipVar.m8048G(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcipVar.m8047H(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcipVar.m8037j(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(kk0 kk0Var, Map map) {
        int i;
        int i2;
        int i3;
        String[] split;
        kk0 kk0Var2 = kk0Var;
        String str = (String) map.get("action");
        if (str == null) {
            ei0.m15464f("Action missing from video GMSG.");
            return;
        }
        if (ei0.m15460j(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(str.length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            ei0.m15469a(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                ei0.m15464f("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                kk0Var2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException e) {
                ei0.m15464f("Invalid color parameter in background video GMSG.");
            }
        } else if ("playerBackground".equals(str)) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                ei0.m15464f("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                kk0Var2.mo7902j0(Color.parseColor(str3));
            } catch (IllegalArgumentException e2) {
                ei0.m15464f("Invalid color parameter in playerBackground video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str)) {
                String str4 = (String) map.get("mimeTypes");
                if (str4 == null) {
                    ei0.m15464f("No MIME types specified for decoder properties inspection.");
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "decoderProps");
                    hashMap.put("error", "missingMimeTypes");
                    kk0Var2.mo7959D0("onVideoEvent", hashMap);
                    return;
                }
                HashMap hashMap2 = new HashMap();
                for (String str5 : str4.split(",")) {
                    hashMap2.put(str5, C5713l1.m18001a(str5.trim()));
                }
                HashMap hashMap3 = new HashMap();
                hashMap3.put("event", "decoderProps");
                hashMap3.put("mimeTypes", hashMap2);
                kk0Var2.mo7959D0("onVideoEvent", hashMap3);
                return;
            }
            yj0 mo7912d = kk0Var2.mo7912d();
            if (mo7912d == null) {
                ei0.m15464f("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = kk0Var2.getContext();
                int m9143b = m9143b(context, map, "x", 0);
                int m9143b2 = m9143b(context, map, "y", 0);
                int m9143b3 = m9143b(context, map, "w", -1);
                AbstractC6381cw<Boolean> abstractC6381cw = C6679kw.f25769p2;
                if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
                    i = m9143b3 == -1 ? kk0Var2.mo7891q() : Math.min(m9143b3, kk0Var2.mo7891q());
                } else {
                    if (C5722o1.m17988m()) {
                        int mo7891q = kk0Var2.mo7891q();
                        StringBuilder sb2 = new StringBuilder(110);
                        sb2.append("Calculate width with original width ");
                        sb2.append(m9143b3);
                        sb2.append(", videoHost.getVideoBoundingWidth() ");
                        sb2.append(mo7891q);
                        sb2.append(", x ");
                        sb2.append(m9143b);
                        sb2.append(".");
                        C5722o1.m17990k(sb2.toString());
                    }
                    i = Math.min(m9143b3, kk0Var2.mo7891q() - m9143b);
                }
                int m9143b4 = m9143b(context, map, "h", -1);
                if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
                    i2 = m9143b4 == -1 ? kk0Var2.mo7884v() : Math.min(m9143b4, kk0Var2.mo7884v());
                } else {
                    if (C5722o1.m17988m()) {
                        int mo7884v = kk0Var2.mo7884v();
                        StringBuilder sb3 = new StringBuilder(113);
                        sb3.append("Calculate height with original height ");
                        sb3.append(m9143b4);
                        sb3.append(", videoHost.getVideoBoundingHeight() ");
                        sb3.append(mo7884v);
                        sb3.append(", y ");
                        sb3.append(m9143b2);
                        sb3.append(".");
                        C5722o1.m17990k(sb3.toString());
                    }
                    i2 = Math.min(m9143b4, kk0Var2.mo7884v() - m9143b2);
                }
                try {
                    i3 = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException e3) {
                    i3 = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || mo7912d.m8813c() != null) {
                    mo7912d.m8815a(m9143b, m9143b2, i, i2);
                    return;
                }
                mo7912d.m8814b(m9143b, m9143b2, i, i2, i3, parseBoolean, new jk0((String) map.get("flags")));
                zzcip m8813c = mo7912d.m8813c();
                if (m8813c == null) {
                    return;
                }
                m9142c(m8813c, map);
                return;
            }
            ro0 mo7909f = kk0Var2.mo7909f();
            if (mo7909f != null) {
                if ("timeupdate".equals(str)) {
                    String str6 = (String) map.get("currentTime");
                    if (str6 == null) {
                        ei0.m15464f("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        mo7909f.m11362G6(Float.parseFloat(str6));
                        return;
                    } catch (NumberFormatException e4) {
                        ei0.m15464f(str6.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if ("skip".equals(str)) {
                    mo7909f.m11343s();
                    return;
                }
            }
            zzcip m8813c2 = mo7912d.m8813c();
            if (m8813c2 == null) {
                HashMap hashMap4 = new HashMap();
                hashMap4.put("event", "no_video_view");
                kk0Var2.mo7959D0("onVideoEvent", hashMap4);
            } else if ("click".equals(str)) {
                Context context2 = kk0Var2.getContext();
                int m9143b5 = m9143b(context2, map, "x", 0);
                int m9143b6 = m9143b(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, m9143b5, m9143b6, 0);
                m8813c2.m8036k(obtain);
                obtain.recycle();
            } else if ("currentTime".equals(str)) {
                String str7 = (String) map.get("time");
                if (str7 == null) {
                    ei0.m15464f("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    m8813c2.m8054A((int) (Float.parseFloat(str7) * 1000.0f));
                } catch (NumberFormatException e5) {
                    ei0.m15464f(str7.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(str7) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                m8813c2.setVisibility(4);
            } else if ("load".equals(str)) {
                m8813c2.m8023x();
            } else if ("loadControl".equals(str)) {
                m9142c(m8813c2, map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    m8813c2.m8053B();
                } else {
                    m8813c2.m8052C();
                }
            } else if ("pause".equals(str)) {
                m8813c2.m8022y();
            } else if ("play".equals(str)) {
                m8813c2.m8021z();
            } else if ("show".equals(str)) {
                m8813c2.setVisibility(0);
            } else if ("src".equals(str)) {
                String str8 = (String) map.get("src");
                Integer num = null;
                if (map.containsKey("periodicReportIntervalMs")) {
                    try {
                        num = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                    } catch (NumberFormatException e6) {
                        String str9 = (String) map.get("periodicReportIntervalMs");
                        String.valueOf(str9).length();
                        ei0.m15464f("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf(str9)));
                    }
                }
                String[] strArr = {str8};
                String str10 = (String) map.get("demuxed");
                if (str10 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str10);
                        strArr = new String[jSONArray.length()];
                        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                            strArr[i4] = jSONArray.getString(i4);
                        }
                    } catch (JSONException e7) {
                        ei0.m15464f(str10.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(str10) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str8};
                    }
                }
                if (num != null) {
                    kk0Var2.mo7931T0(num.intValue());
                }
                m8813c2.m8025v(str8, strArr);
            } else if ("touchMove".equals(str)) {
                Context context3 = kk0Var2.getContext();
                m8813c2.m8024w(m9143b(context3, map, "dx", 0), m9143b(context3, map, "dy", 0));
                if (this.f32102a) {
                    return;
                }
                kk0Var2.mo7904i();
                this.f32102a = true;
            } else if ("volume".equals(str)) {
                String str11 = (String) map.get("volume");
                if (str11 == null) {
                    ei0.m15464f("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    m8813c2.m8051D(Float.parseFloat(str11));
                } catch (NumberFormatException e8) {
                    ei0.m15464f(str11.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(str11) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            } else if ("watermark".equals(str)) {
                m8813c2.m8035l();
            } else {
                ei0.m15464f(str.length() != 0 ? "Unknown video action: ".concat(str) : new String("Unknown video action: "));
            }
        }
    }
}
