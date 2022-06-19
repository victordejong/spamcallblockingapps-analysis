package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.util.zzck;
import com.google.android.gms.ads.internal.util.zze;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcko.class */
public final class zzcko implements zzbpr<zzcjb> {
    private boolean zza;

    private static int zzb(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                zzber.zza();
                i2 = zzcgm.zzs(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(str2.length() + str.length() + 34);
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzcgt.zzi(sb.toString());
                i2 = i;
            }
        }
        if (zze.zzc()) {
            StringBuilder sb2 = new StringBuilder(str.length() + 48 + String.valueOf(str2).length());
            C22128a.m8666T0(sb2, "Parse pixels for ", str, ", got string ", str2);
            sb2.append(", int ");
            sb2.append(i2);
            sb2.append(StringConstant.DOT);
            zze.zza(sb2.toString());
        }
        return i2;
    }

    private static void zzc(zzcip zzcipVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcipVar.zzw(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzcgt.zzi(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzcipVar.zzx(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcipVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcipVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcipVar.zzA(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcjb zzcjbVar, Map map) {
        int i;
        int i2;
        int i3;
        String[] split;
        zzcjb zzcjbVar2 = zzcjbVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzcgt.zzi("Action missing from video GMSG.");
            return;
        }
        if (zzcgt.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(str.length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(StringConstant.SPACE);
            sb.append(jSONObject2);
            zzcgt.zzd(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get(RemoteMessageConst.Notification.COLOR);
            if (TextUtils.isEmpty(str2)) {
                zzcgt.zzi("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                zzcjbVar2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException e) {
                zzcgt.zzi("Invalid color parameter in background video GMSG.");
            }
        } else if ("playerBackground".equals(str)) {
            String str3 = (String) map.get(RemoteMessageConst.Notification.COLOR);
            if (TextUtils.isEmpty(str3)) {
                zzcgt.zzi("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                zzcjbVar2.zzw(Color.parseColor(str3));
            } catch (IllegalArgumentException e2) {
                zzcgt.zzi("Invalid color parameter in playerBackground video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str)) {
                String str4 = (String) map.get("mimeTypes");
                if (str4 == null) {
                    zzcgt.zzi("No MIME types specified for decoder properties inspection.");
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "decoderProps");
                    hashMap.put("error", "missingMimeTypes");
                    zzcjbVar2.zze("onVideoEvent", hashMap);
                    return;
                }
                HashMap hashMap2 = new HashMap();
                for (String str5 : str4.split(",")) {
                    hashMap2.put(str5, zzck.zza(str5.trim()));
                }
                HashMap hashMap3 = new HashMap();
                hashMap3.put("event", "decoderProps");
                hashMap3.put("mimeTypes", hashMap2);
                zzcjbVar2.zze("onVideoEvent", hashMap3);
                return;
            }
            zzciq zzf = zzcjbVar2.zzf();
            if (zzf == null) {
                zzcgt.zzi("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str);
            boolean equals2 = "position".equals(str);
            if (equals || equals2) {
                Context context = zzcjbVar2.getContext();
                int zzb = zzb(context, map, "x", 0);
                int zzb2 = zzb(context, map, "y", 0);
                int zzb3 = zzb(context, map, "w", -1);
                zzbjd<Boolean> zzbjdVar = zzbjl.zzcp;
                if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
                    i = zzb3 == -1 ? zzcjbVar2.zzz() : Math.min(zzb3, zzcjbVar2.zzz());
                } else {
                    if (zze.zzc()) {
                        StringBuilder m8546z = C22128a.m8546z(110, "Calculate width with original width ", zzb3, ", videoHost.getVideoBoundingWidth() ", zzcjbVar2.zzz());
                        m8546z.append(", x ");
                        m8546z.append(zzb);
                        m8546z.append(StringConstant.DOT);
                        zze.zza(m8546z.toString());
                    }
                    i = Math.min(zzb3, zzcjbVar2.zzz() - zzb);
                }
                int zzb4 = zzb(context, map, "h", -1);
                if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
                    i2 = zzb4 == -1 ? zzcjbVar2.zzy() : Math.min(zzb4, zzcjbVar2.zzy());
                } else {
                    if (zze.zzc()) {
                        StringBuilder m8546z2 = C22128a.m8546z(113, "Calculate height with original height ", zzb4, ", videoHost.getVideoBoundingHeight() ", zzcjbVar2.zzy());
                        m8546z2.append(", y ");
                        m8546z2.append(zzb2);
                        m8546z2.append(StringConstant.DOT);
                        zze.zza(m8546z2.toString());
                    }
                    i2 = Math.min(zzb4, zzcjbVar2.zzy() - zzb2);
                }
                try {
                    i3 = Integer.parseInt((String) map.get("player"));
                } catch (NumberFormatException e3) {
                    i3 = 0;
                }
                boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                if (!equals || zzf.zzc() != null) {
                    zzf.zza(zzb, zzb2, i, i2);
                    return;
                }
                zzf.zzb(zzb, zzb2, i, i2, i3, parseBoolean, new zzcja((String) map.get("flags")));
                zzcip zzc = zzf.zzc();
                if (zzc == null) {
                    return;
                }
                zzc(zzc, map);
                return;
            }
            zzcnh zzh = zzcjbVar2.zzh();
            if (zzh != null) {
                if ("timeupdate".equals(str)) {
                    String str6 = (String) map.get("currentTime");
                    if (str6 == null) {
                        zzcgt.zzi("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        zzh.zzd(Float.parseFloat(str6));
                        return;
                    } catch (NumberFormatException e4) {
                        zzcgt.zzi(str6.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                } else if ("skip".equals(str)) {
                    zzh.zzr();
                    return;
                }
            }
            zzcip zzc2 = zzf.zzc();
            if (zzc2 == null) {
                HashMap hashMap4 = new HashMap();
                hashMap4.put("event", "no_video_view");
                zzcjbVar2.zze("onVideoEvent", hashMap4);
            } else if ("click".equals(str)) {
                Context context2 = zzcjbVar2.getContext();
                int zzb5 = zzb(context2, map, "x", 0);
                int zzb6 = zzb(context2, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zzb5, zzb6, 0);
                zzc2.zzB(obtain);
                obtain.recycle();
            } else if ("currentTime".equals(str)) {
                String str7 = (String) map.get("time");
                if (str7 == null) {
                    zzcgt.zzi("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    zzc2.zzs((int) (Float.parseFloat(str7) * 1000.0f));
                } catch (NumberFormatException e5) {
                    zzcgt.zzi(str7.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(str7) : new String("Could not parse time parameter from currentTime video GMSG: "));
                }
            } else if ("hide".equals(str)) {
                zzc2.setVisibility(4);
            } else if ("load".equals(str)) {
                zzc2.zzp();
            } else if ("loadControl".equals(str)) {
                zzc(zzc2, map);
            } else if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    zzc2.zzt();
                } else {
                    zzc2.zzu();
                }
            } else if ("pause".equals(str)) {
                zzc2.zzq();
            } else if ("play".equals(str)) {
                zzc2.zzr();
            } else if (AnalyticsConstants.SHOW.equals(str)) {
                zzc2.setVisibility(0);
            } else if ("src".equals(str)) {
                String str8 = (String) map.get("src");
                Integer num = null;
                if (map.containsKey("periodicReportIntervalMs")) {
                    try {
                        num = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                    } catch (NumberFormatException e6) {
                        String str9 = (String) map.get("periodicReportIntervalMs");
                        String.valueOf(str9).length();
                        zzcgt.zzi("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf(str9)));
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
                        zzcgt.zzi(str10.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(str10) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str8};
                    }
                }
                if (num != null) {
                    zzcjbVar2.zzo(num.intValue());
                }
                zzc2.zzn(str8, strArr);
            } else if ("touchMove".equals(str)) {
                Context context3 = zzcjbVar2.getContext();
                zzc2.zzo(zzb(context3, map, "dx", 0), zzb(context3, map, "dy", 0));
                if (this.zza) {
                    return;
                }
                zzcjbVar2.zzl();
                this.zza = true;
            } else if ("volume".equals(str)) {
                String str11 = (String) map.get("volume");
                if (str11 == null) {
                    zzcgt.zzi("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    zzc2.zzv(Float.parseFloat(str11));
                } catch (NumberFormatException e8) {
                    zzcgt.zzi(str11.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(str11) : new String("Could not parse volume parameter from volume video GMSG: "));
                }
            } else if ("watermark".equals(str)) {
                zzc2.zzC();
            } else {
                zzcgt.zzi(str.length() != 0 ? "Unknown video action: ".concat(str) : new String("Unknown video action: "));
            }
        }
    }
}
