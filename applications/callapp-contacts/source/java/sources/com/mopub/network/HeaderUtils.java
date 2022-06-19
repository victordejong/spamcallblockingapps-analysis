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
/* loaded from: classes4-dex2jar.jar:com/mopub/network/HeaderUtils.class */
public class HeaderUtils {
    /* renamed from: a */
    private static Integer m6054a(String str) {
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

    /* renamed from: a */
    public static List<String> m6053a(JSONObject jSONObject, ResponseHeader responseHeader) {
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

    /* renamed from: b */
    public static String m6052b(JSONObject jSONObject, ResponseHeader responseHeader) {
        Integer extractPercentHeader = extractPercentHeader(jSONObject, responseHeader);
        if (extractPercentHeader != null) {
            return extractPercentHeader.toString();
        }
        return null;
    }

    public static boolean extractBooleanHeader(JSONObject jSONObject, ResponseHeader responseHeader, boolean z) {
        String extractHeader = extractHeader(jSONObject, responseHeader);
        return extractHeader == null ? z : extractHeader.equals("1");
    }

    public static String extractHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        return jSONObject == null ? "" : jSONObject.optString(responseHeader.getKey());
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m6054a(extractHeader(jSONObject, responseHeader));
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader, int i) {
        Integer m6054a = m6054a(extractHeader(jSONObject, responseHeader));
        Integer num = m6054a;
        if (m6054a == null) {
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
        Integer m6054a;
        String extractHeader = extractHeader(jSONObject, responseHeader);
        if (extractHeader != null && (m6054a = m6054a(extractHeader.replace("%", ""))) != null && m6054a.intValue() >= 0 && m6054a.intValue() <= 100) {
            return m6054a;
        }
        return null;
    }
}
