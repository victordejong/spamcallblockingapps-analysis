package com.mopub.common.logging;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubDefaultLogger.class */
public class MoPubDefaultLogger implements MoPubLogger {

    /* renamed from: a  reason: collision with root package name */
    static int f33919a = 3072;

    @Override // com.mopub.common.logging.MoPubLogger
    public void log(String str, String str2, String str3, String str4) {
        String[] strArr;
        if (str4 == null) {
            strArr = new String[1];
        } else {
            int length = (str4.length() / f33919a) + 1;
            String[] strArr2 = new String[length];
            int i = 0;
            while (i < length) {
                int i2 = f33919a;
                int i3 = i + 1;
                strArr2[i] = str4.substring(i * i2, Math.min(i2 * i3, str4.length()));
                i = i3;
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
