package com.callapp.contacts.manager.NotificationExtractors;

import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector.class */
public class DataExtractedInspector {

    /* renamed from: a */
    private static Boolean f25723a;

    /* renamed from: b */
    private static Boolean f25724b;

    /* renamed from: com.callapp.contacts.manager.NotificationExtractors.DataExtractedInspector$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector$1.class */
    public static /* synthetic */ class C74111 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25725a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[IMDataExtractionUtils.RecognizedPersonOrigin.values().length];
            f25725a = iArr;
            try {
                iArr[IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25725a[IMDataExtractionUtils.RecognizedPersonOrigin.VONAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f25725a[IMDataExtractionUtils.RecognizedPersonOrigin.VIBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f25725a[IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static void m28636a() {
        IMDataExtractionUtils.RecognizedPersonOrigin[] values;
        for (IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin : IMDataExtractionUtils.RecognizedPersonOrigin.values()) {
            int i = C74111.f25725a[recognizedPersonOrigin.ordinal()];
            if (i != 1 && i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        CLog.m27611a(DataExtractedInspector.class, recognizedPersonOrigin + " does not have integrity check!");
                    } else if (isTelegramSenderNameOK() && m28635a(recognizedPersonOrigin)) {
                        Prefs.f26363ch.set(Boolean.FALSE);
                        f25724b = Boolean.FALSE;
                    }
                } else if (isViberSenderNameOK() && m28635a(recognizedPersonOrigin)) {
                    Prefs.f26362cg.set(Boolean.FALSE);
                    f25723a = Boolean.FALSE;
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m28635a(IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
        if (IMDataExtractionUtils.m28627a(recognizedPersonOrigin) == 5) {
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.mo28444a(Constants.IM_DATA_INTEGRITY, "IM " + recognizedPersonOrigin + ": consecutive same name with different numbers found", String.valueOf(recognizedPersonOrigin), 0.0d, new String[0]);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m28634a(ExtractedInfo extractedInfo) {
        return C74111.f25725a[extractedInfo.recognizedPersonOrigin.ordinal()] == 3 && StringUtils.m26045b((CharSequence) extractedInfo.groupName) && StringUtils.m26037c(extractedInfo.senderName, extractedInfo.phoneAsRaw);
    }

    public static boolean isTelegramSenderNameOK() {
        if (f25724b == null) {
            f25724b = Prefs.f26363ch.get();
        }
        return f25724b.booleanValue();
    }

    public static boolean isViberSenderNameOK() {
        if (f25723a == null) {
            f25723a = Prefs.f26362cg.get();
        }
        return f25723a.booleanValue();
    }
}
