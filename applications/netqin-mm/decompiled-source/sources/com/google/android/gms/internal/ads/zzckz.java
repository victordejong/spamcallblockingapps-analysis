package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckz.class */
public final class zzckz {
    /* renamed from: a */
    public static String m14093a(JSONObject jSONObject, String str, String str2) {
        JSONArray optJSONArray;
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23714N0)).booleanValue() || jSONObject == null || (optJSONArray = jSONObject.optJSONArray(str2)) == null) {
            return "";
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("including");
                JSONArray optJSONArray3 = optJSONObject.optJSONArray("excluding");
                if (m14094a(optJSONArray2, str) && !m14094a(optJSONArray3, str)) {
                    return optJSONObject.optString("effective_ad_unit_id", "");
                }
            }
        }
        return "";
    }

    /* renamed from: a */
    public static boolean m14094a(JSONArray jSONArray, String str) {
        if (jSONArray == null || str == null) {
            return false;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
            } catch (PatternSyntaxException e) {
                zzp.m17965g().m16188a(e, "RtbAdapterMap.hasAtleastOneRegexMatch");
            }
            if (Pattern.compile(jSONArray.optString(i)).matcher(str).lookingAt()) {
                return true;
            }
        }
        return false;
    }
}
