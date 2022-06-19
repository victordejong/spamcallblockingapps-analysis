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
/* loaded from: classes3-dex2jar.jar:com/mopub/network/HeaderUtils.class */
public class HeaderUtils {
    /* renamed from: a */
    public static String m3219a(JSONObject jSONObject, ResponseHeader responseHeader) {
        Integer extractPercentHeader = extractPercentHeader(jSONObject, responseHeader);
        return extractPercentHeader != null ? extractPercentHeader.toString() : null;
    }

    /* renamed from: b */
    public static List<String> m3218b(JSONObject jSONObject, ResponseHeader responseHeader) {
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
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to parse item " + i + " from " + responseHeader.getKey());
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m3217c(String str, boolean z) {
        return str == null ? z : str.equals("1");
    }

    /* renamed from: d */
    public static Integer m3216d(String str) {
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

    /* renamed from: e */
    public static Integer m3215e(String str, int i) {
        Integer m3216d = m3216d(str);
        Integer num = m3216d;
        if (m3216d == null) {
            num = Integer.valueOf(i);
        }
        return num;
    }

    public static boolean extractBooleanHeader(JSONObject jSONObject, ResponseHeader responseHeader, boolean z) {
        return m3217c(extractHeader(jSONObject, responseHeader), z);
    }

    public static String extractHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        return jSONObject == null ? "" : jSONObject.optString(responseHeader.getKey());
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m3216d(extractHeader(jSONObject, responseHeader));
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader, int i) {
        return m3215e(extractHeader(jSONObject, responseHeader), i);
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
        return m3214f(extractHeader(jSONObject, responseHeader));
    }

    /* renamed from: f */
    public static Integer m3214f(String str) {
        Integer m3216d;
        if (str != null && (m3216d = m3216d(str.replace("%", ""))) != null && m3216d.intValue() >= 0 && m3216d.intValue() <= 100) {
            return m3216d;
        }
        return null;
    }
}
