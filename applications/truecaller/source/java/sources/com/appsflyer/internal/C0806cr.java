package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.cr */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cr.class */
public final class C0806cr {
    public static char[] AFKeystoreWrapper(long j, char[] cArr) {
        int length = cArr.length;
        char[] cArr2 = new char[length];
        int i = 4;
        int i2 = 0;
        for (int i3 = 0; i3 < cArr.length; i3++) {
            if ((((j >>> i3) & 1) != 1 || i2 >= 4) && i < length) {
                cArr2[i] = cArr[i3];
                i++;
            } else {
                cArr2[i2] = cArr[i3];
                i2++;
            }
        }
        return cArr2;
    }
}
