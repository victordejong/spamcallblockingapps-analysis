package com.huawei.hms.framework.common;

import android.text.TextUtils;
import com.huawei.secure.android.common.util.SafeString;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/StringUtils.class */
public class StringUtils {
    private static final int INIT_CAPACITY = 1024;
    private static boolean IS_AEGIS_STRING_LIBRARY_LOADED = false;
    private static final String SAFE_STRING_PATH = "com.huawei.secure.android.common.util.SafeString";
    private static final String TAG = "StringUtils";

    public static String anonymizeMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i % 2 != 0) {
                charArray[i] = (char) 42;
            }
        }
        return new String(charArray);
    }

    public static String byte2Str(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new String(bArr, StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            Logger.m38040w("StringUtils.byte2str error: UnsupportedEncodingException", anonymizeMessage(e.getMessage()));
            return "";
        }
    }

    private static boolean checkCompatible(String str) {
        ClassLoader classLoader = SecurityBase64Utils.class.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        try {
            classLoader.loadClass(str);
            synchronized (StringUtils.class) {
                IS_AEGIS_STRING_LIBRARY_LOADED = true;
            }
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static String collection2String(Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : collection) {
            sb.append(str);
            sb.append(";");
        }
        return sb.toString().substring(0, sb.length() - 1);
    }

    public static String format(String str, Object... objArr) {
        return str == null ? "" : String.format(Locale.ROOT, str, objArr);
    }

    public static byte[] getBytes(long j) {
        return getBytes(String.valueOf(j));
    }

    public static byte[] getBytes(String str) {
        byte[] bArr;
        byte[] bArr2 = new byte[0];
        if (str == null) {
            return bArr2;
        }
        try {
            bArr = str.getBytes(AbstractC22212i.PROTOCOL_CHARSET);
        } catch (UnsupportedEncodingException e) {
            Logger.m38040w(TAG, "the content has error while it is converted to bytes");
            bArr = bArr2;
        }
        return bArr;
    }

    public static String getTraceInfo(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder sb = new StringBuilder(1024);
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append("at ");
            sb.append(stackTraceElement.toString());
            sb.append(";");
        }
        return sb.toString();
    }

    public static String replace(String str, CharSequence charSequence, CharSequence charSequence2) {
        if (IS_AEGIS_STRING_LIBRARY_LOADED || checkCompatible(SAFE_STRING_PATH)) {
            return SafeString.replace(str, charSequence, charSequence2);
        }
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (!TextUtils.isEmpty(charSequence)) {
                try {
                    str2 = str.replace(charSequence, charSequence2);
                } catch (Exception e) {
                    str2 = str;
                }
            }
        }
        return str2;
    }

    public static byte[] str2Byte(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            return str.getBytes(StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            Logger.m38040w("StringUtils.str2Byte error: UnsupportedEncodingException", anonymizeMessage(e.getMessage()));
            return new byte[0];
        }
    }

    public static boolean strEquals(String str, String str2) {
        return str == str2 || (str != null && str.equals(str2));
    }

    public static boolean stringToBoolean(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        try {
            return Boolean.valueOf(str).booleanValue();
        } catch (NumberFormatException e) {
            StringBuilder m8728C = C22128a.m8728C("String to Integer catch NumberFormatException.");
            m8728C.append(anonymizeMessage(e.getMessage()));
            Logger.m38040w(TAG, m8728C.toString());
            return z;
        }
    }

    public static int stringToInteger(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            StringBuilder m8728C = C22128a.m8728C("String to Integer catch NumberFormatException.");
            m8728C.append(anonymizeMessage(e.getMessage()));
            Logger.m38040w(TAG, m8728C.toString());
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    public static long stringToLong(String str, long j) {
        ?? r4;
        if (TextUtils.isEmpty(str)) {
            return j;
        }
        try {
            r4 = Long.parseLong(str);
        } catch (NumberFormatException e) {
            StringBuilder m8728C = C22128a.m8728C("String to Long catch NumberFormatException.");
            m8728C.append(anonymizeMessage(e.getMessage()));
            Logger.m38040w(TAG, m8728C.toString());
            r4 = j;
        }
        return r4;
    }

    public static String substring(String str, int i) {
        if (checkCompatible(SAFE_STRING_PATH)) {
            return SafeString.substring(str, i);
        }
        if (TextUtils.isEmpty(str) || str.length() < i || i < 0) {
            return "";
        }
        try {
            return str.substring(i);
        } catch (Exception e) {
            return "";
        }
    }

    public static String substring(String str, int i, int i2) {
        if (IS_AEGIS_STRING_LIBRARY_LOADED || checkCompatible(SAFE_STRING_PATH)) {
            return SafeString.substring(str, i, i2);
        }
        if (TextUtils.isEmpty(str) || i < 0 || i2 > str.length() || i2 < i) {
            return "";
        }
        try {
            return str.substring(i, i2);
        } catch (Exception e) {
            return "";
        }
    }

    public static String toLowerCase(String str) {
        return str == null ? "" : str.toLowerCase(Locale.ROOT);
    }
}
