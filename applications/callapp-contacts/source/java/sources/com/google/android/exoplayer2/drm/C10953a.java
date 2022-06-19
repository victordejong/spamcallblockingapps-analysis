package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.exoplayer2.drm.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/a.class */
final class C10953a {
    private C10953a() {
    }

    /* renamed from: a */
    private static String m21866a(String str) {
        return str.replace('-', '+').replace('_', '/');
    }

    /* renamed from: a */
    public static byte[] m21865a(byte[] bArr) {
        if (C11599af.f38648a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(C11599af.m19961a(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(m21866a(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(m21866a(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return C11599af.m19931c(sb.toString());
        } catch (JSONException e) {
            C11617n.m19857b("ClearKeyUtil", "Failed to adjust response data: " + C11599af.m19961a(bArr), e);
            return bArr;
        }
    }
}
