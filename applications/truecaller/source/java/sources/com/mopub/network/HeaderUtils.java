package com.mopub.network;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ResponseHeader;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/HeaderUtils.class */
public class HeaderUtils {
    /* renamed from: a */
    public static List<String> m36175a(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(jSONObject);
        Preconditions.checkNotNull(responseHeader);
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray(responseHeader.getKey());
        if (optJSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            try {
                arrayList.add(optJSONArray.getString(i));
            } catch (JSONException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                StringBuilder m8720E = C22128a.m8720E("Unable to parse item ", i, " from ");
                m8720E.append(responseHeader.getKey());
                MoPubLog.log(sdkLogEvent, m8720E.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static Integer m36174b(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Exception e) {
            NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
            numberFormat.setParseIntegerOnly(true);
            try {
                return Integer.valueOf(numberFormat.parse(str.trim()).intValue());
            } catch (Exception e2) {
                return null;
            }
        }
    }

    public static boolean extractBooleanHeader(JSONObject jSONObject, ResponseHeader responseHeader, boolean z) {
        String extractHeader = extractHeader(jSONObject, responseHeader);
        if (extractHeader != null) {
            z = extractHeader.equals("1");
        }
        return z;
    }

    public static String extractHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        return jSONObject == null ? "" : jSONObject.optString(responseHeader.getKey());
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m36174b(extractHeader(jSONObject, responseHeader));
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader, int i) {
        Integer m36174b = m36174b(extractHeader(jSONObject, responseHeader));
        Integer num = m36174b;
        if (m36174b == null) {
            num = Integer.valueOf(i);
        }
        return num;
    }

    public static JSONArray extractJsonArrayHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONArray(responseHeader.getKey());
    }

    public static JSONObject extractJsonObjectHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONObject(responseHeader.getKey());
    }

    public static Integer extractPercentHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Integer num;
        String extractHeader = extractHeader(jSONObject, responseHeader);
        if (extractHeader == null) {
            num = null;
        } else {
            Integer m36174b = m36174b(extractHeader.replace("%", ""));
            num = null;
            if (m36174b != null) {
                num = null;
                if (m36174b.intValue() >= 0) {
                    num = m36174b.intValue() > 100 ? null : m36174b;
                }
            }
        }
        return num;
    }
}
