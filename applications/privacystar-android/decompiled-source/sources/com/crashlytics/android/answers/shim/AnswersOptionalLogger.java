package com.crashlytics.android.answers.shim;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/shim/AnswersOptionalLogger.class */
public class AnswersOptionalLogger {
    private static final String TAG = "AnswersOptionalLogger";
    private static final KitEventLogger logger;

    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    static {
        /*
            com.crashlytics.android.answers.shim.AnswersKitEventLogger r0 = com.crashlytics.android.answers.shim.AnswersKitEventLogger.create()     // Catch: Throwable -> 0x0007, NoClassDefFoundError | IllegalStateException -> 0x0023
            r4 = r0
            goto L_0x0013
        L_0x0007:
            r4 = move-exception
            java.lang.String r0 = "AnswersOptionalLogger"
            java.lang.String r1 = "Unexpected error creating AnswersKitEventLogger"
            r2 = r4
            int r0 = android.util.Log.w(r0, r1, r2)
        L_0x0011:
            r0 = 0
            r4 = r0
        L_0x0013:
            r0 = r4
            if (r0 == 0) goto L_0x001a
            goto L_0x001e
        L_0x001a:
            com.crashlytics.android.answers.shim.KitEventLogger r0 = com.crashlytics.android.answers.shim.NoopKitEventLogger.create()
            r4 = r0
        L_0x001e:
            r0 = r4
            com.crashlytics.android.answers.shim.AnswersOptionalLogger.logger = r0
            return
        L_0x0023:
            r4 = move-exception
            goto L_0x0011
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.shim.AnswersOptionalLogger.m983clinit():void");
    }

    public static KitEventLogger get() {
        return logger;
    }
}
