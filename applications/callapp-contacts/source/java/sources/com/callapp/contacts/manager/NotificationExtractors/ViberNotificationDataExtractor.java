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

    /* renamed from: com.callapp.contacts.manager.NotificationExtractors.ViberNotificationDataExtractor$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor$1.class */
    public static /* synthetic */ class C74151 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25734a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[IMDataExtractionUtils.ComType.values().length];
            f25734a = iArr;
            try {
                iArr[IMDataExtractionUtils.ComType.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25734a[IMDataExtractionUtils.ComType.MISSED_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f25734a[IMDataExtractionUtils.ComType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: a */
    public static ExtractedInfo.Builder m28587a(StatusBarNotification statusBarNotification) {
        ExtractedInfo.Builder m28602e = IMDataExtractionUtils.m28602e(statusBarNotification);
        if (m28602e == null) {
            Phone m28710a = CallAppClipboardManager.m28710a(IMDataExtractionUtils.m28631a(statusBarNotification));
            Phone phone = m28710a;
            if (m28710a == null) {
                phone = CallAppClipboardManager.m28710a(IMDataExtractionUtils.m28615b(statusBarNotification));
            }
            if (phone != null) {
                ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
                builder.phoneAsRaw = phone.getRawNumber();
                return builder;
            }
        }
        return m28602e;
    }

    /* renamed from: a */
    public static void m28586a(ExtractedInfo.Builder builder, StatusBarNotification statusBarNotification) {
        String m28631a = IMDataExtractionUtils.m28631a(statusBarNotification);
        String m28615b = IMDataExtractionUtils.m28615b(statusBarNotification);
        String m28598h = IMDataExtractionUtils.m28598h(statusBarNotification);
        String str = builder.phoneAsRaw;
        int i = C74151.f25734a[builder.comType.ordinal()];
        if (i == 1) {
            builder.senderName = m28631a;
        } else if (i == 2) {
            builder.senderName = m28615b;
        } else if (i != 3 || !StringUtils.m26045b((CharSequence) m28631a) || !StringUtils.m26045b((CharSequence) m28615b) || !StringUtils.m26045b((CharSequence) m28598h)) {
        } else {
            String m26021i = StringUtils.m26021i(m28598h, ":");
            String m26023h = StringUtils.m26023h(m28598h, ":");
            if (!StringUtils.m26045b((CharSequence) m26021i) || !StringUtils.m26045b((CharSequence) m26023h)) {
                return;
            }
            if (!StringUtils.m26042b(m26021i.trim(), m28631a.trim()) || !StringUtils.m26042b(m26023h.trim(), m28615b.trim())) {
                String m26021i2 = StringUtils.m26021i(m28615b, ":");
                if (StringUtils.m26045b((CharSequence) m26021i2) && !StringUtils.m26037c(m26021i2.trim(), str)) {
                    builder.senderName = m26021i2.trim();
                }
                builder.groupName = m28631a.trim();
            } else if (StringUtils.m26042b(m28631a.trim(), str)) {
            } else {
                if (!m28598h.endsWith(m28631a)) {
                    builder.senderName = m28631a.trim();
                } else {
                    builder.groupName = m28631a.trim();
                }
            }
        }
    }

    /* renamed from: b */
    public static IMDataExtractionUtils.ComType m28585b(StatusBarNotification statusBarNotification) {
        String m28596j = IMDataExtractionUtils.m28596j(statusBarNotification);
        return StringUtils.m26059a((CharSequence) m28596j) ? IMDataExtractionUtils.ComType.UNKNOWN : IMDataExtractionUtils.f25726a.equals(m28596j) ? "missed_call".equals(IMDataExtractionUtils.m28595k(statusBarNotification)) ? IMDataExtractionUtils.ComType.MISSED_CALL : IMDataExtractionUtils.ComType.TEXT : IMDataExtractionUtils.f25727b.equals(m28596j) ? IMDataExtractionUtils.ComType.CALL : IMDataExtractionUtils.ComType.UNKNOWN;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
