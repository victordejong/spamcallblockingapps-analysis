package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfk.class */
public final class zzbfk {
    private static final Pattern zzeul = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);
    private static final Pattern zzeum = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    public static String zzaek() {
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcns);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, str);
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            return "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e) {
            zzd.zzd("Unable to build MRAID_ENV", e);
            return null;
        }
    }

    public static String zzf(String str, String... strArr) {
        if (strArr.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = zzeul.matcher(str);
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            for (String str2 : strArr) {
                if (str2 != null) {
                    sb.append(str2);
                }
            }
            sb.append(str.substring(end));
        } else {
            if (!zzeum.matcher(str).find()) {
                for (String str3 : strArr) {
                    if (str3 != null) {
                        sb.append(str3);
                    }
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
