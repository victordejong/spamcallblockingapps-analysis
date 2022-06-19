package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor.class */
public class SignalNotificationDataExtractor implements ManagedLifecycle {
    /* renamed from: a */
    public static Phone m28590a(StatusBarNotification statusBarNotification) {
        return CallAppClipboardManager.m28710a(IMDataExtractionUtils.m28631a(statusBarNotification));
    }

    /* renamed from: b */
    public static Phone m28589b(StatusBarNotification statusBarNotification) {
        String m28615b = IMDataExtractionUtils.m28615b(statusBarNotification);
        if (m28615b == null) {
            return null;
        }
        return CallAppClipboardManager.m28710a(m28615b.split(":")[0]);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
