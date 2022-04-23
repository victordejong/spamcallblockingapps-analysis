package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
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
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
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
                    o.a(next);
                    if (!areJsonValuesEquivalent(jSONObject.get(next), jSONObject2.get(next))) {
                        return false;
                    }
                } catch (JSONException e) {
                    return false;
                }
            }
            return true;
        } else if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
            return obj.equals(obj2);
        } else {
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
                } catch (JSONException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    public static String escapeString(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zzb.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt == '\f') {
                    matcher.appendReplacement(stringBuffer2, "\\\\f");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\r') {
                    matcher.appendReplacement(stringBuffer2, "\\\\r");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\"') {
                    matcher.appendReplacement(stringBuffer2, "\\\\\\\"");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '/') {
                    matcher.appendReplacement(stringBuffer2, "\\\\/");
                    stringBuffer = stringBuffer2;
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            matcher.appendReplacement(stringBuffer2, "\\\\b");
                            stringBuffer = stringBuffer2;
                            continue;
                        case '\t':
                            matcher.appendReplacement(stringBuffer2, "\\\\t");
                            stringBuffer = stringBuffer2;
                            continue;
                        case '\n':
                            matcher.appendReplacement(stringBuffer2, "\\\\n");
                            stringBuffer = stringBuffer2;
                            continue;
                        default:
                            stringBuffer = stringBuffer2;
                            continue;
                    }
                } else {
                    matcher.appendReplacement(stringBuffer2, "\\\\\\\\");
                    stringBuffer = stringBuffer2;
                }
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            str2 = stringBuffer.toString();
        }
        return str2;
    }

    public static String unescapeString(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            String a2 = w.a(str);
            Matcher matcher = zza.matcher(a2);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                char charAt = matcher.group().charAt(1);
                if (charAt == '\"') {
                    matcher.appendReplacement(stringBuffer2, "\"");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '/') {
                    matcher.appendReplacement(stringBuffer2, "/");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\\') {
                    matcher.appendReplacement(stringBuffer2, "\\\\");
                    stringBuffer = stringBuffer2;
                } else if (charAt == 'b') {
                    matcher.appendReplacement(stringBuffer2, "\b");
                    stringBuffer = stringBuffer2;
                } else if (charAt == 'f') {
                    matcher.appendReplacement(stringBuffer2, "\f");
                    stringBuffer = stringBuffer2;
                } else if (charAt == 'n') {
                    matcher.appendReplacement(stringBuffer2, StringUtils.LF);
                    stringBuffer = stringBuffer2;
                } else if (charAt == 'r') {
                    matcher.appendReplacement(stringBuffer2, StringUtils.CR);
                    stringBuffer = stringBuffer2;
                } else if (charAt == 't') {
                    matcher.appendReplacement(stringBuffer2, "\t");
                    stringBuffer = stringBuffer2;
                } else {
                    throw new IllegalStateException("Found an escaped character that should never be.");
                }
            }
            if (stringBuffer == null) {
                return a2;
            }
            matcher.appendTail(stringBuffer);
            str2 = stringBuffer.toString();
        }
        return str2;
    }
}
