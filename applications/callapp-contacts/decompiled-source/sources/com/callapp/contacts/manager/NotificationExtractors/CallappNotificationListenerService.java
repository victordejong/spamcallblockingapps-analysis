package com.callapp.contacts.manager.NotificationExtractors;

import android.content.ComponentName;
import android.os.Build;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.FeedbackManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService.class */
public class CallappNotificationListenerService extends NotificationListenerService {
    @Override // android.service.notification.NotificationListenerService
    public void onListenerDisconnected() {
        if (Build.VERSION.SDK_INT >= 24) {
            FeedbackManager.get().a("Notification listener disconnected - requesting rebind", 80);
            requestRebind(new ComponentName(CallAppApplication.get(), CallappNotificationListenerService.class));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
        if (r8.equals(r6.getPackageName()) != false) goto L_0x0049;
     */
    @Override // android.service.notification.NotificationListenerService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNotificationPosted(final android.service.notification.StatusBarNotification r6) {
        /*
            r5 = this;
            boolean r0 = com.callapp.contacts.util.Activities.isNotificationListenerServiceSupportedOnDevice()
            if (r0 == 0) goto L_0x0055
            r0 = r6
            boolean r0 = com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils.f(r0)
            if (r0 == 0) goto L_0x001a
            com.callapp.contacts.manager.NotificationExtractors.CallappNotificationListenerService$1 r0 = new com.callapp.contacts.manager.NotificationExtractors.CallappNotificationListenerService$1
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>()
            com.callapp.contacts.manager.task.Task r0 = r0.execute()
        L_0x001a:
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0047
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x002e
            java.lang.String r0 = "com.android.server.telecom"
            r8 = r0
            goto L_0x0031
        L_0x002e:
            java.lang.String r0 = "com.android.phone"
            r8 = r0
        L_0x0031:
            r0 = r6
            int r0 = r0.getId()
            r1 = 1
            if (r0 != r1) goto L_0x0047
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getPackageName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0047
            goto L_0x0049
        L_0x0047:
            r0 = 0
            r7 = r0
        L_0x0049:
            r0 = r7
            if (r0 == 0) goto L_0x0055
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.getKey()
            r0.cancelNotification(r1)
        L_0x0055:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.NotificationExtractors.CallappNotificationListenerService.onNotificationPosted(android.service.notification.StatusBarNotification):void");
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
    }
}
