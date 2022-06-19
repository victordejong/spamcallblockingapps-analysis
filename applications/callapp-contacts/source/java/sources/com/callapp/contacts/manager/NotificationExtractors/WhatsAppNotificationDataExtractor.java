package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor.class */
public class WhatsAppNotificationDataExtractor implements ManagedLifecycle {
    /* renamed from: a */
    public static IMDataExtractionUtils.ComType m28582a(StatusBarNotification statusBarNotification) {
        if (statusBarNotification == null) {
            return null;
        }
        int m28608c = IMDataExtractionUtils.m28608c(statusBarNotification);
        return m28608c != 1 ? m28608c != 7 ? (m28608c == 10 || m28608c == 2131297329 || m28608c == 2131689528 || m28608c == 2131755057) ? IMDataExtractionUtils.ComType.CALL : IMDataExtractionUtils.ComType.UNKNOWN : IMDataExtractionUtils.ComType.MISSED_CALL : IMDataExtractionUtils.ComType.TEXT;
    }

    /* renamed from: a */
    public static IMDataExtractionUtils.RecognizedPersonOrigin m28581a(String str) {
        return StringUtils.m26042b(str, IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP.pkgName) ? IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP : IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP4B;
    }

    /* renamed from: a */
    public static ExtractedInfo.Builder m28580a(String str, String str2, String str3, String str4, Phone phone) {
        ExtractedInfo.Builder builder;
        ExtractedInfo.Builder builder2;
        String[] m28621a;
        Phone m28710a;
        String[] m28621a2;
        String[] m28621a3 = IMDataExtractionUtils.m28621a(str, "@");
        Phone phone2 = phone;
        if (phone == null) {
            phone2 = phone;
            if (CollectionUtils.m26066b(m28621a3)) {
                phone2 = CallAppClipboardManager.m28710a(m28621a3[0]);
            }
        }
        String[] strArr = m28621a3;
        Phone phone3 = phone2;
        if (phone2 == null) {
            strArr = m28621a3;
            phone3 = phone2;
            if (StringUtils.m26037c(str4, "s.whatsapp.net")) {
                String[] m28621a4 = IMDataExtractionUtils.m28621a(str4, "@");
                strArr = m28621a4;
                phone3 = phone2;
                if (CollectionUtils.m26066b(m28621a4)) {
                    phone3 = CallAppClipboardManager.m28710a(m28621a4[0]);
                    strArr = m28621a4;
                }
            }
        }
        String[] strArr2 = strArr;
        Phone phone4 = phone3;
        if (phone3 == null) {
            strArr2 = strArr;
            phone4 = phone3;
            if (StringUtils.m26037c(str4, "g.us")) {
                String[] m28621a5 = IMDataExtractionUtils.m28621a(str4, VerificationLanguage.REGION_PREFIX);
                strArr2 = m28621a5;
                phone4 = phone3;
                if (CollectionUtils.m26066b(m28621a5)) {
                    phone4 = CallAppClipboardManager.m28710a(m28621a5[0]);
                    strArr2 = m28621a5;
                }
            }
        }
        if (phone4 == null) {
            builder = null;
        } else {
            ExtractedInfo.Builder builder3 = new ExtractedInfo.Builder();
            builder3.phoneAsRaw = phone4.getRawNumber();
            if (strArr2.length == 1) {
                String[] m28621a6 = IMDataExtractionUtils.m28621a(str, ":");
                builder = builder3;
                if (m28621a6 != null) {
                    builder = builder3;
                    if (m28621a6.length > 0) {
                        builder3.groupName = m28621a6[0];
                        builder = builder3;
                    }
                }
            } else {
                builder = builder3;
                if (strArr2.length > 1) {
                    builder = builder3;
                    if (!StringUtils.m26037c(strArr2[1], "s.whatsapp.net")) {
                        builder3.groupName = strArr2[1];
                        builder = builder3;
                    }
                }
            }
        }
        ExtractedInfo.Builder builder4 = builder;
        if (builder == null) {
            if (StringUtils.m26059a((CharSequence) str2) || (m28621a = IMDataExtractionUtils.m28621a(str2, ":")) == null || m28621a.length == 0 || (m28710a = CallAppClipboardManager.m28710a(m28621a[0])) == null) {
                builder4 = null;
            } else {
                ExtractedInfo.Builder builder5 = new ExtractedInfo.Builder();
                builder5.phoneAsRaw = m28710a.getRawNumber();
                builder5.groupName = (!StringUtils.m26059a((CharSequence) str3) && (m28621a2 = IMDataExtractionUtils.m28621a(str3, "@")) != null && m28621a2.length > 1) ? m28621a2[1] : null;
                builder4 = builder5;
            }
        }
        ExtractedInfo.Builder builder6 = builder4;
        if (builder4 == null) {
            if (StringUtils.m26059a((CharSequence) str3)) {
                builder2 = null;
            } else {
                String[] m28621a7 = IMDataExtractionUtils.m28621a(str3, "@");
                builder2 = null;
                if (m28621a7 != null) {
                    if (m28621a7.length == 0) {
                        builder2 = null;
                    } else {
                        int lastIndexOf = m28621a7[0].lastIndexOf("+");
                        if (lastIndexOf < 0) {
                            builder2 = null;
                        } else {
                            Phone m28710a2 = CallAppClipboardManager.m28710a(m28621a7[0].substring(lastIndexOf));
                            if (m28710a2 == null) {
                                builder2 = null;
                            } else {
                                ExtractedInfo.Builder builder7 = new ExtractedInfo.Builder();
                                builder7.phoneAsRaw = m28710a2.getRawNumber();
                                builder2 = builder7;
                                if (m28621a7.length > 1) {
                                    builder7.groupName = m28621a7[1];
                                    builder2 = builder7;
                                }
                            }
                        }
                    }
                }
            }
            builder6 = builder2;
        }
        return builder6;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
