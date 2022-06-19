package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfm.class */
public final class bfm {
    /* renamed from: a */
    public static String m11997a(JSONObject jSONObject, String str, String str2) {
        String str3;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16352aK)).booleanValue()) {
            if (jSONObject != null) {
                JSONArray optJSONArray = jSONObject.optJSONArray(str2);
                if (optJSONArray != null) {
                    int i = 0;
                    while (true) {
                        if (i >= optJSONArray.length()) {
                            str3 = "";
                            break;
                        }
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray("including");
                            JSONArray optJSONArray3 = optJSONObject.optJSONArray("excluding");
                            if (m11998a(optJSONArray2, str) && !m11998a(optJSONArray3, str)) {
                                str3 = optJSONObject.optString("effective_ad_unit_id", "");
                                break;
                            }
                        }
                        i++;
                    }
                } else {
                    str3 = "";
                }
            } else {
                str3 = "";
            }
        } else {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: a */
    private static boolean m11998a(JSONArray jSONArray, String str) {
        boolean z = false;
        if (jSONArray != null) {
            if (str != null) {
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= jSONArray.length()) {
                        break;
                    }
                    try {
                    } catch (PatternSyntaxException e) {
                        C2341q.m14740g().m7095a(e, "RtbAdapterMap.hasAtleastOneRegexMatch");
                    }
                    if (Pattern.compile(jSONArray.optString(i)).matcher(str).lookingAt()) {
                        z = true;
                        break;
                    }
                    i++;
                }
            } else {
                z = false;
            }
        }
        return z;
    }
}
