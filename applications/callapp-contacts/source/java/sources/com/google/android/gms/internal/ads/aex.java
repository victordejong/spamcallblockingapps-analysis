package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aex.class */
public final class aex {

    /* renamed from: a */
    private static final Pattern f40141a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* renamed from: b */
    private static final Pattern f40142b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    /* renamed from: a */
    public static String m18800a() {
        String str = (String) ekb.m14831e().m18571a(C12187aq.f42619I);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", str);
            jSONObject.put("sdk", "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            return "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e) {
            zzd.zzd("Unable to build MRAID_ENV", e);
            return null;
        }
    }

    /* renamed from: a */
    public static String m18799a(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f40141a.matcher(str);
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            for (int i = 0; i <= 0; i++) {
                String str2 = strArr[0];
                if (str2 != null) {
                    sb.append(str2);
                }
            }
            sb.append(str.substring(end));
        } else {
            if (!f40142b.matcher(str).find()) {
                for (int i2 = 0; i2 <= 0; i2++) {
                    String str3 = strArr[0];
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
