package com.apptentive.android.sdk.util;

import android.util.Base64;
import com.facebook.stetho.common.Utf8Charset;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Jwt.class */
public class Jwt {
    private final JSONObject payload;

    public Jwt(String str, String str2, JSONObject jSONObject) {
        if (str == null) {
            throw new IllegalArgumentException("Alg is null");
        } else if (str2 == null) {
            throw new IllegalArgumentException("Type is null");
        } else if (jSONObject != null) {
            this.payload = jSONObject;
        } else {
            throw new IllegalArgumentException("Payload is null");
        }
    }

    public static Jwt decode(String str) {
        if (str != null) {
            String[] split = str.split("\\.");
            if (split.length == 3) {
                JSONObject decodeBase64Json = decodeBase64Json(split[0]);
                String optString = decodeBase64Json.optString("alg", null);
                String optString2 = decodeBase64Json.optString("typ", null);
                if (optString != null && optString2 != null) {
                    return new Jwt(optString, optString2, decodeBase64Json(split[1]));
                }
                throw new IllegalArgumentException("Invalid jwt header: '" + decodeBase64Json + "'");
            }
            throw new IllegalArgumentException("Invalid JWT data format: '" + str + "'");
        }
        throw new IllegalArgumentException("Data string is null");
    }

    private static JSONObject decodeBase64Json(String str) {
        try {
            return new JSONObject(new String(Base64.decode(str, 0), Utf8Charset.NAME));
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        } catch (JSONException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public JSONObject getPayload() {
        return this.payload;
    }
}
