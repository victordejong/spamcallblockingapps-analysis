package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor.class */
public class TelegramNotificationDataExtractor implements ManagedLifecycle {
    /* renamed from: a */
    public static ExtractedInfo m28588a(StatusBarNotification statusBarNotification) {
        ExtractedInfo.Builder m28602e = IMDataExtractionUtils.m28602e(statusBarNotification);
        if (m28602e == null || !StringUtils.m26045b((CharSequence) m28602e.phoneAsRaw)) {
            return null;
        }
        String m28598h = IMDataExtractionUtils.m28598h(statusBarNotification);
        CharSequence m28597i = IMDataExtractionUtils.m28597i(statusBarNotification);
        if (StringUtils.m26045b(m28597i)) {
            m28602e.senderName = m28597i.toString();
        } else if (!StringUtils.m26059a((CharSequence) m28598h)) {
            String[] m28621a = IMDataExtractionUtils.m28621a(m28598h, ":");
            if (m28621a.length >= 2) {
                String[] m28621a2 = IMDataExtractionUtils.m28621a(m28621a[0], "@");
                if (StringUtils.m26045b((CharSequence) m28621a2[0])) {
                    m28602e.senderName = m28621a2[0];
                }
                if (m28621a2.length > 1 && StringUtils.m26045b((CharSequence) m28621a2[1])) {
                    m28602e.groupName = m28621a2[1];
                }
            }
        }
        m28602e.comType = IMDataExtractionUtils.ComType.TEXT;
        m28602e.recognizedPersonOrigin = IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM;
        m28602e.when = IMDataExtractionUtils.m28604d(statusBarNotification);
        IMDataExtractionUtils.m28625a(m28602e);
        return m28602e.build();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
