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
    private static Integer a(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Exception e) {
            NumberFormat instance = NumberFormat.getInstance(Locale.US);
            instance.setParseIntegerOnly(true);
            try {
                return Integer.valueOf(instance.parse(str.trim()).intValue());
            } catch (Exception e2) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> a(JSONObject jSONObject, ResponseHeader responseHeader) {
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
                MoPubLog.log(sdkLogEvent, "Unable to parse item " + i + " from " + responseHeader.getKey());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(JSONObject jSONObject, ResponseHeader responseHeader) {
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
        return a(extractHeader(jSONObject, responseHeader));
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader, int i) {
        Integer a2 = a(extractHeader(jSONObject, responseHeader));
        Integer num = a2;
        if (a2 == null) {
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
        Integer a2;
        String extractHeader = extractHeader(jSONObject, responseHeader);
        if (extractHeader != null && (a2 = a(extractHeader.replace("%", ""))) != null && a2.intValue() >= 0 && a2.intValue() <= 100) {
            return a2;
        }
        return null;
    }
}
