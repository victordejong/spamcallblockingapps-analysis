package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ady.class */
public final class ady {

    /* renamed from: a */
    private static final Pattern f7976a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* renamed from: b */
    private static final Pattern f7977b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    /* renamed from: a */
    public static String m13558a() {
        String str;
        String str2 = (String) dyx.m8158e().m7876a(edi.f16320F);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", str2);
            jSONObject.put("sdk", "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            StringBuilder sb = new StringBuilder();
            sb.append("<script>");
            sb.append("Object.defineProperty(window,'MRAID_ENV',{get:function(){return ").append(jSONObject.toString()).append("}});");
            sb.append("</script>");
            str = sb.toString();
        } catch (JSONException e) {
            C3556uu.m6746d("Unable to build MRAID_ENV", e);
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    public static String m13557a(String str, String... strArr) {
        if (strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            Matcher matcher = f7976a.matcher(str);
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
                if (!f7977b.matcher(str).find()) {
                    for (String str3 : strArr) {
                        if (str3 != null) {
                            sb.append(str3);
                        }
                    }
                }
                sb.append(str);
            }
            str = sb.toString();
        }
        return str;
    }
}
