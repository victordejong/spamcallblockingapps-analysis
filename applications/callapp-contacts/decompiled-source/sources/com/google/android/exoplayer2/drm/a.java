package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/a.class */
final class a {
    private a() {
    }

    private static String a(String str) {
        return str.replace('-', '+').replace('_', '/');
    }

    public static byte[] a(byte[] bArr) {
        if (af.f22275a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(af.a(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(a(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(a(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return af.c(sb.toString());
        } catch (JSONException e) {
            n.b("ClearKeyUtil", "Failed to adjust response data: " + af.a(bArr), e);
            return bArr;
        }
    }
}
