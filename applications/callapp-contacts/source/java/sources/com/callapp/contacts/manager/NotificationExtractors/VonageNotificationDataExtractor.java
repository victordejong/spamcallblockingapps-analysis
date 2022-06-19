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
    /* renamed from: a */
    public static IMDataExtractionUtils.ComType m28584a(StatusBarNotification statusBarNotification) {
        if (statusBarNotification == null) {
            return null;
        }
        int m28608c = IMDataExtractionUtils.m28608c(statusBarNotification);
        if (m28608c == 0) {
            return IMDataExtractionUtils.ComType.TEXT;
        }
        switch (m28608c) {
            case 918272:
                return IMDataExtractionUtils.ComType.MISSED_CALL;
            case 918273:
                return IMDataExtractionUtils.ComType.CALL;
            default:
                return IMDataExtractionUtils.ComType.UNKNOWN;
        }
    }

    /* renamed from: a */
    public static ExtractedInfo.Builder m28583a(String str, String str2) {
        ExtractedInfo.Builder builder;
        ExtractedInfo.Builder builder2;
        int lastIndexOf;
        String[] m28621a;
        Phone m28710a;
        if (StringUtils.m26059a((CharSequence) str) || (m28621a = IMDataExtractionUtils.m28621a(str, "@")) == null || m28621a.length == 0 || (m28710a = CallAppClipboardManager.m28710a(m28621a[0])) == null) {
            builder = null;
        } else {
            ExtractedInfo.Builder builder3 = new ExtractedInfo.Builder();
            builder3.phoneAsRaw = m28710a.getRawNumber();
            builder = builder3;
            if (m28621a.length > 1) {
                builder3.groupName = m28621a[1];
                builder = builder3;
            }
        }
        ExtractedInfo.Builder builder4 = builder;
        if (builder == null) {
            if (StringUtils.m26059a((CharSequence) str2)) {
                builder2 = null;
            } else {
                String[] m28621a2 = IMDataExtractionUtils.m28621a(str2, ":");
                builder2 = null;
                if (m28621a2 != null) {
                    if (m28621a2.length == 0) {
                        builder2 = null;
                    } else {
                        if (m28621a2.length == 1) {
                            if (!StringUtils.m26059a((CharSequence) str2) && (lastIndexOf = str2.lastIndexOf(org.apache.commons.lang3.StringUtils.SPACE)) >= 0) {
                                str2 = str2.substring(lastIndexOf);
                            }
                            if (StringUtils.m26059a((CharSequence) str2)) {
                                builder2 = null;
                            }
                        }
                        Phone m28710a2 = CallAppClipboardManager.m28710a(m28621a2[0]);
                        if (m28710a2 == null) {
                            builder2 = null;
                        } else {
                            builder2 = new ExtractedInfo.Builder();
                            builder2.phoneAsRaw = m28710a2.getRawNumber();
                        }
                    }
                }
            }
            builder4 = builder2;
        }
        return builder4;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
