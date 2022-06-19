package com.huawei.hms.push.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/utils/JsonUtil.class */
public class JsonUtil {
    /* renamed from: a */
    public static void m37240a(JSONObject jSONObject, String str, Object obj, Bundle bundle) {
        if (obj == null) {
            HMSLog.m37192w("JsonUtil", "transfer jsonObject to bundle failed, defaultValue is null.");
        } else if (obj instanceof String) {
            String str2 = (String) obj;
            if (TextUtils.isEmpty(str2)) {
                str2 = null;
            }
            bundle.putString(str, getString(jSONObject, str, str2));
        } else if (obj instanceof Integer) {
            bundle.putInt(str, getInt(jSONObject, str, ((Integer) obj).intValue()));
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (iArr.length == 0) {
                iArr = null;
            }
            bundle.putIntArray(str, getIntArray(jSONObject, str, iArr));
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (jArr.length == 0) {
                jArr = null;
            }
            bundle.putLongArray(str, getLongArray(jSONObject, str, jArr));
        } else if (!(obj instanceof String[])) {
            HMSLog.m37192w("JsonUtil", "transfer jsonObject to bundle failed, invalid data type.");
        } else {
            String[] strArr = (String[]) obj;
            if (strArr.length == 0) {
                strArr = null;
            }
            bundle.putStringArray(str, getStringArray(jSONObject, str, strArr));
        }
    }

    public static int getInt(JSONObject jSONObject, String str, int i) {
        int i2 = i;
        if (jSONObject != null) {
            i2 = i;
            try {
                if (jSONObject.has(str)) {
                    i2 = jSONObject.getInt(str);
                }
            } catch (JSONException e) {
                HMSLog.m37192w("JsonUtil", "JSONException: get " + str + " error.");
                i2 = i;
            }
        }
        return i2;
    }

    public static int[] getIntArray(JSONObject jSONObject, String str, int[] iArr) {
        int[] iArr2 = null;
        if (jSONObject != null) {
            int[] iArr3 = null;
            iArr2 = null;
            try {
                if (jSONObject.has(str)) {
                    JSONArray jSONArray = jSONObject.getJSONArray(str);
                    int[] iArr4 = new int[jSONArray.length()];
                    int i = 0;
                    while (true) {
                        iArr3 = iArr4;
                        iArr2 = iArr4;
                        if (i >= jSONArray.length()) {
                            break;
                        }
                        iArr4[i] = ((Integer) jSONArray.get(i)).intValue();
                        i++;
                    }
                }
            } catch (JSONException e) {
                HMSLog.m37192w("JsonUtil", "JSONException: get " + str + " error.");
                iArr2 = iArr3;
            }
        }
        if (iArr2 != null) {
            iArr = iArr2;
        }
        return iArr;
    }

    public static JSONArray getIntJsonArray(int[] iArr) {
        JSONArray jSONArray = new JSONArray();
        if (iArr != null && iArr.length != 0) {
            for (int i : iArr) {
                jSONArray.put(i);
            }
        }
        return jSONArray;
    }

    public static long[] getLongArray(JSONObject jSONObject, String str, long[] jArr) {
        long[] jArr2 = null;
        if (jSONObject != null) {
            long[] jArr3 = null;
            jArr2 = null;
            try {
                if (jSONObject.has(str)) {
                    JSONArray jSONArray = jSONObject.getJSONArray(str);
                    long[] jArr4 = new long[jSONArray.length()];
                    int i = 0;
                    while (true) {
                        jArr3 = jArr4;
                        jArr2 = jArr4;
                        if (i >= jSONArray.length()) {
                            break;
                        }
                        jArr4[i] = jSONArray.getLong(i);
                        i++;
                    }
                }
            } catch (JSONException e) {
                HMSLog.m37192w("JsonUtil", "JSONException: get " + str + " error.");
                jArr2 = jArr3;
            }
        }
        if (jArr2 != null) {
            jArr = jArr2;
        }
        return jArr;
    }

    public static JSONArray getLongJsonArray(long[] jArr) {
        JSONArray jSONArray = new JSONArray();
        if (jArr != null && jArr.length != 0) {
            for (long j : jArr) {
                jSONArray.put(j);
            }
        }
        return jSONArray;
    }

    public static String getString(JSONObject jSONObject, String str, String str2) {
        String str3 = str2;
        if (jSONObject != null) {
            str3 = str2;
            try {
                if (jSONObject.has(str)) {
                    str3 = str2;
                    if (jSONObject.get(str) != null) {
                        str3 = String.valueOf(jSONObject.get(str));
                    }
                }
            } catch (JSONException e) {
                HMSLog.m37192w("JsonUtil", "JSONException: get " + str + " error.");
                str3 = str2;
            }
        }
        return str3;
    }

    public static String[] getStringArray(JSONObject jSONObject, String str, String[] strArr) {
        String[] strArr2 = null;
        if (jSONObject != null) {
            String[] strArr3 = null;
            strArr2 = null;
            try {
                if (jSONObject.has(str)) {
                    JSONArray jSONArray = jSONObject.getJSONArray(str);
                    String[] strArr4 = new String[jSONArray.length()];
                    int i = 0;
                    while (true) {
                        strArr3 = strArr4;
                        strArr2 = strArr4;
                        if (i >= jSONArray.length()) {
                            break;
                        }
                        strArr4[i] = (String) jSONArray.get(i);
                        i++;
                    }
                }
            } catch (JSONException e) {
                HMSLog.m37192w("JsonUtil", "JSONException: get " + str + " error.");
                strArr2 = strArr3;
            }
        }
        return strArr2;
    }

    public static JSONArray getStringJsonArray(String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        if (strArr != null && strArr.length != 0) {
            for (String str : strArr) {
                jSONArray.put(str);
            }
        }
        return jSONArray;
    }

    public static void transferJsonObjectToBundle(JSONObject jSONObject, Bundle bundle, HashMap<String, Object> hashMap) {
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            m37240a(jSONObject, entry.getKey(), entry.getValue(), bundle);
        }
    }
}
