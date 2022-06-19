package com.huawei.hms.framework.common;

import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/CheckParamUtils.class */
public class CheckParamUtils {
    private static final String TAG = "CheckParamUtils";

    public static <T> T checkNotNull(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static int checkNumParam(int i, int i2, int i3, int i4, String str) {
        if (i > i3 || i < i2) {
            return i4;
        }
        Logger.m38049d(TAG, str);
        return i;
    }

    public static long checkNumParam(long j, long j2, long j3, long j4, String str) {
        if (j > j3 || j < j2) {
            return j4;
        }
        Logger.m38049d(TAG, str);
        return j;
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean isIpV4(String str) {
        if (str == null || str.isEmpty() || str.length() > 15 || !str.replace(StringConstant.DOT, "").matches("[0-9]+")) {
            return false;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return false;
        }
        for (String str2 : split) {
            if (str2.length() > 4 || Integer.parseInt(str2) > 255) {
                return false;
            }
        }
        return true;
    }

    public static boolean isIpV6(String str) {
        int i;
        if (str == null || str.isEmpty() || str.length() > 39) {
            return false;
        }
        char[] charArray = str.toCharArray();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= charArray.length) {
                break;
            }
            int i4 = i;
            if (':' == charArray[i2]) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i != 7) {
            return false;
        }
        for (String str2 : str.split("\\:")) {
            if (str2.length() > 4) {
                return false;
            }
        }
        return str.replace(StringConstant.COLON, "").matches("[A-Fa-f0-9]+");
    }
}
