package com.mopub.common.logging;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubDefaultLogger.class */
public class MoPubDefaultLogger implements MoPubLogger {

    /* renamed from: a */
    static int f58865a = 3072;

    @Override // com.mopub.common.logging.MoPubLogger
    public void log(String str, String str2, String str3, String str4) {
        String[] strArr;
        if (str4 == null) {
            strArr = new String[1];
        } else {
            int length = (str4.length() / f58865a) + 1;
            String[] strArr2 = new String[length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= length) {
                    break;
                }
                int i3 = f58865a;
                int i4 = i2 + 1;
                strArr2[i2] = str4.substring(i2 * i3, Math.min(i3 * i4, str4.length()));
                i = i4;
            }
            strArr = strArr2;
        }
        for (String str5 : strArr) {
            if (str3 == null) {
                String.format("[%s][%s] %s", str, str2, str5);
            } else {
                String.format("[%s][%s][%s] %s", str, str2, str3, str5);
            }
        }
    }
}
