package com.mopub.common.logging;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubDefaultLogger.class */
public class MoPubDefaultLogger implements MoPubLogger {

    /* renamed from: a */
    public static int f33829a = 3072;

    /* renamed from: a */
    public static String[] m4588a(String str) {
        if (str == null) {
            return new String[1];
        }
        int length = (str.length() / f33829a) + 1;
        String[] strArr = new String[length];
        int i = 0;
        while (i < length) {
            int i2 = f33829a;
            int i3 = i + 1;
            strArr[i] = str.substring(i * i2, Math.min(i2 * i3, str.length()));
            i = i3;
        }
        return strArr;
    }

    @Override // com.mopub.common.logging.MoPubLogger
    public void log(String str, String str2, String str3, String str4) {
        String[] a;
        for (String str5 : m4588a(str4)) {
            if (str3 == null) {
                Log.i(MoPubLog.LOGTAG, String.format("[%s][%s] %s", str, str2, str5));
            } else {
                Log.i(MoPubLog.LOGTAG, String.format("[%s][%s][%s] %s", str, str2, str3, str5));
            }
        }
    }
}
