package com.google.android.gms.internal.auth_api;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbay.class */
public final class zbay {
    public static final int zba;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r0.charAt(0) <= 'Z') goto L13;
     */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = r0
            r0 = 33554432(0x2000000, float:9.403955E-38)
            r4 = r0
            r0 = r3
            r1 = 31
            if (r0 < r1) goto L10
            goto L3b
        L10:
            r0 = r3
            r1 = 30
            if (r0 < r1) goto L39
            java.lang.String r0 = android.os.Build.VERSION.CODENAME
            r5 = r0
            r0 = r5
            int r0 = r0.length()
            r1 = 1
            if (r0 != r1) goto L39
            r0 = r5
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 83
            if (r0 < r1) goto L39
            r0 = r5
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 90
            if (r0 > r1) goto L39
            goto L3b
        L39:
            r0 = 0
            r4 = r0
        L3b:
            r0 = r4
            com.google.android.gms.internal.auth_api.zbay.zba = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth_api.zbay.m45008clinit():void");
    }

    public static PendingIntent zba(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getActivity(context, 2000, intent, i2);
    }
}
