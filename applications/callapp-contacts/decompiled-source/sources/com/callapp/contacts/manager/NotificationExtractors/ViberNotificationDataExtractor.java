package com.callapp.contacts.manager.NotificationExtractors;

import android.service.notification.StatusBarNotification;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor.class */
public class ViberNotificationDataExtractor implements ManagedLifecycle {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.NotificationExtractors.ViberNotificationDataExtractor$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14904a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[IMDataExtractionUtils.ComType.values().length];
            f14904a = iArr;
            try {
                iArr[IMDataExtractionUtils.ComType.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14904a[IMDataExtractionUtils.ComType.MISSED_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14904a[IMDataExtractionUtils.ComType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExtractedInfo.Builder a(StatusBarNotification statusBarNotification) {
        ExtractedInfo.Builder e = IMDataExtractionUtils.e(statusBarNotification);
        if (e == null) {
            Phone a2 = CallAppClipboardManager.a(IMDataExtractionUtils.a(statusBarNotification));
            Phone phone = a2;
            if (a2 == null) {
                phone = CallAppClipboardManager.a(IMDataExtractionUtils.b(statusBarNotification));
            }
            if (phone != null) {
                ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
                builder.phoneAsRaw = phone.getRawNumber();
                return builder;
            }
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ExtractedInfo.Builder builder, StatusBarNotification statusBarNotification) {
        String a2 = IMDataExtractionUtils.a(statusBarNotification);
        String b2 = IMDataExtractionUtils.b(statusBarNotification);
        String h = IMDataExtractionUtils.h(statusBarNotification);
        String str = builder.phoneAsRaw;
        int i = AnonymousClass1.f14904a[builder.comType.ordinal()];
        if (i == 1) {
            builder.senderName = a2;
        } else if (i == 2) {
            builder.senderName = b2;
        } else if (i == 3 && StringUtils.b((CharSequence) a2) && StringUtils.b((CharSequence) b2) && StringUtils.b((CharSequence) h)) {
            String i2 = StringUtils.i(h, ":");
            String h2 = StringUtils.h(h, ":");
            if (StringUtils.b((CharSequence) i2) && StringUtils.b((CharSequence) h2)) {
                if (!StringUtils.b(i2.trim(), a2.trim()) || !StringUtils.b(h2.trim(), b2.trim())) {
                    String i3 = StringUtils.i(b2, ":");
                    if (StringUtils.b((CharSequence) i3) && !StringUtils.c(i3.trim(), str)) {
                        builder.senderName = i3.trim();
                    }
                    builder.groupName = a2.trim();
                } else if (StringUtils.b(a2.trim(), str)) {
                } else {
                    if (!h.endsWith(a2)) {
                        builder.senderName = a2.trim();
                    } else {
                        builder.groupName = a2.trim();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IMDataExtractionUtils.ComType b(StatusBarNotification statusBarNotification) {
        String j = IMDataExtractionUtils.j(statusBarNotification);
        return StringUtils.a((CharSequence) j) ? IMDataExtractionUtils.ComType.UNKNOWN : IMDataExtractionUtils.f14896a.equals(j) ? "missed_call".equals(IMDataExtractionUtils.k(statusBarNotification)) ? IMDataExtractionUtils.ComType.MISSED_CALL : IMDataExtractionUtils.ComType.TEXT : IMDataExtractionUtils.f14897b.equals(j) ? IMDataExtractionUtils.ComType.CALL : IMDataExtractionUtils.ComType.UNKNOWN;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
