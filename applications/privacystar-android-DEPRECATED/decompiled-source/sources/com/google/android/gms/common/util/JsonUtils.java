package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.p018io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
public final class JsonUtils {
    private static final Pattern zzhb = Pattern.compile("\\\\.");
    private static final Pattern zzhc = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    private JsonUtils() {
    }

    @KeepForSdk
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

    @KeepForSdk
    public static String escapeString(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = zzhc.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            StringBuffer stringBuffer2 = stringBuffer;
            if (stringBuffer == null) {
                stringBuffer2 = new StringBuffer();
            }
            char charAt = matcher.group().charAt(0);
            if (charAt == '\"') {
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
                        switch (charAt) {
                            case '\f':
                                matcher.appendReplacement(stringBuffer2, "\\\\f");
                                stringBuffer = stringBuffer2;
                                continue;
                            case '\r':
                                matcher.appendReplacement(stringBuffer2, "\\\\r");
                                stringBuffer = stringBuffer2;
                                continue;
                            default:
                                stringBuffer = stringBuffer2;
                                continue;
                                continue;
                        }
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
        return stringBuffer.toString();
    }

    @KeepForSdk
    public static String unescapeString(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String unescape = zzd.unescape(str);
        Matcher matcher = zzhb.matcher(unescape);
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
                matcher.appendReplacement(stringBuffer2, IOUtils.LINE_SEPARATOR_UNIX);
                stringBuffer = stringBuffer2;
            } else if (charAt == 'r') {
                matcher.appendReplacement(stringBuffer2, "\r");
                stringBuffer = stringBuffer2;
            } else if (charAt != 't') {
                throw new IllegalStateException("Found an escaped character that should never be.");
            } else {
                matcher.appendReplacement(stringBuffer2, "\t");
                stringBuffer = stringBuffer2;
            }
        }
        if (stringBuffer == null) {
            return unescape;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
