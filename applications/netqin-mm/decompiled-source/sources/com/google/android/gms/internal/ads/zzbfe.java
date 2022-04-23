package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.inmobi.ads.C8311w;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfe.class */
public final class zzbfe implements zzahq<zzbdu> {

    /* renamed from: a */
    public boolean f24926a;

    /* renamed from: a */
    public static int m15675a(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                zzwm.m11170a();
                i2 = zzbbg.m15897b(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzbbq.m15852d(sb.toString());
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static void m15674a(zzbdh zzbdhVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbdhVar.m15794b(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzbbq.m15852d(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbdhVar.m15791c(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbdhVar.m15789d(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbdhVar.m15787e(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbdhVar.m15785f(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbdu zzbduVar, Map map) {
        int i;
        String[] split;
        zzbdu zzbduVar2 = zzbduVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzbbq.m15852d("Action missing from video GMSG.");
            return;
        }
        if (zzbbq.m15859a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            zzbbq.m15858a(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzbbq.m15852d("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzbduVar2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException e) {
                zzbbq.m15852d("Invalid color parameter in video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str)) {
                String str3 = (String) map.get("mimeTypes");
                if (str3 == null) {
                    zzbbq.m15852d("No MIME types specified for decoder properties inspection.");
                    zzbdh.m15800a(zzbduVar2, "missingMimeTypes");
                    return;
                }
                HashMap hashMap = new HashMap();
                for (String str4 : str3.split(",")) {
                    hashMap.put(str4, zzbbe.m15913a(str4.trim()));
                }
                zzbdh.m15799a(zzbduVar2, hashMap);
                return;
            }
            zzbdn m = zzbduVar2.mo15554m();
            if (m == null) {
                zzbbq.m15852d("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = zzbduVar2.getContext();
                int a = m15675a(context, map, "x", 0);
                int a2 = m15675a(context, map, "y", 0);
                int a3 = m15675a(context, map, C8311w.f32327d, -1);
                int a4 = m15675a(context, map, "h", -1);
                int min = Math.min(a3, zzbduVar2.mo15557j() - a);
                int min2 = Math.min(a4, zzbduVar2.mo15553o() - a2);
                try {
                    i = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException e2) {
                    i = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || m.m15768c() != null) {
                    m.m15771a(a, a2, min, min2);
                    return;
                }
                m.m15770a(a, a2, min, min2, i, parseBoolean, new zzbdv((String) map.get("flags")));
                zzbdh c = m.m15768c();
                if (c != null) {
                    m15674a(c, (Map<String, String>) map);
                    return;
                }
                return;
            }
            zzbhd i2 = zzbduVar2.mo15558i();
            if (i2 != null) {
                if ("timeupdate".equals(str)) {
                    String str5 = (String) map.get("currentTime");
                    if (str5 == null) {
                        zzbbq.m15852d("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        i2.m15533b(Float.parseFloat(str5));
                        return;
                    } catch (NumberFormatException e3) {
                        String valueOf = String.valueOf(str5);
                        zzbbq.m15852d(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if ("skip".equals(str)) {
                    i2.m15539Q1();
                    return;
                }
            }
            zzbdh c2 = m.m15768c();
            if (c2 == null) {
                zzbdh.m15801a(zzbduVar2);
            } else if ("click".equals(str)) {
                Context context2 = zzbduVar2.getContext();
                int a5 = m15675a(context2, map, "x", 0);
                int a6 = m15675a(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, a5, a6, 0);
                c2.m15803a(obtain);
                obtain.recycle();
            } else if ("currentTime".equals(str)) {
                String str6 = (String) map.get("time");
                if (str6 == null) {
                    zzbbq.m15852d("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    c2.m15806a((int) (Float.parseFloat(str6) * 1000.0f));
                } catch (NumberFormatException e4) {
                    String valueOf2 = String.valueOf(str6);
                    zzbbq.m15852d(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                c2.setVisibility(4);
            } else if ("load".equals(str)) {
                c2.m15780k();
            } else if ("loadControl".equals(str)) {
                m15674a(c2, (Map<String, String>) map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    c2.m15779l();
                } else {
                    c2.m15778m();
                }
            } else if ("pause".equals(str)) {
                c2.m15782i();
            } else if ("play".equals(str)) {
                c2.m15781j();
            } else if ("show".equals(str)) {
                c2.setVisibility(0);
            } else if ("src".equals(str)) {
                String str7 = (String) map.get("src");
                String[] strArr = {str7};
                String str8 = (String) map.get("demuxed");
                if (str8 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str8);
                        strArr = new String[jSONArray.length()];
                        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                            strArr[i3] = jSONArray.getString(i3);
                        }
                    } catch (JSONException e5) {
                        String valueOf3 = String.valueOf(str8);
                        zzbbq.m15852d(valueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(valueOf3) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str7};
                    }
                }
                c2.m15797a(str7, strArr);
            } else if ("touchMove".equals(str)) {
                Context context3 = zzbduVar2.getContext();
                c2.m15807a(m15675a(context3, map, "dx", 0), m15675a(context3, map, "dy", 0));
                if (!this.f24926a) {
                    zzbduVar2.mo15548u();
                    this.f24926a = true;
                }
            } else if (AvidVideoPlaybackListenerImpl.VOLUME.equals(str)) {
                String str9 = (String) map.get(AvidVideoPlaybackListenerImpl.VOLUME);
                if (str9 == null) {
                    zzbbq.m15852d("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    c2.setVolume(Float.parseFloat(str9));
                } catch (NumberFormatException e6) {
                    String valueOf4 = String.valueOf(str9);
                    zzbbq.m15852d(valueOf4.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf4) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            } else if ("watermark".equals(str)) {
                c2.m15777n();
            } else {
                String valueOf5 = String.valueOf(str);
                zzbbq.m15852d(valueOf5.length() != 0 ? "Unknown video action: ".concat(valueOf5) : new String("Unknown video action: "));
            }
        }
    }
}
