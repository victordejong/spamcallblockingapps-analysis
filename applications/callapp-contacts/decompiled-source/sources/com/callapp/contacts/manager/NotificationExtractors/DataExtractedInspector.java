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

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f14893a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f14894b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.NotificationExtractors.DataExtractedInspector$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14895a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[IMDataExtractionUtils.RecognizedPersonOrigin.values().length];
            f14895a = iArr;
            try {
                iArr[IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14895a[IMDataExtractionUtils.RecognizedPersonOrigin.VONAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14895a[IMDataExtractionUtils.RecognizedPersonOrigin.VIBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14895a[IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static void a() {
        IMDataExtractionUtils.RecognizedPersonOrigin[] values;
        for (IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin : IMDataExtractionUtils.RecognizedPersonOrigin.values()) {
            int i = AnonymousClass1.f14895a[recognizedPersonOrigin.ordinal()];
            if (!(i == 1 || i == 2)) {
                if (i != 3) {
                    if (i != 4) {
                        CLog.a(DataExtractedInspector.class, recognizedPersonOrigin + " does not have integrity check!");
                    } else if (isTelegramSenderNameOK() && a(recognizedPersonOrigin)) {
                        Prefs.ch.set(Boolean.FALSE);
                        f14894b = Boolean.FALSE;
                    }
                } else if (isViberSenderNameOK() && a(recognizedPersonOrigin)) {
                    Prefs.cg.set(Boolean.FALSE);
                    f14893a = Boolean.FALSE;
                }
            }
        }
    }

    private static boolean a(IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
        if (IMDataExtractionUtils.a(recognizedPersonOrigin) != 5) {
            return false;
        }
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.IM_DATA_INTEGRITY, "IM " + recognizedPersonOrigin + ": consecutive same name with different numbers found", String.valueOf(recognizedPersonOrigin), 0.0d, new String[0]);
        return true;
    }

    public static boolean a(ExtractedInfo extractedInfo) {
        return AnonymousClass1.f14895a[extractedInfo.recognizedPersonOrigin.ordinal()] == 3 && StringUtils.b((CharSequence) extractedInfo.groupName) && StringUtils.c(extractedInfo.senderName, extractedInfo.phoneAsRaw);
    }

    public static boolean isTelegramSenderNameOK() {
        if (f14894b == null) {
            f14894b = Prefs.ch.get();
        }
        return f14894b.booleanValue();
    }

    public static boolean isViberSenderNameOK() {
        if (f14893a == null) {
            f14893a = Prefs.cg.get();
        }
        return f14893a.booleanValue();
    }
}
