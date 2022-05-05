package com.mopub.common.logging;

import androidx.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubDefaultLogger.class */
public class MoPubDefaultLogger implements MoPubLogger {

    /* renamed from: a */
    public static int f8189a = 3072;

    /* renamed from: a */
    public static String[] m30739a(@Nullable String str) {
        if (str == null) {
            return new String[1];
        }
        int length = (str.length() / f8189a) + 1;
        String[] strArr = new String[length];
        int i = 0;
        while (i < length) {
            int i2 = f8189a;
            int i3 = i + 1;
            strArr[i] = str.substring(i * i2, Math.min(i2 * i3, str.length()));
            i = i3;
        }
        return strArr;
    }

    @Override // com.mopub.common.logging.MoPubLogger
    public void log(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        String[] a;
        for (String str5 : m30739a(str4)) {
            if (str3 == null) {
                String.format("[%s][%s] %s", str, str2, str5);
            } else {
                String.format("[%s][%s][%s] %s", str, str2, str3, str5);
            }
        }
    }
}
