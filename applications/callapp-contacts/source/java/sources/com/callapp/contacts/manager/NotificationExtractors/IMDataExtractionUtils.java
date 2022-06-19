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
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.converter.PropertyConverter;
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

    /* renamed from: a */
    public static final String f25726a;

    /* renamed from: b */
    public static final String f25727b;

    /* renamed from: c */
    private static final Object f25728c;

    /* renamed from: d */
    private static final HashMap<String, RecognizedPersonOrigin> f25729d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$3.class */
    public static /* synthetic */ class C74143 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25732a;

        /* renamed from: b */
        static final /* synthetic */ int[] f25733b;

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
            f25733b = iArr;
            try {
                iArr[RecognizedPersonOrigin.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25733b[RecognizedPersonOrigin.WHATSAPP4B.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f25733b[RecognizedPersonOrigin.VIBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f25733b[RecognizedPersonOrigin.TELEGRAM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f25733b[RecognizedPersonOrigin.VONAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f25733b[RecognizedPersonOrigin.SMS_MESSAGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f25733b[RecognizedPersonOrigin.SEARCH.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f25733b[RecognizedPersonOrigin.CALL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f25733b[RecognizedPersonOrigin.CLIPBOARD.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f25733b[RecognizedPersonOrigin.SIGNAL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            int[] iArr2 = new int[ComType.values().length];
            f25732a = iArr2;
            try {
                iArr2[ComType.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f25732a[ComType.MISSED_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f25732a[ComType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f25732a[ComType.SEARCH.ordinal()] = 4;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f25732a[ComType.CLIPBOARD.ordinal()] = 5;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f25732a[ComType.UNKNOWN.ordinal()] = 6;
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
            if (StringUtils.m26045b((CharSequence) nameForNotificationLine)) {
                str = nameForNotificationLine;
                if (StringUtils.m26045b((CharSequence) ((ExtractedInfo) this.f25754a).groupName)) {
                    str = nameForNotificationLine + ". " + Activities.m27697a(2131887012, ((ExtractedInfo) this.f25754a).groupName);
                }
            }
            return str;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Date getSourceDate() {
            return new Date(((ExtractedInfo) this.f25754a).when);
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public String getSourceName() {
            return ((ExtractedInfo) this.f25754a).senderName;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Phone getSourcePhone() {
            return PhoneManager.get().m28239a(((ExtractedInfo) this.f25754a).phoneAsRaw);
        }

        public String toString() {
            return this.f25754a == 0 ? "" : ((ExtractedInfo) this.f25754a).toString();
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
        f25726a = Build.VERSION.SDK_INT >= 21 ? "msg" : "android.msg";
        f25727b = Build.VERSION.SDK_INT >= 21 ? "call" : "android.call";
        f25728c = new Object();
        f25729d = new HashMap<>();
        for (RecognizedPersonOrigin recognizedPersonOrigin : RecognizedPersonOrigin.values()) {
            f25729d.put(recognizedPersonOrigin.pkgName, recognizedPersonOrigin);
        }
    }

    /* renamed from: a */
    public static int m28628a(ComType comType) {
        int i = C74143.f25732a[comType.ordinal()];
        if (i == 1 || i == 2) {
            return 2131231703;
        }
        if (i == 3) {
            return 2131231704;
        }
        if (i == 4) {
            return 2131231873;
        }
        return i != 5 ? 0 : 2131231595;
    }

    /* renamed from: a */
    public static int m28627a(RecognizedPersonOrigin recognizedPersonOrigin) {
        List m4640a = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4613a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal()).m4614a((C17978g) ExtractedInfo_.when, 1).m4618a().m4640a(5L);
        int i = 1;
        if (m4640a != null) {
            i = 1;
            if (m4640a.size() == 5) {
                ExtractedInfo extractedInfo = (ExtractedInfo) m4640a.get(0);
                i = 1;
                for (int i2 = 1; i2 < m4640a.size(); i2++) {
                    if (!StringUtils.m26042b(extractedInfo.senderName, ((ExtractedInfo) m4640a.get(i2)).senderName)) {
                        break;
                    }
                    i++;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    private static Phone m28632a(Person person) {
        List<String> phoneNumbers;
        String m26031e = StringUtils.m26031e(person.getUri());
        if (!StringUtils.m26045b((CharSequence) m26031e)) {
            if (!StringUtils.m26045b(person.getName())) {
                return null;
            }
            String charSequence = person.getName().toString();
            if (!StringUtils.m26045b((CharSequence) charSequence)) {
                return null;
            }
            return CallAppClipboardManager.m28710a(charSequence);
        }
        ContactLookupData contactLookupData = (ContactLookupData) CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4613a(ContactLookupData_.contactId, Long.valueOf(m26031e).longValue()).m4618a().m4641a();
        if (contactLookupData == null || (phoneNumbers = contactLookupData.getPhoneNumbers()) == null || phoneNumbers.size() <= 0) {
            return null;
        }
        String str = (String) new ArrayList(phoneNumbers).get(0);
        if (!StringUtils.m26045b((CharSequence) str)) {
            return null;
        }
        return CallAppClipboardManager.m28710a(str);
    }

    /* renamed from: a */
    private static Phone m28620a(Object obj) {
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
                if (CollectionUtils.m26068b(list)) {
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
        if (StringUtils.m26045b((CharSequence) str)) {
            try {
                URI create = URI.create(str);
                if (!MRAIDNativeFeature.TEL.equals(create.getScheme())) {
                    return null;
                }
                Phone m28239a = PhoneManager.get().m28239a(create.getSchemeSpecificPart());
                if (!m28239a.isValid()) {
                    return null;
                }
                return m28239a;
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m28631a(StatusBarNotification statusBarNotification) {
        return m28630a(statusBarNotification, "android.title");
    }

    /* renamed from: a */
    private static String m28630a(StatusBarNotification statusBarNotification, String str) {
        Object m28614b = m28614b(statusBarNotification, str);
        if (m28614b != null) {
            try {
                return RegexUtils.m31888m(m28614b.toString());
            } catch (ClassCastException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static HashMap<Phone, Bitmap> m28629a(StatusBarNotification statusBarNotification, boolean z, Phone phone) {
        Icon icon;
        BitmapDrawable bitmapDrawable;
        HashMap<Phone, Bitmap> hashMap = null;
        if (statusBarNotification != null) {
            if (statusBarNotification.getNotification() == null) {
                hashMap = null;
            } else {
                HashMap<Phone, Bitmap> hashMap2 = null;
                if (Build.VERSION.SDK_INT >= 28) {
                    ArrayList<Person> m28593m = m28593m(statusBarNotification);
                    hashMap2 = null;
                    if (m28593m != null) {
                        hashMap2 = new HashMap<>();
                        Iterator<Person> it2 = m28593m.iterator();
                        while (it2.hasNext()) {
                            Person next = it2.next();
                            Phone m28632a = m28632a(next);
                            if (m28632a != null) {
                                Bitmap bitmap = (next == null || (icon = next.getIcon()) == null || (bitmapDrawable = (BitmapDrawable) icon.loadDrawable(CallAppApplication.get())) == null) ? null : bitmapDrawable.getBitmap();
                                if (bitmap != null) {
                                    hashMap2.put(m28632a, bitmap);
                                }
                            }
                        }
                    }
                }
                hashMap = hashMap2;
                if (!z) {
                    hashMap = hashMap2;
                    if (CollectionUtils.m26071a(hashMap2)) {
                        hashMap = new HashMap<>();
                        hashMap.put(phone, statusBarNotification.getNotification().largeIcon);
                    }
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static List<ExtractedInfo> m28619a(String str) {
        List<ExtractedInfo> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4601c(ExtractedInfo_.phoneAsRaw, str).m4600d().m4606b(ExtractedInfo_.displayName).m4600d().m4604b(ExtractedInfo_.displayName, "").m4614a((C17978g) ExtractedInfo_.displayName, 0).m4618a().m4628c();
        List<ExtractedInfo> list = m4628c;
        if (m4628c == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: a */
    public static void m28633a() {
        RecognizedPersonOrigin[] values;
        if (!Activities.isNotificationListenerServiceSupportedOnDevice() || AbTestUtils.getGroupDimension() != 3) {
            return;
        }
        for (RecognizedPersonOrigin recognizedPersonOrigin : RecognizedPersonOrigin.values()) {
            long m4625e = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4613a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal()).m4618a().m4625e();
            if (m4625e != 0) {
                AnalyticsManager.get().mo28444a(Constants.CALLAPP_PLUS, recognizedPersonOrigin + " Identified contacts count report", String.valueOf((long) (m4625e < 10 ? (char) 1 : (m4625e / 10) * 10)), 0.0d, new String[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m28625a(ExtractedInfo.Builder builder) {
        if (StringUtils.m26045b((CharSequence) builder.phoneAsRaw)) {
            if (m28618a(builder.senderName, PhoneManager.get().m28239a(builder.phoneAsRaw))) {
                builder.senderName = null;
            }
            if (!m28618a(builder.groupName, PhoneManager.get().m28239a(builder.phoneAsRaw))) {
                return;
            }
            builder.groupName = null;
        }
    }

    /* renamed from: a */
    public static void m28623a(Phone phone, RecognizedPersonOrigin recognizedPersonOrigin) {
        QueryBuilder m4700e = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e();
        m4700e.m4611a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber());
        if (recognizedPersonOrigin != null) {
            m4700e.m4613a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal());
        }
        m4700e.m4618a().m4624f();
    }

    /* renamed from: a */
    public static void m28622a(final Phone phone, final String str) {
        new Task() { // from class: com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                synchronized (IMDataExtractionUtils.f25728c) {
                    C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class);
                    List<ExtractedInfo> m4628c = m4727d.m4700e().m4611a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber()).m4618a().m4628c();
                    if (CollectionUtils.m26068b(m4628c)) {
                        for (ExtractedInfo extractedInfo : m4628c) {
                            if (!str.equals(extractedInfo.displayName)) {
                                extractedInfo.setDisplayName(str);
                                m4727d.m4711a((C17944a) extractedInfo);
                            }
                        }
                    }
                }
            }
        }.execute();
    }

    /* renamed from: a */
    public static void m28617a(List<ExtractedInfo> list) {
        synchronized (f25728c) {
            CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4710a((Collection) list);
        }
    }

    /* renamed from: a */
    public static boolean m28626a(RecognizedPersonOrigin recognizedPersonOrigin, Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4613a(ExtractedInfo_.recognizedPersonOrigin, (long) recognizedPersonOrigin.ordinal()).m4600d().m4611a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber()).m4618a().m4625e() > 0;
    }

    /* renamed from: a */
    public static boolean m28624a(ExtractedInfo extractedInfo) {
        synchronized (f25728c) {
            if (extractedInfo != null) {
                if (extractedInfo.recognizedPersonOrigin != null && !StringUtils.m26059a((CharSequence) extractedInfo.phoneAsRaw)) {
                    C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class);
                    ExtractedInfo extractedInfo2 = (ExtractedInfo) m4727d.m4700e().m4613a(ExtractedInfo_.recognizedPersonOrigin, extractedInfo.recognizedPersonOrigin.ordinal()).m4611a(ExtractedInfo_.phoneAsRaw, extractedInfo.phoneAsRaw).m4618a().m4641a();
                    if (extractedInfo2 == null) {
                        Prefs.f26470ei.m28169b(1);
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                        extractedInfo.firstSeen = new Date().getTime();
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.m28449a(Constants.CALLAPP_PLUS, "IdentifyCallAppPlusPhoneNumber_" + extractedInfo.recognizedPersonOrigin.name(), extractedInfo.phoneAsRaw);
                    } else {
                        if (extractedInfo.when > 0) {
                            extractedInfo2.when = extractedInfo.when;
                        }
                        if (extractedInfo.comType != null && extractedInfo.comType != ComType.UNKNOWN) {
                            extractedInfo2.comType = extractedInfo.comType;
                        }
                        if (StringUtils.m26045b((CharSequence) extractedInfo.senderName) || DataExtractedInspector.m28634a(extractedInfo2)) {
                            extractedInfo2.senderName = extractedInfo.senderName;
                        }
                        extractedInfo2.groupName = extractedInfo.groupName;
                        extractedInfo2.disableNotification = false;
                        extractedInfo = extractedInfo2;
                    }
                    m4727d.m4711a((C17944a) extractedInfo);
                    new Task() { // from class: com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils.2
                        @Override // com.callapp.contacts.manager.task.Task
                        public final void doTask() {
                            IMDataExtractionUtils.m28601f();
                        }
                    }.execute();
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m28618a(String str, Phone phone) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return false;
        }
        return PhoneManager.get().m28239a(str).equals(phone);
    }

    /* renamed from: a */
    public static String[] m28621a(CharSequence charSequence, String str) {
        if (charSequence == null) {
            return null;
        }
        if (StringUtils.m26059a((CharSequence) str)) {
            return new String[]{charSequence.toString()};
        }
        return RegexUtils.m31910a("\\s*" + str + "\\s*").split(charSequence, 2);
    }

    /* renamed from: b */
    public static int m28613b(RecognizedPersonOrigin recognizedPersonOrigin) {
        switch (C74143.f25733b[recognizedPersonOrigin.ordinal()]) {
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

    /* renamed from: b */
    private static Object m28614b(StatusBarNotification statusBarNotification, String str) {
        Notification notification;
        Bundle bundle;
        if (str == null || statusBarNotification == null || (notification = statusBarNotification.getNotification()) == null || (bundle = notification.extras) == null) {
            return null;
        }
        return bundle.get(str);
    }

    /* renamed from: b */
    public static String m28615b(StatusBarNotification statusBarNotification) {
        return m28630a(statusBarNotification, "android.text");
    }

    /* renamed from: b */
    public static String m28612b(RecognizedPersonOrigin recognizedPersonOrigin, Phone phone) {
        ExtractedInfo extractedInfo = (ExtractedInfo) CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4613a(ExtractedInfo_.recognizedPersonOrigin, recognizedPersonOrigin.ordinal()).m4611a(ExtractedInfo_.phoneAsRaw, phone.getRawNumber()).m4606b(ExtractedInfo_.senderName).m4618a().m4641a();
        if (extractedInfo != null) {
            return extractedInfo.senderName;
        }
        return null;
    }

    /* renamed from: b */
    public static List<ExtractedInfo> m28610b(String str) {
        String[] m26017k = StringUtils.m26017k(str, "\\s+");
        if (CollectionUtils.m26066b(m26017k)) {
            QueryBuilder m4700e = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e();
            for (String str2 : m26017k) {
                m4700e.m4601c(ExtractedInfo_.unAccentName, str2);
            }
            List<ExtractedInfo> m4628c = m4700e.m4600d().m4606b(ExtractedInfo_.displayName).m4600d().m4604b(ExtractedInfo_.displayName, "").m4614a((C17978g) ExtractedInfo_.displayName, 0).m4618a().m4628c();
            List<ExtractedInfo> list = m4628c;
            if (m4628c == null) {
                list = Collections.emptyList();
            }
            return list;
        }
        return Collections.emptyList();
    }

    /* renamed from: b */
    public static void m28616b() {
        if (Prefs.f26299bW != null) {
            Prefs.f26299bW.set(new Date());
        }
    }

    /* renamed from: b */
    public static void m28611b(ExtractedInfo extractedInfo) {
        synchronized (f25728c) {
            CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4711a((C17944a) extractedInfo);
        }
    }

    /* renamed from: c */
    public static int m28608c(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            return statusBarNotification.getId();
        }
        return 0;
    }

    /* renamed from: c */
    public static int m28607c(RecognizedPersonOrigin recognizedPersonOrigin) {
        switch (C74143.f25733b[recognizedPersonOrigin.ordinal()]) {
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

    /* renamed from: c */
    public static List<ExtractedInfo> m28606c(String str) {
        QueryBuilder m4601c = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4601c(ExtractedInfo_.phoneAsRaw, str);
        m4601c.m4603c().m4601c(ExtractedInfo_.nameT9Format, "0".concat(String.valueOf(str)));
        m4601c.m4603c().m4601c(ExtractedInfo_.nameT9FormatNoZero, str);
        List<ExtractedInfo> m4628c = m4601c.m4600d().m4606b(ExtractedInfo_.displayName).m4600d().m4604b(ExtractedInfo_.displayName, "").m4614a((C17978g) ExtractedInfo_.senderName, 0).m4618a().m4628c();
        List<ExtractedInfo> list = m4628c;
        if (m4628c == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    /* renamed from: c */
    public static void m28609c() {
        DataExtractedInspector.m28636a();
    }

    /* renamed from: d */
    public static long m28604d(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            return statusBarNotification.getPostTime();
        }
        return 0L;
    }

    /* renamed from: d */
    public static void m28605d() {
        synchronized (f25728c) {
            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class);
            List<ExtractedInfo> m4628c = m4727d.m4700e().m4611a(ExtractedInfo_.nameT9FormatNoZero, "").m4618a().m4628c();
            for (ExtractedInfo extractedInfo : m4628c) {
                extractedInfo.setDisplayName(extractedInfo.displayName);
            }
            m4727d.m4710a((Collection) m4628c);
        }
    }

    /* renamed from: e */
    public static ExtractedInfo.Builder m28602e(StatusBarNotification statusBarNotification) {
        Phone m28620a = Build.VERSION.SDK_INT >= 28 ? m28620a(m28614b(statusBarNotification, "android.people.list")) : m28620a(m28614b(statusBarNotification, "android.people"));
        if (m28620a != null) {
            ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
            builder.phoneAsRaw = m28620a.getRawNumber();
            return builder;
        }
        return null;
    }

    /* renamed from: f */
    static /* synthetic */ long m28601f() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class);
        if (m4727d.m4700e().m4609a((C17978g) ExtractedInfo_.starred, false).m4618a().m4625e() > 1000) {
            List m4640a = m4727d.m4700e().m4609a((C17978g) ExtractedInfo_.starred, false).m4614a((C17978g) ExtractedInfo_.when, 1).m4618a().m4640a(1000L);
            return m4727d.m4700e().m4602c(ExtractedInfo_.when, ((ExtractedInfo) m4640a.get(m4640a.size() - 1)).when).m4618a().m4624f();
        }
        return 0L;
    }

    /* renamed from: f */
    public static boolean m28600f(StatusBarNotification statusBarNotification) {
        return m28594l(statusBarNotification) != null;
    }

    /* renamed from: g */
    public static ExtractedInfo m28599g(StatusBarNotification statusBarNotification) {
        ArrayList<Person> m28593m;
        RecognizedPersonOrigin m28594l = m28594l(statusBarNotification);
        if (m28594l == null) {
            return null;
        }
        int i = C74143.f25733b[m28594l.ordinal()];
        if (i == 1 || i == 2) {
            Singletons.get().getWhatsAppNotificationDataExtractor();
            ExtractedInfo.Builder m28580a = WhatsAppNotificationDataExtractor.m28580a(m28630a(statusBarNotification, "android.title"), m28630a(statusBarNotification, "android.text"), m28598h(statusBarNotification), m28595k(statusBarNotification), (statusBarNotification == null || Build.VERSION.SDK_INT < 28 || (m28593m = m28593m(statusBarNotification)) == null || m28593m.size() != 1) ? null : m28632a(m28593m.get(0)));
            if (m28580a == null) {
                return null;
            }
            m28580a.comType = WhatsAppNotificationDataExtractor.m28582a(statusBarNotification);
            m28580a.recognizedPersonOrigin = WhatsAppNotificationDataExtractor.m28581a(statusBarNotification.getPackageName());
            m28580a.when = m28604d(statusBarNotification);
            m28625a(m28580a);
            return m28580a.build();
        } else if (i == 3) {
            Singletons.get().getViberNotificationDataExtractor();
            ComType m28585b = ViberNotificationDataExtractor.m28585b(statusBarNotification);
            ExtractedInfo.Builder m28587a = ViberNotificationDataExtractor.m28587a(statusBarNotification);
            if (m28587a == null || !StringUtils.m26045b((CharSequence) m28587a.phoneAsRaw)) {
                return null;
            }
            m28587a.comType = m28585b;
            ViberNotificationDataExtractor.m28586a(m28587a, statusBarNotification);
            m28587a.recognizedPersonOrigin = RecognizedPersonOrigin.VIBER;
            m28587a.when = m28604d(statusBarNotification);
            m28625a(m28587a);
            if (StringUtils.m26051a("unknown", m28587a.senderName, true) == 0) {
                CLog.m27611a(ViberNotificationDataExtractor.class, "unknown sender name in Viber found:\nTitle: " + m28630a(statusBarNotification, "android.title") + "\nText " + m28630a(statusBarNotification, "android.text") + "\nTickerText: " + m28598h(statusBarNotification) + "\nPhone: " + m28587a.phoneAsRaw);
                m28587a.senderName = null;
            }
            return m28587a.build();
        } else if (i == 4) {
            Singletons.get().getTelegramNotificationDataExtractor();
            return TelegramNotificationDataExtractor.m28588a(statusBarNotification);
        } else if (i == 5) {
            if (!Prefs.f26657n.get().booleanValue()) {
                return null;
            }
            Singletons.get().getVonageNotificationDataExtractor();
            ExtractedInfo.Builder m28583a = VonageNotificationDataExtractor.m28583a(m28630a(statusBarNotification, "android.title"), m28598h(statusBarNotification));
            if (m28583a == null || !StringUtils.m26045b((CharSequence) m28583a.phoneAsRaw)) {
                return null;
            }
            m28583a.comType = VonageNotificationDataExtractor.m28584a(statusBarNotification);
            m28583a.recognizedPersonOrigin = RecognizedPersonOrigin.VONAGE;
            m28583a.when = m28604d(statusBarNotification);
            m28625a(m28583a);
            return m28583a.build();
        } else if (i != 10) {
            return null;
        } else {
            Singletons.get().getSignalNotificationDataExtractor();
            ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
            if (statusBarNotification.getId() == 313388) {
                builder.comType = ComType.CALL;
            } else {
                Phone m28590a = SignalNotificationDataExtractor.m28590a(statusBarNotification);
                if (m28590a != null) {
                    builder.phoneAsRaw = m28590a.getRawNumber();
                    if (m28630a(statusBarNotification, "android.text").contains("Missed call")) {
                        builder.comType = ComType.MISSED_CALL;
                    } else {
                        builder.comType = ComType.TEXT;
                    }
                } else {
                    Phone m28589b = SignalNotificationDataExtractor.m28589b(statusBarNotification);
                    if (m28589b != null) {
                        builder.phoneAsRaw = m28589b.getRawNumber();
                        builder.comType = ComType.TEXT;
                        builder.groupName = m28630a(statusBarNotification, "android.title");
                    } else {
                        builder.phoneAsRaw = "";
                    }
                }
            }
            builder.when = m28604d(statusBarNotification);
            builder.recognizedPersonOrigin = RecognizedPersonOrigin.SIGNAL;
            return builder.build();
        }
    }

    public static List<ExtractedInfo> getAllImNotificationData() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4614a((C17978g) ExtractedInfo_.when, 1).m4618a().m4628c();
    }

    public static List<ExtractedInfo> getDataSinceLastCheck() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4700e().m4599d(ExtractedInfo_.when, Prefs.f26299bW.get().getTime()).m4609a((C17978g) ExtractedInfo_.disableNotification, false).m4618a().m4628c();
    }

    /* renamed from: h */
    public static String m28598h(StatusBarNotification statusBarNotification) {
        Notification notification;
        if (statusBarNotification == null || (notification = statusBarNotification.getNotification()) == null || notification.tickerText == null) {
            return null;
        }
        return RegexUtils.m31888m(notification.tickerText.toString());
    }

    /* renamed from: i */
    public static CharSequence m28597i(StatusBarNotification statusBarNotification) {
        ArrayList<Person> m28593m;
        if (Build.VERSION.SDK_INT < 28 || statusBarNotification == null || (m28593m = m28593m(statusBarNotification)) == null || m28593m.isEmpty()) {
            return null;
        }
        return m28593m.get(0).getName();
    }

    /* renamed from: j */
    public static String m28596j(StatusBarNotification statusBarNotification) {
        Notification notification;
        if (statusBarNotification == null || (notification = statusBarNotification.getNotification()) == null) {
            return null;
        }
        return notification.category;
    }

    /* renamed from: k */
    public static String m28595k(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            return statusBarNotification.getTag();
        }
        return null;
    }

    /* renamed from: l */
    private static RecognizedPersonOrigin m28594l(StatusBarNotification statusBarNotification) {
        return f25729d.get(statusBarNotification.getPackageName());
    }

    /* renamed from: m */
    private static ArrayList<Person> m28593m(StatusBarNotification statusBarNotification) {
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
                        if (StringUtils.m26045b(person.getName())) {
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
