package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor.class */
public class TelegramNotificationDataExtractor implements ManagedLifecycle {
    public static ExtractedInfo a(StatusBarNotification statusBarNotification) {
        ExtractedInfo.Builder e = IMDataExtractionUtils.e(statusBarNotification);
        if (e == null || !StringUtils.b((CharSequence) e.phoneAsRaw)) {
            return null;
        }
        String h = IMDataExtractionUtils.h(statusBarNotification);
        CharSequence i = IMDataExtractionUtils.i(statusBarNotification);
        if (StringUtils.b(i)) {
            e.senderName = i.toString();
        } else if (!StringUtils.a((CharSequence) h)) {
            String[] a2 = IMDataExtractionUtils.a(h, ":");
            if (a2.length >= 2) {
                String[] a3 = IMDataExtractionUtils.a(a2[0], "@");
                if (StringUtils.b((CharSequence) a3[0])) {
                    e.senderName = a3[0];
                }
                if (a3.length > 1 && StringUtils.b((CharSequence) a3[1])) {
                    e.groupName = a3[1];
                }
            }
        }
        e.comType = IMDataExtractionUtils.ComType.TEXT;
        e.recognizedPersonOrigin = IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM;
        e.when = IMDataExtractionUtils.d(statusBarNotification);
        IMDataExtractionUtils.a(e);
        return e.build();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
