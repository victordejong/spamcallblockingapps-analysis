package com.apptentive.android.sdk.util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/NotificationUtils.class */
public class NotificationUtils {
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        if (r0.getImportance() != 0) goto L_0x0032;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isNotificationChannelEnabled(android.content.Context r3, @androidx.annotation.NonNull java.lang.String r4) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L_0x0038
            r0 = r4
            boolean r0 = com.apptentive.android.sdk.util.StringUtils.isNullOrEmpty(r0)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0035
            r0 = r3
            java.lang.String r1 = "notification"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.app.NotificationManager r0 = (android.app.NotificationManager) r0
            r1 = r4
            android.app.NotificationChannel r0 = r0.getNotificationChannel(r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0032
            r0 = r6
            r7 = r0
            r0 = r3
            int r0 = r0.getImportance()
            if (r0 == 0) goto L_0x0035
        L_0x0032:
            r0 = 1
            r7 = r0
        L_0x0035:
            r0 = r7
            return r0
        L_0x0038:
            r0 = r3
            androidx.core.app.NotificationManagerCompat r0 = androidx.core.app.NotificationManagerCompat.m19729d(r0)
            boolean r0 = r0.m19732a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.util.NotificationUtils.isNotificationChannelEnabled(android.content.Context, java.lang.String):boolean");
    }
}
