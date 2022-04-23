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
    /* JADX INFO: Access modifiers changed from: package-private */
    public static IMDataExtractionUtils.ComType a(StatusBarNotification statusBarNotification) {
        if (statusBarNotification == null) {
            return null;
        }
        int c2 = IMDataExtractionUtils.c(statusBarNotification);
        return c2 != 1 ? c2 != 7 ? (c2 == 10 || c2 == 2131297329 || c2 == 2131689528 || c2 == 2131755057) ? IMDataExtractionUtils.ComType.CALL : IMDataExtractionUtils.ComType.UNKNOWN : IMDataExtractionUtils.ComType.MISSED_CALL : IMDataExtractionUtils.ComType.TEXT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IMDataExtractionUtils.RecognizedPersonOrigin a(String str) {
        return StringUtils.b(str, IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP.pkgName) ? IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP : IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP4B;
    }

    public static ExtractedInfo.Builder a(String str, String str2, String str3, String str4, Phone phone) {
        ExtractedInfo.Builder builder;
        String[] a2;
        Phone a3;
        String[] a4;
        String[] a5 = IMDataExtractionUtils.a(str, "@");
        Phone phone2 = phone;
        if (phone == null) {
            phone2 = phone;
            if (CollectionUtils.b(a5)) {
                phone2 = CallAppClipboardManager.a(a5[0]);
            }
        }
        String[] strArr = a5;
        Phone phone3 = phone2;
        if (phone2 == null) {
            strArr = a5;
            phone3 = phone2;
            if (StringUtils.c(str4, "s.whatsapp.net")) {
                String[] a6 = IMDataExtractionUtils.a(str4, "@");
                strArr = a6;
                phone3 = phone2;
                if (CollectionUtils.b(a6)) {
                    phone3 = CallAppClipboardManager.a(a6[0]);
                    strArr = a6;
                }
            }
        }
        String[] strArr2 = strArr;
        Phone phone4 = phone3;
        if (phone3 == null) {
            strArr2 = strArr;
            phone4 = phone3;
            if (StringUtils.c(str4, "g.us")) {
                String[] a7 = IMDataExtractionUtils.a(str4, VerificationLanguage.REGION_PREFIX);
                strArr2 = a7;
                phone4 = phone3;
                if (CollectionUtils.b(a7)) {
                    phone4 = CallAppClipboardManager.a(a7[0]);
                    strArr2 = a7;
                }
            }
        }
        if (phone4 == null) {
            builder = null;
        } else {
            ExtractedInfo.Builder builder2 = new ExtractedInfo.Builder();
            builder2.phoneAsRaw = phone4.getRawNumber();
            if (strArr2.length == 1) {
                String[] a8 = IMDataExtractionUtils.a(str, ":");
                builder = builder2;
                if (a8 != null) {
                    builder = builder2;
                    if (a8.length > 0) {
                        builder2.groupName = a8[0];
                        builder = builder2;
                    }
                }
            } else {
                builder = builder2;
                if (strArr2.length > 1) {
                    builder = builder2;
                    if (!StringUtils.c(strArr2[1], "s.whatsapp.net")) {
                        builder2.groupName = strArr2[1];
                        builder = builder2;
                    }
                }
            }
        }
        ExtractedInfo.Builder builder3 = builder;
        if (builder == null) {
            if (StringUtils.a((CharSequence) str2) || (a2 = IMDataExtractionUtils.a(str2, ":")) == null || a2.length == 0 || (a3 = CallAppClipboardManager.a(a2[0])) == null) {
                builder3 = null;
            } else {
                ExtractedInfo.Builder builder4 = new ExtractedInfo.Builder();
                builder4.phoneAsRaw = a3.getRawNumber();
                builder4.groupName = (!StringUtils.a((CharSequence) str3) && (a4 = IMDataExtractionUtils.a(str3, "@")) != null && a4.length > 1) ? a4[1] : null;
                builder3 = builder4;
            }
        }
        ExtractedInfo.Builder builder5 = builder3;
        if (builder3 == null) {
            if (StringUtils.a((CharSequence) str3)) {
                builder5 = null;
            } else {
                String[] a9 = IMDataExtractionUtils.a(str3, "@");
                builder5 = null;
                if (a9 != null) {
                    if (a9.length == 0) {
                        builder5 = null;
                    } else {
                        int lastIndexOf = a9[0].lastIndexOf("+");
                        if (lastIndexOf < 0) {
                            builder5 = null;
                        } else {
                            Phone a10 = CallAppClipboardManager.a(a9[0].substring(lastIndexOf));
                            if (a10 == null) {
                                builder5 = null;
                            } else {
                                ExtractedInfo.Builder builder6 = new ExtractedInfo.Builder();
                                builder6.phoneAsRaw = a10.getRawNumber();
                                builder5 = builder6;
                                if (a9.length > 1) {
                                    builder6.groupName = a9[1];
                                    builder5 = builder6;
                                }
                            }
                        }
                    }
                }
            }
        }
        return builder5;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
