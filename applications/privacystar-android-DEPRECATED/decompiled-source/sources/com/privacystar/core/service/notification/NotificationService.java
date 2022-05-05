package com.privacystar.core.service.notification;

import android.content.Context;
import android.os.Build;
import com.privacystar.core.C1566R;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.NotificationUtil;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/notification/NotificationService.class */
public class NotificationService {
    private static final int firstDeltaInDays = 1;
    private static final int firstPeriodLengthInDays = 3;
    private static final int secondDeltaInDays = 7;
    public static final int secondPeriodLengthInDays = 60;

    private static void displayNotification(Context context, long j, int i) {
        Timber.m37d("Displaying pre-setup notification.", new Object[0]);
        PreferenceUtil.putLastSetupNotificationTime(j);
        PreferenceUtil.putTotalSetupNotificationsSent(i + 1);
        NotificationUtil.showAppNotRegisteredNotification(context, !shouldNotificationBeSuppressed());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long getLastAppUpgradeTime(long r5) {
        /*
            long r0 = com.privacystar.core.service.PreferenceUtil.getLastAppUpgradeTime()
            r7 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = r5
            com.privacystar.core.service.PreferenceUtil.putLastAppUpgradeTime(r0)
            goto L_0x0013
        L_0x0011:
            r0 = r7
            r5 = r0
        L_0x0013:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.notification.NotificationService.getLastAppUpgradeTime(long):long");
    }

    public static void onCallEnded(Context context) {
        synchronized (NotificationService.class) {
            try {
                if (!context.getResources().getBoolean(C1566R.bool.app_not_setup_notifications_enabled)) {
                    Timber.m37d("Call ended and pre-setup notifications are not enabled.", new Object[0]);
                } else if (PreferenceUtil.getProtectionSetup()) {
                    Timber.m37d("Call ended and protection is already setup. No need for a notification.", new Object[0]);
                } else {
                    Timber.m37d("Call ended and pre-setup notifications are enabled. Checking previous timestamps.", new Object[0]);
                    long currentTimeMillis = System.currentTimeMillis();
                    long lastAppUpgradeTime = getLastAppUpgradeTime(currentTimeMillis);
                    long lastSetupNotificationTime = PreferenceUtil.getLastSetupNotificationTime();
                    int totalSetupNotificationsSent = PreferenceUtil.getTotalSetupNotificationsSent();
                    if (shouldDisplayNotification(currentTimeMillis, lastAppUpgradeTime, lastSetupNotificationTime, totalSetupNotificationsSent)) {
                        displayNotification(context, currentTimeMillis, totalSetupNotificationsSent);
                    } else {
                        Timber.m37d("Not displaying pre-setup notification.", new Object[0]);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean rangeWithinDelta(long j, long j2, int i) {
        boolean z = j - j2 < ((long) i) * DateUtil.DAY_IN_MILLIS;
        Timber.m37d("Call event was%s within delta. [last:%d][current:%d][period:%d]", z ? "" : " not", Long.valueOf(j2), Long.valueOf(j), Integer.valueOf(i));
        return z;
    }

    private static boolean shouldDisplayNotification(long j, long j2, long j3, int i) {
        long j4 = j - j2;
        boolean z = false;
        if (!(j4 < 5184000000L)) {
            Timber.m37d("Past second period of [%d] days.", 60);
            return false;
        }
        if (j4 < 259200000) {
            z = true;
        }
        return !rangeWithinDelta(j, j3, z ? 1 : 7);
    }

    private static boolean shouldNotificationBeSuppressed() {
        return Build.VERSION.SDK_INT < 21;
    }
}
