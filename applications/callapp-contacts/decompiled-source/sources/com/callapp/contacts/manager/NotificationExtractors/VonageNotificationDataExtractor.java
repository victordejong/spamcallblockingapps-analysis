package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor.class */
public class VonageNotificationDataExtractor implements ManagedLifecycle {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static IMDataExtractionUtils.ComType a(StatusBarNotification statusBarNotification) {
        if (statusBarNotification == null) {
            return null;
        }
        int c2 = IMDataExtractionUtils.c(statusBarNotification);
        if (c2 == 0) {
            return IMDataExtractionUtils.ComType.TEXT;
        }
        switch (c2) {
            case 918272:
                return IMDataExtractionUtils.ComType.MISSED_CALL;
            case 918273:
                return IMDataExtractionUtils.ComType.CALL;
            default:
                return IMDataExtractionUtils.ComType.UNKNOWN;
        }
    }

    public static ExtractedInfo.Builder a(String str, String str2) {
        ExtractedInfo.Builder builder;
        int lastIndexOf;
        String[] a2;
        Phone a3;
        if (StringUtils.a((CharSequence) str) || (a2 = IMDataExtractionUtils.a(str, "@")) == null || a2.length == 0 || (a3 = CallAppClipboardManager.a(a2[0])) == null) {
            builder = null;
        } else {
            ExtractedInfo.Builder builder2 = new ExtractedInfo.Builder();
            builder2.phoneAsRaw = a3.getRawNumber();
            builder = builder2;
            if (a2.length > 1) {
                builder2.groupName = a2[1];
                builder = builder2;
            }
        }
        ExtractedInfo.Builder builder3 = builder;
        if (builder == null) {
            if (StringUtils.a((CharSequence) str2)) {
                builder3 = null;
            } else {
                String[] a4 = IMDataExtractionUtils.a(str2, ":");
                builder3 = null;
                if (a4 != null) {
                    if (a4.length == 0) {
                        builder3 = null;
                    } else {
                        if (a4.length == 1) {
                            if (!StringUtils.a((CharSequence) str2) && (lastIndexOf = str2.lastIndexOf(org.apache.commons.lang3.StringUtils.SPACE)) >= 0) {
                                str2 = str2.substring(lastIndexOf);
                            }
                            if (StringUtils.a((CharSequence) str2)) {
                                builder3 = null;
                            }
                        }
                        Phone a5 = CallAppClipboardManager.a(a4[0]);
                        if (a5 == null) {
                            builder3 = null;
                        } else {
                            builder3 = new ExtractedInfo.Builder();
                            builder3.phoneAsRaw = a5.getRawNumber();
                        }
                    }
                }
            }
        }
        return builder3;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
