package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.explorestack.iab.mraid.h;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.o;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acn.class */
public final class acn implements hi<abb> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23106a;

    private static int a(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                ekb.a();
                i2 = yq.a(context, Integer.parseInt(str2));
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

    private static Integer a(Map<String, String> map, String str) {
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

    private static void a(zzbcb zzbcbVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbcbVar.f28608b.b(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzd.zzez(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbcbVar.f28608b.c(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbcbVar.f28608b.d(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbcbVar.f28608b.e(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbcbVar.f28608b.f(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(abb abbVar, Map map) {
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
            } catch (IllegalArgumentException e) {
                zzd.zzez("Invalid color parameter in video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str)) {
                String str3 = (String) map.get("mimeTypes");
                if (str3 == null) {
                    zzd.zzez("No MIME types specified for decoder properties inspection.");
                    zzbcb.a(abbVar2, "missingMimeTypes");
                    return;
                }
                HashMap hashMap = new HashMap();
                for (String str4 : str3.split(",")) {
                    hashMap.put(str4, zzbx.zzer(str4.trim()));
                }
                zzbcb.a(abbVar2, hashMap);
                return;
            }
            aaq a2 = abbVar2.a();
            if (a2 == null) {
                zzd.zzez("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = AppSettingsData.STATUS_NEW.equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = abbVar2.getContext();
                int a3 = a(context, map, "x", 0);
                int a4 = a(context, map, "y", 0);
                int a5 = a(context, map, "w", -1);
                int a6 = a(context, map, h.f19142a, -1);
                int min = Math.min(a5, abbVar2.m() - a3);
                int min2 = Math.min(a6, abbVar2.l() - a4);
                try {
                    i = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException e2) {
                    i = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || a2.a() != null) {
                    o.b("The underlay may only be modified from the UI thread.");
                    if (a2.f23016d != null) {
                        a2.f23016d.a(a3, a4, min, min2);
                        return;
                    }
                    return;
                }
                aay aayVar = new aay((String) map.get("flags"));
                if (a2.f23016d == null) {
                    ay.a(a2.f23014b.j().f24306b, a2.f23014b.c(), "vpr2");
                    a2.f23016d = new zzbcb(a2.f23013a, a2.f23014b, i, parseBoolean, a2.f23014b.j().f24306b, aayVar);
                    a2.f23015c.addView(a2.f23016d, 0, new ViewGroup.LayoutParams(-1, -1));
                    a2.f23016d.a(a3, a4, min, min2);
                    a2.f23014b.a(false);
                }
                zzbcb a7 = a2.a();
                if (a7 != null) {
                    a(a7, (Map<String, String>) map);
                    return;
                }
                return;
            }
            aem b2 = abbVar2.b();
            if (b2 != null) {
                if ("timeupdate".equals(str)) {
                    String str5 = (String) map.get("currentTime");
                    if (str5 == null) {
                        zzd.zzez("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        b2.a(Float.parseFloat(str5));
                        return;
                    } catch (NumberFormatException e3) {
                        String valueOf = String.valueOf(str5);
                        zzd.zzez(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if (EventConstants.SKIP.equals(str)) {
                    synchronized (b2.f23199b) {
                        z = b2.f;
                        i2 = b2.f23200c;
                        b2.f23200c = 3;
                    }
                    b2.a(i2, 3, z, z);
                    return;
                }
            }
            zzbcb a8 = a2.a();
            if (a8 == null) {
                zzbcb.a(abbVar2);
            } else if ("click".equals(str)) {
                Context context2 = abbVar2.getContext();
                int a9 = a(context2, map, "x", 0);
                int a10 = a(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, a9, a10, 0);
                if (a8.f28608b != null) {
                    a8.f28608b.dispatchTouchEvent(obtain);
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
                    if (a8.f28608b != null) {
                        a8.f28608b.a(parseFloat);
                    }
                } catch (NumberFormatException e4) {
                    String valueOf2 = String.valueOf(str6);
                    zzd.zzez(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                a8.setVisibility(4);
            } else if ("load".equals(str)) {
                a8.h();
            } else if ("loadControl".equals(str)) {
                a(a8, (Map<String, String>) map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    a8.j();
                } else {
                    a8.k();
                }
            } else if ("pause".equals(str)) {
                a8.i();
            } else if ("play".equals(str)) {
                if (a8.f28608b != null) {
                    a8.f28608b.c();
                }
            } else if ("show".equals(str)) {
                a8.setVisibility(0);
            } else if ("src".equals(str)) {
                String str7 = (String) map.get("src");
                Integer a11 = a(map, "periodicReportIntervalMs");
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
                if (a11 != null) {
                    abbVar2.a(a11.intValue());
                }
                a8.f28609c = str7;
                a8.f28610d = strArr;
            } else if ("touchMove".equals(str)) {
                Context context3 = abbVar2.getContext();
                int a12 = a(context3, map, "dx", 0);
                int a13 = a(context3, map, "dy", 0);
                float f = a12;
                float f2 = a13;
                if (a8.f28608b != null) {
                    a8.f28608b.a(f, f2);
                }
                if (!this.f23106a) {
                    abbVar2.f();
                    this.f23106a = true;
                }
            } else if ("volume".equals(str)) {
                String str9 = (String) map.get("volume");
                if (str9 == null) {
                    zzd.zzez("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    a8.setVolume(Float.parseFloat(str9));
                } catch (NumberFormatException e6) {
                    String valueOf4 = String.valueOf(str9);
                    zzd.zzez(valueOf4.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf4) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            } else if ("watermark".equals(str)) {
                a8.l();
            } else {
                String valueOf5 = String.valueOf(str);
                zzd.zzez(valueOf5.length() != 0 ? "Unknown video action: ".concat(valueOf5) : new String("Unknown video action: "));
            }
        }
    }
}
