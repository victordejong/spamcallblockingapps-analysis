package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.util.zzcl;
import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import java.util.Map;
import me.zhanghai.android.materialprogressbar.C3681R;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmt.class */
public final class zzcmt implements zzbrt<zzclh> {
    private boolean zza;

    private static int zzb(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                zzbgo.zzb();
                i2 = zzcis.zzs(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(str2.length() + str.length() + 34);
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzciz.zzj(sb.toString());
                i2 = i;
            }
        }
        if (zze.zzc()) {
            StringBuilder sb2 = new StringBuilder(C0033h.m8889h(str, 48, String.valueOf(str2).length()));
            C0082b.m8749m(sb2, "Parse pixels for ", str, ", got string ", str2);
            sb2.append(", int ");
            sb2.append(i2);
            sb2.append(".");
            zze.zza(sb2.toString());
        }
        return i2;
    }

    private static void zzc(zzckv zzckvVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzckvVar.zzz(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzciz.zzj(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzckvVar.zzy(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzckvVar.zzw(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzckvVar.zzx(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzckvVar.zzB(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzclh zzclhVar, Map map) {
        int i;
        int i2;
        int i3;
        String[] split;
        zzclh zzclhVar2 = zzclhVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzciz.zzj("Action missing from video GMSG.");
            return;
        }
        if (zzciz.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(C0033h.m8889h(str, 13, String.valueOf(jSONObject2).length()));
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            zzciz.zze(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzciz.zzj("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                zzclhVar2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException e) {
                zzciz.zzj("Invalid color parameter in background video GMSG.");
            }
        } else if ("playerBackground".equals(str)) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                zzciz.zzj("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                zzclhVar2.zzD(Color.parseColor(str3));
            } catch (IllegalArgumentException e2) {
                zzciz.zzj("Invalid color parameter in playerBackground video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str)) {
                String str4 = (String) map.get("mimeTypes");
                if (str4 == null) {
                    zzciz.zzj("No MIME types specified for decoder properties inspection.");
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "decoderProps");
                    hashMap.put("error", "missingMimeTypes");
                    zzclhVar2.zzd("onVideoEvent", hashMap);
                    return;
                }
                HashMap hashMap2 = new HashMap();
                for (String str5 : str4.split(",")) {
                    hashMap2.put(str5, zzcl.zza(str5.trim()));
                }
                HashMap hashMap3 = new HashMap();
                hashMap3.put("event", "decoderProps");
                hashMap3.put("mimeTypes", hashMap2);
                zzclhVar2.zzd("onVideoEvent", hashMap3);
                return;
            }
            zzckw zzbx = zzclhVar2.zzbx();
            if (zzbx == null) {
                zzciz.zzj("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = zzclhVar2.getContext();
                int zzb = zzb(context, map, "x", 0);
                int zzb2 = zzb(context, map, "y", 0);
                int zzb3 = zzb(context, map, "w", -1);
                zzblb<Boolean> zzblbVar = zzblj.zzcw;
                if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
                    i = zzb3 == -1 ? zzclhVar2.zzj() : Math.min(zzb3, zzclhVar2.zzj());
                } else {
                    if (zze.zzc()) {
                        StringBuilder m8753i = C0082b.m8753i(110, "Calculate width with original width ", zzb3, ", videoHost.getVideoBoundingWidth() ", zzclhVar2.zzj());
                        m8753i.append(", x ");
                        m8753i.append(zzb);
                        m8753i.append(".");
                        zze.zza(m8753i.toString());
                    }
                    i = Math.min(zzb3, zzclhVar2.zzj() - zzb);
                }
                int zzb4 = zzb(context, map, "h", -1);
                if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
                    i2 = zzb4 == -1 ? zzclhVar2.zzi() : Math.min(zzb4, zzclhVar2.zzi());
                } else {
                    if (zze.zzc()) {
                        StringBuilder m8753i2 = C0082b.m8753i(C3681R.styleable.AppCompatTheme_toolbarStyle, "Calculate height with original height ", zzb4, ", videoHost.getVideoBoundingHeight() ", zzclhVar2.zzi());
                        m8753i2.append(", y ");
                        m8753i2.append(zzb2);
                        m8753i2.append(".");
                        zze.zza(m8753i2.toString());
                    }
                    i2 = Math.min(zzb4, zzclhVar2.zzi() - zzb2);
                }
                try {
                    i3 = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException e3) {
                    i3 = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || zzbx.zza() != null) {
                    zzbx.zzb(zzb, zzb2, i, i2);
                    return;
                }
                zzbx.zzc(zzb, zzb2, i, i2, i3, parseBoolean, new zzclg((String) map.get("flags")));
                zzckv zza = zzbx.zza();
                if (zza == null) {
                    return;
                }
                zzc(zza, map);
                return;
            }
            zzcpl zzs = zzclhVar2.zzs();
            if (zzs != null) {
                if ("timeupdate".equals(str)) {
                    String str6 = (String) map.get("currentTime");
                    if (str6 == null) {
                        zzciz.zzj("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        zzs.zzt(Float.parseFloat(str6));
                        return;
                    } catch (NumberFormatException e4) {
                        zzciz.zzj(str6.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if ("skip".equals(str)) {
                    zzs.zzu();
                    return;
                }
            }
            zzckv zza2 = zzbx.zza();
            if (zza2 == null) {
                HashMap hashMap4 = new HashMap();
                hashMap4.put("event", "no_video_view");
                zzclhVar2.zzd("onVideoEvent", hashMap4);
            } else if ("click".equals(str)) {
                Context context2 = zzclhVar2.getContext();
                int zzb5 = zzb(context2, map, "x", 0);
                int zzb6 = zzb(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zzb5, zzb6, 0);
                zza2.zzv(obtain);
                obtain.recycle();
            } else if ("currentTime".equals(str)) {
                String str7 = (String) map.get("time");
                if (str7 == null) {
                    zzciz.zzj("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    zza2.zzu((int) (Float.parseFloat(str7) * 1000.0f));
                } catch (NumberFormatException e5) {
                    zzciz.zzj(str7.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(str7) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                zza2.setVisibility(4);
            } else if ("load".equals(str)) {
                zza2.zzp();
            } else if ("loadControl".equals(str)) {
                zzc(zza2, map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    zza2.zzq();
                } else {
                    zza2.zzG();
                }
            } else if ("pause".equals(str)) {
                zza2.zzs();
            } else if ("play".equals(str)) {
                zza2.zzt();
            } else if ("show".equals(str)) {
                zza2.setVisibility(0);
            } else if ("src".equals(str)) {
                String str8 = (String) map.get("src");
                Integer num = null;
                if (map.containsKey("periodicReportIntervalMs")) {
                    try {
                        num = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                    } catch (NumberFormatException e6) {
                        zzciz.zzj("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                    }
                }
                String[] strArr = {str8};
                String str9 = (String) map.get("demuxed");
                if (str9 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str9);
                        strArr = new String[jSONArray.length()];
                        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                            strArr[i4] = jSONArray.getString(i4);
                        }
                    } catch (JSONException e7) {
                        zzciz.zzj(str9.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(str9) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str8};
                    }
                }
                if (num != null) {
                    zzclhVar2.zzC(num.intValue());
                }
                zza2.zzC(str8, strArr);
            } else if ("touchMove".equals(str)) {
                Context context3 = zzclhVar2.getContext();
                zza2.zzF(zzb(context3, map, "dx", 0), zzb(context3, map, "dy", 0));
                if (this.zza) {
                    return;
                }
                zzclhVar2.zzw();
                this.zza = true;
            } else if ("volume".equals(str)) {
                String str10 = (String) map.get("volume");
                if (str10 == null) {
                    zzciz.zzj("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    zza2.zzE(Float.parseFloat(str10));
                } catch (NumberFormatException e8) {
                    zzciz.zzj(str10.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(str10) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            } else if ("watermark".equals(str)) {
                zza2.zzm();
            } else {
                zzciz.zzj(str.length() != 0 ? "Unknown video action: ".concat(str) : new String("Unknown video action: "));
            }
        }
    }
}
