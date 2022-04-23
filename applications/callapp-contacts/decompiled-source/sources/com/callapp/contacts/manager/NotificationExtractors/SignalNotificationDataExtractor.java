package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor.class */
public class SignalNotificationDataExtractor implements ManagedLifecycle {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Phone a(StatusBarNotification statusBarNotification) {
        return CallAppClipboardManager.a(IMDataExtractionUtils.a(statusBarNotification));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Phone b(StatusBarNotification statusBarNotification) {
        String b2 = IMDataExtractionUtils.b(statusBarNotification);
        if (b2 == null) {
            return null;
        }
        return CallAppClipboardManager.a(b2.split(":")[0]);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
