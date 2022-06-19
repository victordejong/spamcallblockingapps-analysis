package com.mopub.common.logging;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubDefaultLogger.class */
public class MoPubDefaultLogger implements MoPubLogger {

    /* renamed from: a */
    public static int f4373a = 3072;

    /* renamed from: a */
    public static String[] m3871a(String str) {
        if (str == null) {
            return new String[1];
        }
        int length = (str.length() / f4373a) + 1;
        String[] strArr = new String[length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                return strArr;
            }
            int i3 = f4373a;
            int i4 = i2 + 1;
            strArr[i2] = str.substring(i2 * i3, Math.min(i3 * i4, str.length()));
            i = i4;
        }
    }

    @Override // com.mopub.common.logging.MoPubLogger
    public void log(String str, String str2, String str3, String str4) {
        String[] m3871a;
        for (String str5 : m3871a(str4)) {
            Log.i(MoPubLog.LOGTAG, str3 == null ? String.format("[%s][%s] %s", str, str2, str5) : String.format("[%s][%s][%s] %s", str, str2, str3, str5));
        }
    }
}
