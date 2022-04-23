package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager.class */
public class IMExtractorsManager {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener.class */
    public interface PhoneNumExtractedListener {
        void a(ExtractedInfo extractedInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StatusBarNotification statusBarNotification, PhoneNumExtractedListener phoneNumExtractedListener) {
        synchronized (IMExtractorsManager.class) {
            try {
                try {
                    ExtractedInfo g = IMDataExtractionUtils.g(statusBarNotification);
                    if (g != null && StringUtils.b((CharSequence) g.phoneAsRaw)) {
                        phoneNumExtractedListener.a(g);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception e) {
            }
        }
    }
}
