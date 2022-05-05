package com.apptentive.android.sdk.util;

import android.util.Log;
import com.apptentive.android.sdk.ApptentiveLog;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.p018io.IOUtils;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/StringUtils.class */
public final class StringUtils {
    private static final DateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-dd-MM HH:mm:ss:SSS", Locale.US);

    public static String asJson(String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str, obj);
            return jSONObject.toString();
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while creating json-string { %s:%s }", str, obj);
            return null;
        }
    }

    public static boolean equal(String str, String str2) {
        return (str == null || str2 == null || !str.equals(str2)) ? false : true;
    }

    public static String format(String str, Object... objArr) {
        if (!(str == null || objArr == null || objArr.length <= 0)) {
            try {
                return String.format(str, objArr);
            } catch (Exception e) {
                Log.e("Apptentive", "Error while formatting String: " + e.getMessage());
            }
        }
        return str;
    }

    public static byte[] hexToBytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static <T> String join(List<T> list) {
        return join(list, ",");
    }

    public static <T> String join(List<T> list, String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (T t : list) {
            sb.append(t);
            int i2 = i + 1;
            i = i2;
            if (i2 < list.size()) {
                sb.append(str);
                i = i2;
            }
        }
        return sb.toString();
    }

    public static <T> String join(T[] tArr) {
        return join(tArr, ",");
    }

    public static <T> String join(T[] tArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < tArr.length; i++) {
            sb.append(tArr[i]);
            if (i < tArr.length - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static int parseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            return i;
        }
    }

    public static String table(Object[][] objArr) {
        return table(objArr, null);
    }

    public static String table(Object[][] objArr, String str) {
        int[] iArr = new int[objArr[0].length];
        for (Object[] objArr2 : objArr) {
            for (int i = 0; i < objArr2.length; i++) {
                iArr[i] = Math.max(iArr[i], toString(objArr2[i]).length());
            }
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += i3;
        }
        for (int length = i2 + (iArr.length > 0 ? (iArr.length - 1) * " | ".length() : 0); length > 0; length--) {
            sb.append('-');
        }
        StringBuilder sb2 = new StringBuilder(sb);
        for (Object[] objArr3 : objArr) {
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            for (int i4 = 0; i4 < objArr3.length; i4++) {
                if (i4 > 0) {
                    sb2.append(" | ");
                }
                sb2.append(String.format("%-" + iArr[i4] + "s", objArr3[i4]));
            }
        }
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append((CharSequence) sb);
        return sb2.toString();
    }

    public static String toPrettyDate(double d) {
        return DATE_FORMAT.format(new Date((long) (d * 1000.0d)));
    }

    public static String toString(Object obj) {
        return obj != null ? obj.toString() : "null";
    }

    public static String toString(Map<?, ?> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append("'");
            sb.append(entry.getKey());
            sb.append("':'");
            sb.append(entry.getValue());
            sb.append("'");
        }
        return sb.toString();
    }

    public static String trim(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.length() > 0) {
                str2 = str.trim();
            }
        }
        return str2;
    }
}
