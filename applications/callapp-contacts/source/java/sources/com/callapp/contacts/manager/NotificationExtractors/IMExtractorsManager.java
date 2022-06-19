package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager.class */
public class IMExtractorsManager {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener.class */
    public interface PhoneNumExtractedListener {
        /* renamed from: a */
        void mo28591a(ExtractedInfo extractedInfo);
    }

    /* renamed from: a */
    public static void m28592a(StatusBarNotification statusBarNotification, PhoneNumExtractedListener phoneNumExtractedListener) {
        synchronized (IMExtractorsManager.class) {
            try {
                try {
                    ExtractedInfo m28599g = IMDataExtractionUtils.m28599g(statusBarNotification);
                    if (m28599g != null && StringUtils.m26045b((CharSequence) m28599g.phoneAsRaw)) {
                        phoneNumExtractedListener.mo28591a(m28599g);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception e) {
            }
        }
    }
}
