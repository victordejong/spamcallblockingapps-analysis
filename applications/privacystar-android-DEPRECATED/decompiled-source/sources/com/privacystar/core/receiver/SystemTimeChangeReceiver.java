package com.privacystar.core.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.LicenseHandler;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.Device;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/receiver/SystemTimeChangeReceiver.class */
public class SystemTimeChangeReceiver extends BroadcastReceiver {
    private void handleSystemChange(Context context) {
        if (!Device.isApplicationRunning(context)) {
            Timber.m37d("Observed system change but application is not running - no response needed.", new Object[0]);
        } else if (!isLicenseCheckOutsidePossibleRange(context)) {
        } else {
            if (Device.isApplicationInForeground(context)) {
                Timber.m37d("Application is running and is in foreground - directly triggering a License update.", new Object[0]);
                LicenseHandler.getInstance().generateAndSendRequest(context);
                return;
            }
            Timber.m37d("Application is running and is not in foreground - will update license on next onResume().", new Object[0]);
            PreferenceUtil.putIsLicenseOutOfDate(true);
        }
    }

    private boolean isLicenseCheckOutsidePossibleRange(Context context) {
        return (SubscriptionType.INACTIVE.getLicenseRefreshInterval() * 1000) + DateUtil.HOUR_IN_MILLIS < PreferenceUtil.getNextScheduledLicenseCheck() - System.currentTimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        if (r0.equals("android.intent.action.TIME_SET") != false) goto L_0x0047;
     */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r7, android.content.Intent r8) {
        /*
            r6 = this;
            r0 = r8
            java.lang.String r0 = r0.getAction()
            r8 = r0
            r0 = 1
            r9 = r0
            java.lang.String r0 = "Received SystemTimeChange broadcast with action: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4
            timber.log.Timber.m37d(r0, r1)
            r0 = r8
            int r0 = r0.hashCode()
            r10 = r0
            r0 = r10
            r1 = 505380757(0x1e1f7f95, float:8.443773E-21)
            if (r0 == r1) goto L_0x0039
            r0 = r10
            r1 = 1041332296(0x3e117848, float:0.1420604)
            if (r0 == r1) goto L_0x002b
            goto L_0x0045
        L_0x002b:
            r0 = r8
            java.lang.String r1 = "android.intent.action.DATE_CHANGED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0045
            r0 = 0
            r9 = r0
            goto L_0x0047
        L_0x0039:
            r0 = r8
            java.lang.String r1 = "android.intent.action.TIME_SET"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0045
            goto L_0x0047
        L_0x0045:
            r0 = -1
            r9 = r0
        L_0x0047:
            r0 = r9
            switch(r0) {
                case 0: goto L_0x0074;
                case 1: goto L_0x006c;
                default: goto L_0x0060;
            }
        L_0x0060:
            java.lang.String r0 = "Received a SystemTimeChange intent that can't be handled."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m25w(r0, r1)
            goto L_0x007d
        L_0x006c:
            r0 = r6
            r1 = r7
            r0.handleSystemChange(r1)
            goto L_0x007d
        L_0x0074:
            java.lang.String r0 = "Date changed: currently not acting on event."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m37d(r0, r1)
        L_0x007d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.receiver.SystemTimeChangeReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }
}
