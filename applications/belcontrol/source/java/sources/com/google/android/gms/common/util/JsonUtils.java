package com.google.android.gms.common.util;

import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
public final class JsonUtils {
    private static final Pattern zza = Pattern.compile("\\\\.");
    private static final Pattern zzb = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

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

    @RecentlyNullable
    @KeepForSdk
    public static String escapeString(String str) {
        String str2;
        String str3 = str;
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
                        str2 = "\\\\f";
                    } else if (charAt == '\r') {
                        str2 = "\\\\r";
                    } else if (charAt == '\"') {
                        str2 = "\\\\\\\"";
                    } else if (charAt == '/') {
                        str2 = "\\\\/";
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case '\b':
                                str2 = "\\\\b";
                                break;
                            case '\t':
                                str2 = "\\\\t";
                                break;
                            case '\n':
                                str2 = "\\\\n";
                                break;
                            default:
                                stringBuffer = stringBuffer3;
                                continue;
                        }
                    } else {
                        str2 = "\\\\\\\\";
                    }
                    matcher.appendReplacement(stringBuffer3, str2);
                    stringBuffer = stringBuffer3;
                } else if (stringBuffer2 == null) {
                    return str;
                } else {
                    matcher.appendTail(stringBuffer2);
                    str3 = stringBuffer2.toString();
                }
            }
        }
        return str3;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String unescapeString(@RecentlyNonNull String str) {
        String str2;
        String str3 = str;
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
                        str2 = "\"";
                    } else if (charAt == '/') {
                        str2 = "/";
                    } else if (charAt == '\\') {
                        str2 = "\\\\";
                    } else if (charAt == 'b') {
                        str2 = "\b";
                    } else if (charAt == 'f') {
                        str2 = "\f";
                    } else if (charAt == 'n') {
                        str2 = "\n";
                    } else if (charAt == 'r') {
                        str2 = "\r";
                    } else if (charAt != 't') {
                        throw new IllegalStateException("Found an escaped character that should never be.");
                    } else {
                        str2 = "\t";
                    }
                    matcher.appendReplacement(stringBuffer3, str2);
                    stringBuffer = stringBuffer3;
                } else if (stringBuffer2 == null) {
                    return zza2;
                } else {
                    matcher.appendTail(stringBuffer2);
                    str3 = stringBuffer2.toString();
                }
            }
        }
        return str3;
    }
}
