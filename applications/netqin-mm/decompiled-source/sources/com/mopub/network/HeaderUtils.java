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
/* loaded from: classes2-dex2jar.jar:com/mopub/network/HeaderUtils.class */
public class HeaderUtils {
    /* renamed from: a */
    public static Integer m3800a(String str) {
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

    /* renamed from: a */
    public static Integer m3799a(String str, int i) {
        Integer a = m3800a(str);
        Integer num = a;
        if (a == null) {
            num = Integer.valueOf(i);
        }
        return num;
    }

    /* renamed from: a */
    public static String m3797a(JSONObject jSONObject, ResponseHeader responseHeader) {
        Integer extractPercentHeader = extractPercentHeader(jSONObject, responseHeader);
        return extractPercentHeader != null ? extractPercentHeader.toString() : null;
    }

    /* renamed from: a */
    public static boolean m3798a(String str, boolean z) {
        return str == null ? z : str.equals("1");
    }

    /* renamed from: b */
    public static Integer m3796b(String str) {
        Integer a;
        if (str != null && (a = m3800a(str.replace("%", ""))) != null && a.intValue() >= 0 && a.intValue() <= 100) {
            return a;
        }
        return null;
    }

    /* renamed from: b */
    public static List<String> m3795b(JSONObject jSONObject, ResponseHeader responseHeader) {
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

    public static boolean extractBooleanHeader(JSONObject jSONObject, ResponseHeader responseHeader, boolean z) {
        return m3798a(extractHeader(jSONObject, responseHeader), z);
    }

    public static String extractHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        return jSONObject == null ? "" : jSONObject.optString(responseHeader.getKey());
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m3800a(extractHeader(jSONObject, responseHeader));
    }

    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader, int i) {
        return m3799a(extractHeader(jSONObject, responseHeader), i);
    }

    public static JSONObject extractJsonObjectHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONObject(responseHeader.getKey());
    }

    public static Integer extractPercentHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m3796b(extractHeader(jSONObject, responseHeader));
    }
}
