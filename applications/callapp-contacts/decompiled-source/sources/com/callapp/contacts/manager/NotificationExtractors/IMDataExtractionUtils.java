package com.callapp.contacts.manager.NotificationExtractors;

import android.app.Notification;
import android.app.Person;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.service.notification.StatusBarNotification;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.ExtractedInfo_;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.converter.PropertyConverter;
import io.objectbox.g;
import io.objectbox.query.QueryBuilder;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils.class */
public class IMDataExtractionUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final String f14896a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f14897b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f14898c;

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap<String, RecognizedPersonOrigin> f14899d;

    /* renamed from: com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$3.class */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14902a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14903b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c9 -> B:54:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cd -> B:66:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d1 -> B:62:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d5 -> B:74:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:70:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dd -> B:82:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e1 -> B:78:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e5 -> B:56:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e9 -> B:52:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ed -> B:22:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f1 -> B:60:0x0090). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:72:0x009b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00f9 -> B:68:0x00a6). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00fd -> B:80:0x00b1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0101 -> B:76:0x00bc). Please submit an issue!!! */
        static {
            int[] iArr = new int[RecognizedPersonOrigin.values().length];
            f14903b = iArr;
            try {
                iArr[RecognizedPersonOrigin.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14903b[RecognizedPersonOrigin.WHATSAPP4B.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14903b[RecognizedPersonOrigin.VIBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14903b[RecognizedPersonOrigin.TELEGRAM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14903b[RecognizedPersonOrigin.VONAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14903b[RecognizedPersonOrigin.SMS_MESSAGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f14903b[RecognizedPersonOrigin.SEARCH.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f14903b[RecognizedPersonOrigin.CALL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f14903b[RecognizedPersonOrigin.CLIPBOARD.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f14903b[RecognizedPersonOrigin.SIGNAL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            int[] iArr2 = new int[ComType.values().length];
            f14902a = iArr2;
            try {
                iArr2[ComType.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f14902a[ComType.MISSED_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f14902a[ComType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f14902a[ComType.SEARCH.ordinal()] = 4;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f14902a[ComType.CLIPBOARD.ordinal()] = 5;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f14902a[ComType.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType.class */
    public enum ComType {
        UNKNOWN,
        TEXT,
        CALL,
        MISSED_CALL,
        SEARCH,
        CLIPBOARD
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter.class */
    public static class ComTypeConverter implements PropertyConverter<ComType, Integer> {
        public Integer convertToDatabaseValue(ComType comType) {
            if (comType == null) {
                return null;
            }
            return Integer.valueOf(comType.ordinal());
        }

        public ComType convertToEntityProperty(Integer num) {
            ComType[] values;
            if (num == null) {
                return null;
            }
            for (ComType comType : ComType.values()) {
                if (comType.ordinal() == num.intValue()) {
                    return comType;
                }
            }
            return ComType.UNKNOWN;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification.class */
    public static class ImDataForCallappNotification extends NotificationManager.ContactDataForNotification<ExtractedInfo> {
        public ImDataForCallappNotification(ExtractedInfo extractedInfo) {
            super(extractedInfo);
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public String getNameForNotificationLine() {
            String nameForNotificationLine = super.getNameForNotificationLine();
            String str = nameForNotificationLine;
            if (StringUtils.b((CharSequence) nameForNotificationLine)) {
                str = nameForNotificationLine;
                if (StringUtils.b((CharSequence) ((ExtractedInfo) this.f14915a).groupName)) {
                    str = nameForNotificationLine + ". " + Activities.a(2131887012, ((ExtractedInfo) this.f14915a).groupName);
                }
            }
            return str;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Date getSourceDate() {
            return new Date(((ExtractedInfo) this.f14915a).when);
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public String getSourceName() {
            return ((ExtractedInfo) this.f14915a).senderName;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Phone getSourcePhone() {
            return PhoneManager.get().a(((ExtractedInfo) this.f14915a).phoneAsRaw);
        }

        public String toString() {
            return this.f14915a == 0 ? "" : ((ExtractedInfo) this.f14915a).toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin.class */
    public enum RecognizedPersonOrigin {
        WHATSAPP(Constants.WHATSAPP_ACCOUNT_TYPE, 2131886997, true, null, true, Singletons.SenderType.WHATSAPP, 0, 2131099745, 2131099744),
        SIGNAL(Constants.SIGNAL_ACCOUNT_TYPE, 2131886989, true, null, true, Singletons.SenderType.SIGNAL, 1, 2131099735, 2131099734),
        VIBER(Constants.VIBER_ACCOUNT_TYPE, 2131886994, true, null, true, Singletons.SenderType.VIBER, 2, 2131099741, 2131099740),
        TELEGRAM(Constants.TELEGRAM_ACCOUNT_TYPE, 2131886992, true, null, true, Singletons.SenderType.TELEGRAM, 3, 2131099739, 2131099738),
        VONAGE("com.vonage.TimeToCall", 2131886995, true, null, true, null, 4, 2131099743, 2131099742),
        SMS_MESSAGE("", 2131886991, false, ComType.TEXT, true, Singletons.SenderType.SMS, 5, 2131099737, 2131099736),
        SEARCH("", 2131886988, false, ComType.SEARCH, false, null, 6, 2131099733, 2131099732),
        CALL("", 2131886984, false, ComType.CALL, false, null, 7, 2131099733, 2131099732),
        CLIPBOARD("", 2131886985, false, ComType.CLIPBOARD, false, null, 8, 2131099733, 2131099732),
        WHATSAPP4B(Constants.WHATSAPP_4B_ACCOUNT_TYPE, 2131886998, true, null, true, Singletons.SenderType.WHATSAPP4B, 9, 2131099745, 2131099744);
        
        public final int colorDark;
        public final int colorLight;
        public final ComType comtype;
        public final int imNameStringResId;
        public final int index;
        public final boolean isIM;
        public final String pkgName;
        public final Singletons.SenderType senderType;
        public final boolean showsRecognizedNotification;

        RecognizedPersonOrigin(String str, int i, boolean z, ComType comType, boolean z2, Singletons.SenderType senderType, int i2, int i3, int i4) {
            this.pkgName = str;
            this.imNameStringResId = i;
            this.isIM = z;
            this.comtype = comType;
            this.showsRecognizedNotification = z2;
            this.senderType = senderType;
            this.index = i2;
            this.colorLight = i3;
            this.colorDark = i4;
        }

        public final String getDisplayName() {
            return Activities.getString(this.imNameStringResId);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter.class */
    public static class RecognizedPersonOriginConverter implements PropertyConverter<RecognizedPersonOrigin, Integer> {
        public Integer convertToDatabaseValue(RecognizedPersonOrigin recognizedPersonOrigin) {
            if (recognizedPersonOrigin == null) {
                return null;
            }
            return Integer.valueOf(recognizedPersonOrigin.ordinal());
        }

        public RecognizedPersonOrigin convertToEntityProperty(Integer num) {
            RecognizedPersonOrigin[] values;
            if (num == null) {
                return null;
            }
            for (RecognizedPersonOrigin recognizedPersonOrigin : RecognizedPersonOrigin.values()) {
                if (recognizedPersonOrigin.ordinal() == num.intValue()) {
                    return recognizedPersonOrigin;
                }
            }
            return RecognizedPersonOrigin.SEARCH;
        }
    }

    static {
        RecognizedPersonOrigin[] values;
        f14896a = Build.VERSION.SDK_INT >= 21 ? "msg" : "android.msg";
        f14897b = Build.VERSION.SDK_INT >= 21 ? "call" : "android.call";
        f14898c = new Object();
        f14899d = new HashMap<>();
        for (RecognizedPersonOrigin recognizedPersonOrigin : RecognizedPersonOrigin.values()) {
            f14899d.put(recognizedPersonOrigin.pkgName, recognizedPersonOrigin);
        }
    }

    public static int a(ComType comType) {
        int i = AnonymousClass3.f14902a[comType.ordinal()];
        if (i == 1 || i == 2) {
            return 2131231703;
        }
        if (i == 3) {
            return 2131231704;
        }
        if (i != 4) {
            return i != 5 ? 0 : 2131231595;
        }
        return 2131231873;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecognizedPersonOrigin recognizedPersonOrigin) {
        List a2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal()).a((g) ExtractedInfo_.when, 1).a().a(5L);
        int i = 1;
        if (a2 != null) {
            i = 1;
            if (a2.size() == 5) {
                ExtractedInfo extractedInfo = (ExtractedInfo) a2.get(0);
                i = 1;
                for (int i2 = 1; i2 < a2.size(); i2++) {
                    if (!StringUtils.b(extractedInfo.senderName, ((ExtractedInfo) a2.get(i2)).senderName)) {
                        break;
                    }
                    i++;
                }
            }
        }
        return i;
    }

    private static Phone a(Person person) {
        List<String> phoneNumbers;
        String e = StringUtils.e(person.getUri());
        if (StringUtils.b((CharSequence) e)) {
            ContactLookupData contactLookupData = (ContactLookupData) CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().a(ContactLookupData_.contactId, Long.valueOf(e).longValue()).a().a();
            if (contactLookupData == null || (phoneNumbers = contactLookupData.getPhoneNumbers()) == null || phoneNumbers.size() <= 0) {
                return null;
            }
            String str = (String) new ArrayList(phoneNumbers).get(0);
            if (StringUtils.b((CharSequence) str)) {
                return CallAppClipboardManager.a(str);
            }
            return null;
        } else if (!StringUtils.b(person.getName())) {
            return null;
        } else {
            String charSequence = person.getName().toString();
            if (StringUtils.b((CharSequence) charSequence)) {
                return CallAppClipboardManager.a(charSequence);
            }
            return null;
        }
    }

    private static Phone a(Object obj) {
        String str;
        if (obj instanceof String[]) {
            String[] strArr = (String[]) obj;
            if (strArr.length == 0) {
                return null;
            }
            str = strArr[0];
        } else {
            if (obj instanceof List) {
                List list = (List) obj;
                if (CollectionUtils.b(list)) {
                    Object obj2 = list.get(0);
                    if (Build.VERSION.SDK_INT >= 28 && (obj2 instanceof Person)) {
                        str = ((Person) obj2).getUri();
                    } else if (obj2 instanceof String) {
                        str = (String) obj2;
                    }
                }
            }
            str = null;
        }
        if (!StringUtils.b((CharSequence) str)) {
            return null;
        }
        try {
            URI create = URI.create(str);
            if (!MRAIDNativeFeature.TEL.equals(create.getScheme())) {
                return null;
            }
            Phone a2 = PhoneManager.get().a(create.getSchemeSpecificPart());
            if (a2.isValid()) {
                return a2;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(StatusBarNotification statusBarNotification) {
        return a(statusBarNotification, "android.title");
    }

    private static String a(StatusBarNotification statusBarNotification, String str) {
        Object b2 = b(statusBarNotification, str);
        if (b2 == null) {
            return null;
        }
        try {
            return RegexUtils.m(b2.toString());
        } catch (ClassCastException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HashMap<Phone, Bitmap> a(StatusBarNotification statusBarNotification, boolean z, Phone phone) {
        Icon icon;
        BitmapDrawable bitmapDrawable;
        HashMap<Phone, Bitmap> hashMap = null;
        if (statusBarNotification != null) {
            if (statusBarNotification.getNotification() == null) {
                hashMap = null;
            } else {
                HashMap<Phone, Bitmap> hashMap2 = null;
                if (Build.VERSION.SDK_INT >= 28) {
                    ArrayList<Person> m = m(statusBarNotification);
                    hashMap2 = null;
                    if (m != null) {
                        hashMap2 = new HashMap<>();
                        Iterator<Person> it2 = m.iterator();
                        while (it2.hasNext()) {
                            Person next = it2.next();
                            Phone a2 = a(next);
                            if (a2 != null) {
                                Bitmap bitmap = (next == null || (icon = next.getIcon()) == null || (bitmapDrawable = (BitmapDrawable) icon.loadDrawable(CallAppApplication.get())) == null) ? null : bitmapDrawable.getBitmap();
                                if (bitmap != null) {
                                    hashMap2.put(a2, bitmap);
                                }
                            }
                        }
                    }
                }
                hashMap = hashMap2;
                if (!z) {
                    hashMap = hashMap2;
                    if (CollectionUtils.a(hashMap2)) {
                        hashMap = new HashMap<>();
                        hashMap.put(phone, statusBarNotification.getNotification().largeIcon);
                    }
                }
            }
        }
        return hashMap;
    }

    public static List<ExtractedInfo> a(String str) {
        List<ExtractedInfo> c2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().c(ExtractedInfo_.phoneAsRaw, str).d().b(ExtractedInfo_.displayName).d().b(ExtractedInfo_.displayName, "").a((g) ExtractedInfo_.displayName, 0).a().c();
        List<ExtractedInfo> list = c2;
        if (c2 == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public static void a() {
        RecognizedPersonOrigin[] values;
        if (Activities.isNotificationListenerServiceSupportedOnDevice() && AbTestUtils.getGroupDimension() == 3) {
            for (RecognizedPersonOrigin recognizedPersonOrigin : RecognizedPersonOrigin.values()) {
                long e = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal()).a().e();
                if (e != 0) {
                    long j = e < 10 ? 1L : (e / 10) * 10;
                    AnalyticsManager.get().a(Constants.CALLAPP_PLUS, recognizedPersonOrigin + " Identified contacts count report", String.valueOf(j), 0.0d, new String[0]);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ExtractedInfo.Builder builder) {
        if (StringUtils.b((CharSequence) builder.phoneAsRaw)) {
            if (a(builder.senderName, PhoneManager.get().a(builder.phoneAsRaw))) {
                builder.senderName = null;
            }
            if (a(builder.groupName, PhoneManager.get().a(builder.phoneAsRaw))) {
                builder.groupName = null;
            }
        }
    }

    public static void a(Phone phone, RecognizedPersonOrigin recognizedPersonOrigin) {
        QueryBuilder e = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e();
        e.a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber());
        if (recognizedPersonOrigin != null) {
            e.a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal());
        }
        e.a().f();
    }

    public static void a(final Phone phone, final String str) {
        new Task() { // from class: com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                synchronized (IMDataExtractionUtils.f14898c) {
                    a d2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class);
                    List<ExtractedInfo> c2 = d2.e().a(ExtractedInfo_.phoneAsRaw, Phone.this.getRawNumber()).a().c();
                    if (CollectionUtils.b(c2)) {
                        for (ExtractedInfo extractedInfo : c2) {
                            if (!str.equals(extractedInfo.displayName)) {
                                extractedInfo.setDisplayName(str);
                                d2.a((a) extractedInfo);
                            }
                        }
                    }
                }
            }
        }.execute();
    }

    public static void a(List<ExtractedInfo> list) {
        synchronized (f14898c) {
            CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).a((Collection) list);
        }
    }

    public static boolean a(RecognizedPersonOrigin recognizedPersonOrigin, Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().a(ExtractedInfo_.recognizedPersonOrigin, (long) recognizedPersonOrigin.ordinal()).d().a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber()).a().e() > 0;
    }

    public static boolean a(ExtractedInfo extractedInfo) {
        synchronized (f14898c) {
            if (extractedInfo != null) {
                if (extractedInfo.recognizedPersonOrigin != null && !StringUtils.a((CharSequence) extractedInfo.phoneAsRaw)) {
                    a d2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class);
                    ExtractedInfo extractedInfo2 = (ExtractedInfo) d2.e().a(ExtractedInfo_.recognizedPersonOrigin, extractedInfo.recognizedPersonOrigin.ordinal()).a(ExtractedInfo_.phoneAsRaw, extractedInfo.phoneAsRaw).a().a();
                    if (extractedInfo2 == null) {
                        Prefs.ei.b(1);
                        EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                        extractedInfo.firstSeen = new Date().getTime();
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.a(Constants.CALLAPP_PLUS, "IdentifyCallAppPlusPhoneNumber_" + extractedInfo.recognizedPersonOrigin.name(), extractedInfo.phoneAsRaw);
                    } else {
                        if (extractedInfo.when > 0) {
                            extractedInfo2.when = extractedInfo.when;
                        }
                        if (!(extractedInfo.comType == null || extractedInfo.comType == ComType.UNKNOWN)) {
                            extractedInfo2.comType = extractedInfo.comType;
                        }
                        if (StringUtils.b((CharSequence) extractedInfo.senderName) || DataExtractedInspector.a(extractedInfo2)) {
                            extractedInfo2.senderName = extractedInfo.senderName;
                        }
                        extractedInfo2.groupName = extractedInfo.groupName;
                        extractedInfo2.disableNotification = false;
                        extractedInfo = extractedInfo2;
                    }
                    d2.a((a) extractedInfo);
                    new Task() { // from class: com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils.2
                        @Override // com.callapp.contacts.manager.task.Task
                        public final void doTask() {
                            IMDataExtractionUtils.f();
                        }
                    }.execute();
                    return true;
                }
            }
            return false;
        }
    }

    private static boolean a(String str, Phone phone) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        return PhoneManager.get().a(str).equals(phone);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] a(CharSequence charSequence, String str) {
        if (charSequence == null) {
            return null;
        }
        if (StringUtils.a((CharSequence) str)) {
            return new String[]{charSequence.toString()};
        }
        return RegexUtils.a("\\s*" + str + "\\s*").split(charSequence, 2);
    }

    public static int b(RecognizedPersonOrigin recognizedPersonOrigin) {
        switch (AnonymousClass3.f14903b[recognizedPersonOrigin.ordinal()]) {
            case 1:
                return 2131231975;
            case 2:
                return 2131231974;
            case 3:
                return 2131231961;
            case 4:
                return 2131231923;
            case 5:
                return 2131231970;
            case 6:
                return 2131231896;
            case 7:
                return 2131231871;
            case 8:
                return 2131231537;
            case 9:
                return 2131231596;
            case 10:
                return 2131231887;
            default:
                return 0;
        }
    }

    private static Object b(StatusBarNotification statusBarNotification, String str) {
        Notification notification;
        Bundle bundle;
        if (str == null || statusBarNotification == null || (notification = statusBarNotification.getNotification()) == null || (bundle = notification.extras) == null) {
            return null;
        }
        return bundle.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(StatusBarNotification statusBarNotification) {
        return a(statusBarNotification, "android.text");
    }

    public static String b(RecognizedPersonOrigin recognizedPersonOrigin, Phone phone) {
        ExtractedInfo extractedInfo = (ExtractedInfo) CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal()).a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber()).b(ExtractedInfo_.senderName).a().a();
        if (extractedInfo != null) {
            return extractedInfo.senderName;
        }
        return null;
    }

    public static List<ExtractedInfo> b(String str) {
        String[] k = StringUtils.k(str, "\\s+");
        if (!CollectionUtils.b(k)) {
            return Collections.emptyList();
        }
        QueryBuilder e = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e();
        for (String str2 : k) {
            e.c(ExtractedInfo_.unAccentName, str2);
        }
        List<ExtractedInfo> c2 = e.d().b(ExtractedInfo_.displayName).d().b(ExtractedInfo_.displayName, "").a((g) ExtractedInfo_.displayName, 0).a().c();
        List<ExtractedInfo> list = c2;
        if (c2 == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public static void b() {
        if (Prefs.bW != null) {
            Prefs.bW.set(new Date());
        }
    }

    public static void b(ExtractedInfo extractedInfo) {
        synchronized (f14898c) {
            CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).a((a) extractedInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            return statusBarNotification.getId();
        }
        return 0;
    }

    public static int c(RecognizedPersonOrigin recognizedPersonOrigin) {
        switch (AnonymousClass3.f14903b[recognizedPersonOrigin.ordinal()]) {
            case 1:
            case 2:
                return 2131100226;
            case 3:
                return 2131100211;
            case 4:
                return 2131100136;
            case 5:
                return 2131100214;
            case 6:
                return 2131100121;
            case 7:
                return 2131099724;
            case 8:
                return 2131099722;
            case 9:
                return 2131099723;
            case 10:
                return 2131100117;
            default:
                return 0;
        }
    }

    public static List<ExtractedInfo> c(String str) {
        QueryBuilder c2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().c(ExtractedInfo_.phoneAsRaw, str);
        c2.c().c(ExtractedInfo_.nameT9Format, "0".concat(String.valueOf(str)));
        c2.c().c(ExtractedInfo_.nameT9FormatNoZero, str);
        List<ExtractedInfo> c3 = c2.d().b(ExtractedInfo_.displayName).d().b(ExtractedInfo_.displayName, "").a((g) ExtractedInfo_.senderName, 0).a().c();
        List<ExtractedInfo> list = c3;
        if (c3 == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public static void c() {
        DataExtractedInspector.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long d(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            return statusBarNotification.getPostTime();
        }
        return 0L;
    }

    public static void d() {
        synchronized (f14898c) {
            a d2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class);
            List<ExtractedInfo> c2 = d2.e().a(ExtractedInfo_.nameT9FormatNoZero, "").a().c();
            for (ExtractedInfo extractedInfo : c2) {
                extractedInfo.setDisplayName(extractedInfo.displayName);
            }
            d2.a((Collection) c2);
        }
    }

    public static ExtractedInfo.Builder e(StatusBarNotification statusBarNotification) {
        Phone a2 = Build.VERSION.SDK_INT >= 28 ? a(b(statusBarNotification, "android.people.list")) : a(b(statusBarNotification, "android.people"));
        if (a2 == null) {
            return null;
        }
        ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
        builder.phoneAsRaw = a2.getRawNumber();
        return builder;
    }

    static /* synthetic */ long f() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class);
        if (d2.e().a((g) ExtractedInfo_.starred, false).a().e() <= 1000) {
            return 0L;
        }
        List a2 = d2.e().a((g) ExtractedInfo_.starred, false).a((g) ExtractedInfo_.when, 1).a().a(1000L);
        return d2.e().c(ExtractedInfo_.when, ((ExtractedInfo) a2.get(a2.size() - 1)).when).a().f();
    }

    public static boolean f(StatusBarNotification statusBarNotification) {
        return l(statusBarNotification) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExtractedInfo g(StatusBarNotification statusBarNotification) {
        ArrayList<Person> m;
        RecognizedPersonOrigin l = l(statusBarNotification);
        if (l == null) {
            return null;
        }
        int i = AnonymousClass3.f14903b[l.ordinal()];
        if (i == 1 || i == 2) {
            Singletons.get().getWhatsAppNotificationDataExtractor();
            ExtractedInfo.Builder a2 = WhatsAppNotificationDataExtractor.a(a(statusBarNotification, "android.title"), a(statusBarNotification, "android.text"), h(statusBarNotification), k(statusBarNotification), (statusBarNotification == null || Build.VERSION.SDK_INT < 28 || (m = m(statusBarNotification)) == null || m.size() != 1) ? null : a(m.get(0)));
            if (a2 == null) {
                return null;
            }
            a2.comType = WhatsAppNotificationDataExtractor.a(statusBarNotification);
            a2.recognizedPersonOrigin = WhatsAppNotificationDataExtractor.a(statusBarNotification.getPackageName());
            a2.when = d(statusBarNotification);
            a(a2);
            return a2.build();
        } else if (i == 3) {
            Singletons.get().getViberNotificationDataExtractor();
            ComType b2 = ViberNotificationDataExtractor.b(statusBarNotification);
            ExtractedInfo.Builder a3 = ViberNotificationDataExtractor.a(statusBarNotification);
            if (a3 == null || !StringUtils.b((CharSequence) a3.phoneAsRaw)) {
                return null;
            }
            a3.comType = b2;
            ViberNotificationDataExtractor.a(a3, statusBarNotification);
            a3.recognizedPersonOrigin = RecognizedPersonOrigin.VIBER;
            a3.when = d(statusBarNotification);
            a(a3);
            if (StringUtils.a("unknown", a3.senderName, true) == 0) {
                CLog.a(ViberNotificationDataExtractor.class, "unknown sender name in Viber found:\nTitle: " + a(statusBarNotification, "android.title") + "\nText " + a(statusBarNotification, "android.text") + "\nTickerText: " + h(statusBarNotification) + "\nPhone: " + a3.phoneAsRaw);
                a3.senderName = null;
            }
            return a3.build();
        } else if (i == 4) {
            Singletons.get().getTelegramNotificationDataExtractor();
            return TelegramNotificationDataExtractor.a(statusBarNotification);
        } else if (i != 5) {
            if (i != 10) {
                return null;
            }
            Singletons.get().getSignalNotificationDataExtractor();
            ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
            if (statusBarNotification.getId() == 313388) {
                builder.comType = ComType.CALL;
            } else {
                Phone a4 = SignalNotificationDataExtractor.a(statusBarNotification);
                if (a4 != null) {
                    builder.phoneAsRaw = a4.getRawNumber();
                    if (a(statusBarNotification, "android.text").contains("Missed call")) {
                        builder.comType = ComType.MISSED_CALL;
                    } else {
                        builder.comType = ComType.TEXT;
                    }
                } else {
                    Phone b3 = SignalNotificationDataExtractor.b(statusBarNotification);
                    if (b3 != null) {
                        builder.phoneAsRaw = b3.getRawNumber();
                        builder.comType = ComType.TEXT;
                        builder.groupName = a(statusBarNotification, "android.title");
                    } else {
                        builder.phoneAsRaw = "";
                    }
                }
            }
            builder.when = d(statusBarNotification);
            builder.recognizedPersonOrigin = RecognizedPersonOrigin.SIGNAL;
            return builder.build();
        } else if (!Prefs.n.get().booleanValue()) {
            return null;
        } else {
            Singletons.get().getVonageNotificationDataExtractor();
            ExtractedInfo.Builder a5 = VonageNotificationDataExtractor.a(a(statusBarNotification, "android.title"), h(statusBarNotification));
            if (a5 == null || !StringUtils.b((CharSequence) a5.phoneAsRaw)) {
                return null;
            }
            a5.comType = VonageNotificationDataExtractor.a(statusBarNotification);
            a5.recognizedPersonOrigin = RecognizedPersonOrigin.VONAGE;
            a5.when = d(statusBarNotification);
            a(a5);
            return a5.build();
        }
    }

    public static List<ExtractedInfo> getAllImNotificationData() {
        return CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().a((g) ExtractedInfo_.when, 1).a().c();
    }

    public static List<ExtractedInfo> getDataSinceLastCheck() {
        return CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).e().d(ExtractedInfo_.when, Prefs.bW.get().getTime()).a((g) ExtractedInfo_.disableNotification, false).a().c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(StatusBarNotification statusBarNotification) {
        Notification notification;
        if (statusBarNotification == null || (notification = statusBarNotification.getNotification()) == null || notification.tickerText == null) {
            return null;
        }
        return RegexUtils.m(notification.tickerText.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence i(StatusBarNotification statusBarNotification) {
        ArrayList<Person> m;
        if (Build.VERSION.SDK_INT < 28 || statusBarNotification == null || (m = m(statusBarNotification)) == null || m.isEmpty()) {
            return null;
        }
        return m.get(0).getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(StatusBarNotification statusBarNotification) {
        Notification notification;
        if (statusBarNotification == null || (notification = statusBarNotification.getNotification()) == null) {
            return null;
        }
        return notification.category;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String k(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            return statusBarNotification.getTag();
        }
        return null;
    }

    private static RecognizedPersonOrigin l(StatusBarNotification statusBarNotification) {
        return f14899d.get(statusBarNotification.getPackageName());
    }

    private static ArrayList<Person> m(StatusBarNotification statusBarNotification) {
        if (Build.VERSION.SDK_INT < 28 || statusBarNotification == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Notification notification = statusBarNotification.getNotification();
        if (notification == null || notification.extras == null) {
            return null;
        }
        Parcelable[] parcelableArray = notification.extras.getParcelableArray("android.messages");
        if (parcelableArray != null && parcelableArray.length > 0) {
            for (Parcelable parcelable : parcelableArray) {
                Bundle bundle = (Bundle) parcelable;
                if (bundle != null) {
                    Object obj = bundle.get("sender_person");
                    if (obj instanceof Person) {
                        Person person = (Person) obj;
                        if (StringUtils.b(person.getName())) {
                            hashMap.put(person.getName().toString(), person);
                        } else {
                            hashMap.put(person.getUri(), person);
                        }
                    }
                }
            }
        }
        return new ArrayList<>(hashMap.values());
    }
}
