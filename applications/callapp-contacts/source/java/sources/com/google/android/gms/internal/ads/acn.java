package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.explorestack.iab.mraid.C9568h;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.C12045o;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acn.class */
public final class acn implements AbstractC12607hi<abb> {

    /* renamed from: a */
    private boolean f39910a;

    /* renamed from: a */
    private static int m18881a(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                ekb.m14835a();
                i2 = C13077yq.m13950a(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzd.zzez(sb.toString());
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static Integer m18879a(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException e) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 41 + String.valueOf(str2).length());
            sb.append("Video gmsg invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzd.zzez(sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    private static void m18880a(zzbcb zzbcbVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbcbVar.f50172b.mo13838b(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzd.zzez(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbcbVar.f50172b.mo13834c(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbcbVar.f50172b.mo13831d(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbcbVar.f50172b.mo13829e(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbcbVar.f50172b.mo13827f(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(abb abbVar, Map map) {
        int i;
        boolean z;
        int i2;
        String[] split;
        abb abbVar2 = abbVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzd.zzez("Action missing from video GMSG.");
            return;
        }
        if (zzd.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(StringUtils.SPACE);
            sb.append(jSONObject2);
            zzd.zzdz(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzd.zzez("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                abbVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException e) {
                zzd.zzez("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                zzd.zzez("No MIME types specified for decoder properties inspection.");
                zzbcb.m13869a(abbVar2, "missingMimeTypes");
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str4 : str3.split(",")) {
                hashMap.put(str4, zzbx.zzer(str4.trim()));
            }
            zzbcb.m13868a(abbVar2, hashMap);
            return;
        }
        aaq mo13790a = abbVar2.mo13790a();
        if (mo13790a == null) {
            zzd.zzez("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = AppSettingsData.STATUS_NEW.equals(str);
        boolean equals2 = "position".equals(str);
        if (equals || equals2) {
            Context context = abbVar2.getContext();
            int m18881a = m18881a(context, map, "x", 0);
            int m18881a2 = m18881a(context, map, "y", 0);
            int m18881a3 = m18881a(context, map, "w", -1);
            int m18881a4 = m18881a(context, map, C9568h.f32519a, -1);
            int min = Math.min(m18881a3, abbVar2.mo13737m() - m18881a);
            int min2 = Math.min(m18881a4, abbVar2.mo13738l() - m18881a2);
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e2) {
                i = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (!equals || mo13790a.m18948a() != null) {
                C12045o.m19155b("The underlay may only be modified from the UI thread.");
                if (mo13790a.f39719d == null) {
                    return;
                }
                mo13790a.f39719d.m13871a(m18881a, m18881a2, min, min2);
                return;
            }
            aay aayVar = new aay((String) map.get("flags"));
            if (mo13790a.f39719d == null) {
                C12203ay.m18328a(mo13790a.f39717b.mo13740j().f43768b, mo13790a.f39717b.mo13754c(), "vpr2");
                mo13790a.f39719d = new zzbcb(mo13790a.f39716a, mo13790a.f39717b, i, parseBoolean, mo13790a.f39717b.mo13740j().f43768b, aayVar);
                mo13790a.f39718c.addView(mo13790a.f39719d, 0, new ViewGroup.LayoutParams(-1, -1));
                mo13790a.f39719d.m13871a(m18881a, m18881a2, min, min2);
                mo13790a.f39717b.mo13768a(false);
            }
            zzbcb m18948a = mo13790a.m18948a();
            if (m18948a == null) {
                return;
            }
            m18880a(m18948a, (Map<String, String>) map);
            return;
        }
        aem mo13763b = abbVar2.mo13763b();
        if (mo13763b != null) {
            if ("timeupdate".equals(str)) {
                String str5 = (String) map.get("currentTime");
                if (str5 == null) {
                    zzd.zzez("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    mo13763b.m18807a(Float.parseFloat(str5));
                    return;
                } catch (NumberFormatException e3) {
                    String valueOf = String.valueOf(str5);
                    zzd.zzez(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                    return;
                }
            } else if (EventConstants.SKIP.equals(str)) {
                synchronized (mo13763b.f40118b) {
                    z = mo13763b.f40122f;
                    i2 = mo13763b.f40119c;
                    mo13763b.f40119c = 3;
                }
                mo13763b.m18805a(i2, 3, z, z);
                return;
            }
        }
        zzbcb m18948a2 = mo13790a.m18948a();
        if (m18948a2 == null) {
            zzbcb.m13870a(abbVar2);
        } else if ("click".equals(str)) {
            Context context2 = abbVar2.getContext();
            int m18881a5 = m18881a(context2, map, "x", 0);
            int m18881a6 = m18881a(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, m18881a5, m18881a6, 0);
            if (m18948a2.f50172b != null) {
                m18948a2.f50172b.dispatchTouchEvent(obtain);
            }
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            String str6 = (String) map.get("time");
            if (str6 == null) {
                zzd.zzez("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                int parseFloat = (int) (Float.parseFloat(str6) * 1000.0f);
                if (m18948a2.f50172b == null) {
                    return;
                }
                m18948a2.f50172b.mo13846a(parseFloat);
            } catch (NumberFormatException e4) {
                String valueOf2 = String.valueOf(str6);
                zzd.zzez(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
            }
        } else if ("hide".equals(str)) {
            m18948a2.setVisibility(4);
        } else if ("load".equals(str)) {
            m18948a2.m13857h();
        } else if ("loadControl".equals(str)) {
            m18880a(m18948a2, (Map<String, String>) map);
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                m18948a2.m13855j();
            } else {
                m18948a2.m13854k();
            }
        } else if ("pause".equals(str)) {
            m18948a2.m13856i();
        } else if ("play".equals(str)) {
            if (m18948a2.f50172b == null) {
                return;
            }
            m18948a2.f50172b.mo13835c();
        } else if ("show".equals(str)) {
            m18948a2.setVisibility(0);
        } else if ("src".equals(str)) {
            String str7 = (String) map.get("src");
            Integer m18879a = m18879a(map, "periodicReportIntervalMs");
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
                    zzd.zzez(valueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(valueOf3) : new String("Malformed demuxed URL list for playback: "));
                    strArr = new String[]{str7};
                }
            }
            if (m18879a != null) {
                abbVar2.mo13789a(m18879a.intValue());
            }
            m18948a2.f50173c = str7;
            m18948a2.f50174d = strArr;
        } else if ("touchMove".equals(str)) {
            Context context3 = abbVar2.getContext();
            int m18881a7 = m18881a(context3, map, "dx", 0);
            int m18881a8 = m18881a(context3, map, "dy", 0);
            float f = m18881a7;
            float f2 = m18881a8;
            if (m18948a2.f50172b != null) {
                m18948a2.f50172b.mo13848a(f, f2);
            }
            if (this.f39910a) {
                return;
            }
            abbVar2.mo13746f();
            this.f39910a = true;
        } else if (!"volume".equals(str)) {
            if ("watermark".equals(str)) {
                m18948a2.m13853l();
                return;
            }
            String valueOf4 = String.valueOf(str);
            zzd.zzez(valueOf4.length() != 0 ? "Unknown video action: ".concat(valueOf4) : new String("Unknown video action: "));
        } else {
            String str9 = (String) map.get("volume");
            if (str9 == null) {
                zzd.zzez("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                m18948a2.setVolume(Float.parseFloat(str9));
            } catch (NumberFormatException e6) {
                String valueOf5 = String.valueOf(str9);
                zzd.zzez(valueOf5.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf5) : new String("Could not parse volume parameter from volume video GMSG: "));
            }
        }
    }
}
