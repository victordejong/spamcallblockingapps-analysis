package com.huawei.hms.framework.common.grs;

import com.huawei.hms.framework.common.StringUtils;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/grs/GrsUtils.class */
public class GrsUtils {
    private static final int GRS_KEY_INDEX = 1;
    private static final int GRS_PATH_INDEX = 2;
    private static final String GRS_SCHEMA = "grs://";
    private static final int GRS_SERVICE_INDEX = 0;
    private static final int MAX_GRS_SPLIT = 3;
    private static final String SEPARATOR = "/";

    public static String fixResult(String[] strArr, String str) {
        String str2 = str;
        if (strArr.length > 2) {
            if (str.endsWith("/")) {
                StringBuilder m8728C = C22128a.m8728C(str);
                m8728C.append(strArr[2]);
                str2 = m8728C.toString();
            } else {
                StringBuilder m8696K = C22128a.m8696K(str, "/");
                m8696K.append(strArr[2]);
                str2 = m8696K.toString();
            }
        }
        return str2;
    }

    public static boolean isGRSSchema(String str) {
        return str != null && str.startsWith(GRS_SCHEMA);
    }

    public static String[] parseGRSSchema(String str) {
        String[] split = StringUtils.substring(str, str.toLowerCase(Locale.ENGLISH).indexOf(GRS_SCHEMA) + 6).split("/", 3);
        return split.length == 1 ? new String[]{split[0], "ROOT"} : split;
    }

    public static String[] parseParams(String str) {
        String str2 = str;
        if (str.endsWith("/")) {
            str2 = StringUtils.substring(str, str.indexOf(GRS_SCHEMA), str.length() - 1);
        }
        return parseGRSSchema(str2);
    }
}
