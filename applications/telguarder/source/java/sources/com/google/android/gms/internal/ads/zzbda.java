package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbda.class */
public final class zzbda implements zzaif<zzbbo> {
    private boolean zzepk;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                zzwr.zzqn();
                i2 = zzaza.zze(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzd.zzex(sb.toString());
                i2 = i;
            }
        }
        return i2;
    }

    private static Integer zza(Map<String, String> map, String str) {
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
            zzd.zzex(sb.toString());
            return null;
        }
    }

    private static void zza(zzbax zzbaxVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbaxVar.zzdk(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzd.zzex(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbaxVar.zzdl(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbaxVar.zzdm(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbaxVar.zzdn(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbaxVar.zzdo(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbbo zzbboVar, Map map) {
        int i;
        String[] split;
        zzbbo zzbboVar2 = zzbboVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzd.zzex("Action missing from video GMSG.");
            return;
        }
        if (zzd.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            zzd.zzdy(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzd.zzex("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzbboVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException e) {
                zzd.zzex("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                zzd.zzex("No MIME types specified for decoder properties inspection.");
                zzbax.zza(zzbboVar2, "missingMimeTypes");
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str4 : str3.split(",")) {
                hashMap.put(str4, zzbx.zzep(str4.trim()));
            }
            zzbax.zza(zzbboVar2, hashMap);
            return;
        }
        zzbbd zzabb = zzbboVar2.zzabb();
        if (zzabb == null) {
            zzd.zzex("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = AppSettingsData.STATUS_NEW.equals(str);
        boolean equals2 = "position".equals(str);
        if (equals || equals2) {
            Context context = zzbboVar2.getContext();
            int zza = zza(context, map, "x", 0);
            int zza2 = zza(context, map, "y", 0);
            int zza3 = zza(context, map, POBConstants.KEY_W, -1);
            int zza4 = zza(context, map, POBConstants.KEY_H, -1);
            int min = Math.min(zza3, zzbboVar2.zzabl() - zza);
            int min2 = Math.min(zza4, zzbboVar2.zzabk() - zza2);
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e2) {
                i = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (!equals || zzabb.zzaav() != null) {
                zzabb.zze(zza, zza2, min, min2);
                return;
            }
            zzabb.zza(zza, zza2, min, min2, i, parseBoolean, new zzbbl((String) map.get("flags")));
            zzbax zzaav = zzabb.zzaav();
            if (zzaav == null) {
                return;
            }
            zza(zzaav, (Map<String, String>) map);
            return;
        }
        zzbev zzabc = zzbboVar2.zzabc();
        if (zzabc != null) {
            if ("timeupdate".equals(str)) {
                String str5 = (String) map.get("currentTime");
                if (str5 == null) {
                    zzd.zzex("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzabc.zze(Float.parseFloat(str5));
                    return;
                } catch (NumberFormatException e3) {
                    String valueOf = String.valueOf(str5);
                    zzd.zzex(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                    return;
                }
            } else if ("skip".equals(str)) {
                zzabc.zzaej();
                return;
            }
        }
        zzbax zzaav2 = zzabb.zzaav();
        if (zzaav2 == null) {
            zzbax.zza(zzbboVar2);
        } else if ("click".equals(str)) {
            Context context2 = zzbboVar2.getContext();
            int zza5 = zza(context2, map, "x", 0);
            int zza6 = zza(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zza5, zza6, 0);
            zzaav2.zze(obtain);
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            String str6 = (String) map.get("time");
            if (str6 == null) {
                zzd.zzex("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzaav2.seekTo((int) (Float.parseFloat(str6) * 1000.0f));
            } catch (NumberFormatException e4) {
                String valueOf2 = String.valueOf(str6);
                zzd.zzex(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
            }
        } else if (MessengerShareContentUtility.SHARE_BUTTON_HIDE.equals(str)) {
            zzaav2.setVisibility(4);
        } else if ("load".equals(str)) {
            zzaav2.zzhy();
        } else if ("loadControl".equals(str)) {
            zza(zzaav2, (Map<String, String>) map);
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzaav2.zzaap();
            } else {
                zzaav2.zzaaq();
            }
        } else if ("pause".equals(str)) {
            zzaav2.pause();
        } else if ("play".equals(str)) {
            zzaav2.play();
        } else if ("show".equals(str)) {
            zzaav2.setVisibility(0);
        } else if ("src".equals(str)) {
            String str7 = (String) map.get("src");
            Integer zza7 = zza(map, "periodicReportIntervalMs");
            String[] strArr = {str7};
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
                    zzd.zzex(valueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(valueOf3) : new String("Malformed demuxed URL list for playback: "));
                    strArr = new String[]{str7};
                }
            }
            if (zza7 != null) {
                zzbboVar2.zzdp(zza7.intValue());
            }
            zzaav2.zzc(str7, strArr);
        } else if ("touchMove".equals(str)) {
            Context context3 = zzbboVar2.getContext();
            zzaav2.zza(zza(context3, map, "dx", 0), zza(context3, map, "dy", 0));
            if (this.zzepk) {
                return;
            }
            zzbboVar2.zzwc();
            this.zzepk = true;
        } else if (!"volume".equals(str)) {
            if ("watermark".equals(str)) {
                zzaav2.zzaar();
                return;
            }
            String valueOf4 = String.valueOf(str);
            zzd.zzex(valueOf4.length() != 0 ? "Unknown video action: ".concat(valueOf4) : new String("Unknown video action: "));
        } else {
            String str9 = (String) map.get("volume");
            if (str9 == null) {
                zzd.zzex("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzaav2.setVolume(Float.parseFloat(str9));
            } catch (NumberFormatException e6) {
                String valueOf5 = String.valueOf(str9);
                zzd.zzex(valueOf5.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf5) : new String("Could not parse volume parameter from volume video GMSG: "));
            }
        }
    }
}
