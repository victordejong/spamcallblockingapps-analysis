package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
public final class JsonUtils {
    private static final Pattern zza = Pattern.compile("\\\\.");
    private static final Pattern zzb = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    private JsonUtils() {
    }

    public static boolean areJsonValuesEquivalent(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (!(obj instanceof JSONObject) || !(obj2 instanceof JSONObject)) {
            if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
                return obj.equals(obj2);
            }
            JSONArray jSONArray = (JSONArray) obj;
            JSONArray jSONArray2 = (JSONArray) obj2;
            if (jSONArray.length() != jSONArray2.length()) {
                return false;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    if (!areJsonValuesEquivalent(jSONArray.get(i), jSONArray2.get(i))) {
                        return false;
                    }
                } catch (JSONException e) {
                    return false;
                }
            }
            return true;
        }
        JSONObject jSONObject = (JSONObject) obj;
        JSONObject jSONObject2 = (JSONObject) obj2;
        if (jSONObject.length() != jSONObject2.length()) {
            return false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!jSONObject2.has(next)) {
                return false;
            }
            try {
                Preconditions.checkNotNull(next);
                if (!areJsonValuesEquivalent(jSONObject.get(next), jSONObject2.get(next))) {
                    return false;
                }
            } catch (JSONException e2) {
                return false;
            }
        }
        return true;
    }

    public static String escapeString(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zzb.matcher(str);
            StringBuffer stringBuffer = null;
            while (true) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (matcher.find()) {
                    StringBuffer stringBuffer3 = stringBuffer2;
                    if (stringBuffer2 == null) {
                        stringBuffer3 = new StringBuffer();
                    }
                    char charAt = matcher.group().charAt(0);
                    if (charAt == '\f') {
                        matcher.appendReplacement(stringBuffer3, "\\\\f");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '\r') {
                        matcher.appendReplacement(stringBuffer3, "\\\\r");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '\"') {
                        matcher.appendReplacement(stringBuffer3, "\\\\\\\"");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '/') {
                        matcher.appendReplacement(stringBuffer3, "\\\\/");
                        stringBuffer = stringBuffer3;
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case '\b':
                                matcher.appendReplacement(stringBuffer3, "\\\\b");
                                stringBuffer = stringBuffer3;
                                continue;
                            case '\t':
                                matcher.appendReplacement(stringBuffer3, "\\\\t");
                                stringBuffer = stringBuffer3;
                                continue;
                            case '\n':
                                matcher.appendReplacement(stringBuffer3, "\\\\n");
                                stringBuffer = stringBuffer3;
                                continue;
                            default:
                                stringBuffer = stringBuffer3;
                                continue;
                        }
                    } else {
                        matcher.appendReplacement(stringBuffer3, "\\\\\\\\");
                        stringBuffer = stringBuffer3;
                    }
                } else if (stringBuffer2 == null) {
                    return str;
                } else {
                    matcher.appendTail(stringBuffer2);
                    str2 = stringBuffer2.toString();
                }
            }
        }
        return str2;
    }

    public static String unescapeString(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            String zza2 = zzc.zza(str);
            Matcher matcher = zza.matcher(zza2);
            StringBuffer stringBuffer = null;
            while (true) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (matcher.find()) {
                    StringBuffer stringBuffer3 = stringBuffer2;
                    if (stringBuffer2 == null) {
                        stringBuffer3 = new StringBuffer();
                    }
                    char charAt = matcher.group().charAt(1);
                    if (charAt == '\"') {
                        matcher.appendReplacement(stringBuffer3, "\"");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '/') {
                        matcher.appendReplacement(stringBuffer3, "/");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '\\') {
                        matcher.appendReplacement(stringBuffer3, "\\\\");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == 'b') {
                        matcher.appendReplacement(stringBuffer3, "\b");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == 'f') {
                        matcher.appendReplacement(stringBuffer3, "\f");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == 'n') {
                        matcher.appendReplacement(stringBuffer3, "\n");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == 'r') {
                        matcher.appendReplacement(stringBuffer3, "\r");
                        stringBuffer = stringBuffer3;
                    } else if (charAt != 't') {
                        throw new IllegalStateException("Found an escaped character that should never be.");
                    } else {
                        matcher.appendReplacement(stringBuffer3, "\t");
                        stringBuffer = stringBuffer3;
                    }
                } else if (stringBuffer2 == null) {
                    return zza2;
                } else {
                    matcher.appendTail(stringBuffer2);
                    str2 = stringBuffer2.toString();
                }
            }
        }
        return str2;
    }
}
