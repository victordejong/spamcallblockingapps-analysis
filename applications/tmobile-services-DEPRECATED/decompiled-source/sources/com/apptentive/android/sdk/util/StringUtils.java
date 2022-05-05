package com.apptentive.android.sdk.util;

import android.util.Log;
import com.apptentive.android.sdk.ApptentiveLog;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
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
            ApptentiveLog.m15641e(e, "Exception while creating json-string { %s:%s }", str, obj);
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

    public static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static byte[] hexToBytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static boolean isNullOrBlank(String str) {
        return str == null || isNullOrEmpty(str.trim());
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
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

    public static String randomAndroidID() {
        Random random = new Random();
        return Long.toHexString((random.nextInt() << 32) | (random.nextInt() & 4294967295L));
    }

    public static String table(Object[][] objArr) {
        return table(objArr, null);
    }

    public static String table(Object[][] objArr, String str) {
        int length = objArr[0].length;
        int[] iArr = new int[length];
        for (Object[] objArr2 : objArr) {
            for (int i = 0; i < objArr2.length; i++) {
                iArr[i] = Math.max(iArr[i], toString(objArr2[i]).length());
            }
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 += iArr[i3];
        }
        for (int i4 = i2 + (length > 0 ? (length - 1) * 3 : 0); i4 > 0; i4--) {
            sb.append('-');
        }
        StringBuilder sb2 = new StringBuilder(sb);
        for (Object[] objArr3 : objArr) {
            sb2.append("\n");
            for (int i5 = 0; i5 < objArr3.length; i5++) {
                if (i5 > 0) {
                    sb2.append(" | ");
                }
                sb2.append(String.format("%-" + iArr[i5] + "s", objArr3[i5]));
            }
        }
        sb2.append("\n");
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
