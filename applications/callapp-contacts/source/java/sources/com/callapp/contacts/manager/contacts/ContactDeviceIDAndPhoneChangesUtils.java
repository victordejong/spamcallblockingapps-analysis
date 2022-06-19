package com.callapp.contacts.manager.contacts;

import android.util.Pair;
import androidx.core.p036e.C0828b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.RefreshSearchListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.BirthdayData;
import com.callapp.contacts.model.objectbox.BirthdayData_;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.CallRecorder_;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto_;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.model.objectbox.FastCacheData_;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData_;
import com.callapp.contacts.model.objectbox.IncognitoData;
import com.callapp.contacts.model.objectbox.IncognitoData_;
import com.callapp.contacts.model.objectbox.MonitoredDeviceID;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimData_;
import com.callapp.contacts.model.objectbox.SuggestContactData;
import com.callapp.contacts.model.objectbox.SuggestContactData_;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserCorrectedData_;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.contacts.model.objectbox.UserMediaData_;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData_;
import com.callapp.contacts.sync.model.SyncerData;
import com.callapp.contacts.sync.model.SyncerData_;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.sinch.verification.core.internal.error.ApiErrorData;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.exception.DbException;
import io.objectbox.query.AbstractC17985c;
import io.objectbox.query.Query;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils.class */
public class ContactDeviceIDAndPhoneChangesUtils {

    /* renamed from: a */
    private static C0828b<Class, C17978g>[] f25957a = {C0828b.m44412a(FastCacheData.class, FastCacheData_.phoneOrIdKey), C0828b.m44412a(CallRecorder.class, CallRecorder_.phoneOrIdKey), C0828b.m44412a(UserNegativePositiveData.class, UserNegativePositiveData_.phoneOrIdKey), C0828b.m44412a(ChosenContactPhoto.class, ChosenContactPhoto_.phoneOrIdKey), C0828b.m44412a(UserMediaData.class, UserMediaData_.phoneOrIdKey), C0828b.m44412a(UserCorrectedData.class, UserCorrectedData_.phoneOrIdKey), C0828b.m44412a(IncognitoData.class, IncognitoData_.phoneOrIdKey), C0828b.m44412a(IMExtractedPhotoData.class, IMExtractedPhotoData_.phoneOrIdKey), C0828b.m44412a(PersonalStoreItemUserData.class, PersonalStoreItemUserData_.phoneOrIdKey), C0828b.m44412a(PreferredSimData.class, PreferredSimData_.phoneOrIdKey)};

    /* renamed from: b */
    private static C0828b<Class, C17978g>[] f25958b = {C0828b.m44412a(SuggestContactData.class, SuggestContactData_.phoneOrIdKey), C0828b.m44412a(BirthdayData.class, BirthdayData_.phoneOrIdKey), C0828b.m44412a(SyncerData.class, SyncerData_.phoneOrIdKey)};

    /* renamed from: c */
    private static AtomicBoolean f25959c = new AtomicBoolean(false);

    /* renamed from: a */
    public static /* synthetic */ int m28361a(ContactLookupData contactLookupData, ContactLookupData contactLookupData2) {
        return StringUtils.m26051a(contactLookupData.displayName, contactLookupData2.displayName, false);
    }

    /* renamed from: a */
    public static void m28368a() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class);
        List<ContactLookupData> m4628c = m4727d.m4700e().m4611a(ContactLookupData_.nameT9FormatNoZero, "").m4618a().m4628c();
        for (ContactLookupData contactLookupData : m4628c) {
            contactLookupData.setDisplayName(contactLookupData.displayName);
        }
        m4727d.m4710a((Collection) m4628c);
    }

    /* renamed from: a */
    public static void m28367a(long j) {
        C0828b<Class, C17978g>[] c0828bArr;
        C0828b<Class, C17978g>[] c0828bArr2;
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "removeContactIdOnAllTables - contactId: ".concat(String.valueOf(j)));
        for (C0828b<Class, C17978g> c0828b : f25958b) {
            m28363a(j, c0828b.f3556a, c0828b.f3557b);
        }
        for (C0828b<Class, C17978g> c0828b2 : f25957a) {
            m28363a(j, c0828b2.f3556a, c0828b2.f3557b);
        }
    }

    /* renamed from: a */
    private static <T extends MonitoredDeviceID> void m28366a(long j, long j2, Class<T> cls, C17978g c17978g) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(cls);
        String generateId = ContactData.generateId(Phone.f29662b, j);
        final String generateId2 = ContactData.generateId(Phone.f29662b, j2);
        final ArrayList arrayList = new ArrayList();
        m4727d.m4700e().m4611a(c17978g, generateId).m4618a().m4636a((AbstractC17985c) new AbstractC17985c<T>() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.3
            @Override // io.objectbox.query.AbstractC17985c
            public final /* synthetic */ void accept(Object obj) {
                MonitoredDeviceID monitoredDeviceID = (MonitoredDeviceID) obj;
                monitoredDeviceID.setPhoneOrIdKey(generateId2);
                arrayList.add(monitoredDeviceID);
                CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdOnAllTables: ".concat(String.valueOf(monitoredDeviceID)));
            }
        });
        if (CollectionUtils.m26068b(arrayList)) {
            m4727d.m4710a((Collection) arrayList);
        }
    }

    /* renamed from: a */
    public static void m28365a(long j, long j2, List<String> list) {
        C0828b<Class, C17978g>[] c0828bArr;
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdOnAllTables - oldContactId: " + j + ", newContactId: " + j2 + ", phoneNumbers: " + list);
        C0828b<Class, C17978g>[] c0828bArr2 = f25958b;
        int length = c0828bArr2.length;
        for (int i = 0; i < length; i++) {
            C0828b<Class, C17978g> c0828b = c0828bArr2[i];
            m28366a(j, j2, c0828b.f3556a, c0828b.f3557b);
        }
        for (C0828b<Class, C17978g> c0828b2 : f25957a) {
            m28366a(j, j2, c0828b2.f3556a, c0828b2.f3557b);
        }
        m28357a(list, j2);
    }

    /* renamed from: a */
    public static void m28364a(long j, Phone phone) {
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "convertContactIdToPhone - oldContactId: " + j + ", phoneNum: " + phone);
        C0828b<Class, C17978g>[] c0828bArr = f25957a;
        int length = c0828bArr.length;
        for (int i = 0; i < length; i++) {
            C0828b<Class, C17978g> c0828b = c0828bArr[i];
            Class cls = c0828b.f3556a;
            C17978g c17978g = c0828b.f3557b;
            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(cls);
            String generateId = ContactData.generateId(phone, j);
            final String generateId2 = ContactData.generateId(phone, 0L);
            final ArrayList arrayList = new ArrayList();
            m4727d.m4700e().m4611a(c17978g, generateId).m4618a().m4636a((AbstractC17985c) new AbstractC17985c<T>() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.1
                @Override // io.objectbox.query.AbstractC17985c
                public final /* synthetic */ void accept(Object obj) {
                    MonitoredDeviceID monitoredDeviceID = (MonitoredDeviceID) obj;
                    monitoredDeviceID.setPhoneOrIdKey(generateId2);
                    arrayList.add(monitoredDeviceID);
                    CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "convertContactIdToPhone: ".concat(String.valueOf(monitoredDeviceID)));
                }
            });
            if (CollectionUtils.m26068b(arrayList)) {
                m4727d.m4710a((Collection) arrayList);
            }
        }
        m28357a(Collections.singletonList(phone.m26101a()), 0L);
    }

    /* renamed from: a */
    private static <T extends MonitoredDeviceID> void m28363a(long j, Class<T> cls, C17978g c17978g) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(cls);
        m4727d.m4700e().m4611a(c17978g, ContactData.generateId(Phone.f29662b, j)).m4618a().m4624f();
    }

    /* renamed from: a */
    public static void m28362a(ContactLookupData contactLookupData) {
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "addContactsToContactLookup - ".concat(String.valueOf(contactLookupData)));
        try {
            CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4711a((C17944a) contactLookupData);
        } catch (DbException e) {
            CLog.m27609a(ContactDeviceIDAndPhoneChangesUtils.class, e);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m28360a(C17944a c17944a) {
        int i;
        Query m4618a = c17944a.m4700e().m4618a();
        int i2 = 1;
        while (true) {
            int i3 = i2;
            int i4 = 0;
            do {
                List m4640a = m4618a.m4640a(i3);
                if (m4640a.isEmpty()) {
                    f25959c.set(false);
                    return;
                }
                c17944a.m4704b((Collection) m4640a);
                i = i4 + 1;
                i4 = i;
            } while (i != 3);
            i2 = Math.min((int) ApiErrorData.ErrorCodes.InternalServerError.InternalError, i3 * 2);
        }
    }

    /* renamed from: a */
    public static void m28359a(String str) {
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "removeLookupKeyFromContactLookup - ".concat(String.valueOf(str)));
        CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4611a(ContactLookupData_.lookupKey, str).m4618a().m4624f();
    }

    /* renamed from: a */
    public static void m28358a(List<ContactLookupData> list) {
        CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4710a((Collection) list);
    }

    /* renamed from: a */
    private static void m28357a(List<String> list, long j) {
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdAndNotifyExistingContactData device id changed, new contactId: " + j + ", for numbers: " + list);
        if (CollectionUtils.m26068b(list)) {
            for (String str : list) {
                Phone m28239a = PhoneManager.get().m28239a(str);
                Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(m28239a, j);
                if (contactDataOnlyIfAlreadyLoaded != null && contactDataOnlyIfAlreadyLoaded.first != null) {
                    ((ContactData) contactDataOnlyIfAlreadyLoaded.first).setDeviceId(j);
                    ((ContactData) contactDataOnlyIfAlreadyLoaded.first).updateDeviceIdMonitored();
                    CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "Firing device id changed for number: " + m28239a.m26101a());
                }
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m28356a(List list, Set set, ContactLookupData contactLookupData) {
        if (DeviceIdLoader.m28852a(null, contactLookupData.getContactId(), false, false, false) == null) {
            list.add(contactLookupData);
        }
        if (set.contains(Long.valueOf(contactLookupData.getContactId()))) {
            list.add(contactLookupData);
        } else {
            set.add(Long.valueOf(contactLookupData.getContactId()));
        }
    }

    /* renamed from: b */
    public static ContactLookupData m28354b(long j) {
        return (ContactLookupData) CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4613a(ContactLookupData_.contactId, j).m4618a().m4641a();
    }

    /* renamed from: b */
    public static ContactLookupData m28351b(String str) {
        return (ContactLookupData) CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4611a(ContactLookupData_.lookupKey, str).m4618a().m4641a();
    }

    /* renamed from: b */
    public static void m28355b() {
        final C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class);
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList = new ArrayList();
        m4727d.m4700e().m4618a().m4636a(new AbstractC17985c() { // from class: com.callapp.contacts.manager.contacts._$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc
            @Override // io.objectbox.query.AbstractC17985c
            public final void accept(Object obj) {
                ContactDeviceIDAndPhoneChangesUtils.m28356a(arrayList, hashSet, (ContactLookupData) obj);
            }
        });
        if (CollectionUtils.m26068b(arrayList)) {
            m4727d.m4704b((Collection) arrayList);
        }
        if (m4727d.m4709b() <= 50000 || !f25959c.getAndSet(true)) {
            return;
        }
        new Task() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.4
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                ContactDeviceIDAndPhoneChangesUtils.m28360a(m4727d);
            }
        }.execute();
    }

    /* renamed from: b */
    public static void m28353b(long j, Phone phone) {
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "convertPhoneToContactId - newContactId: " + j + ", phoneNum: " + phone);
        C0828b<Class, C17978g>[] c0828bArr = f25957a;
        int length = c0828bArr.length;
        for (int i = 0; i < length; i++) {
            C0828b<Class, C17978g> c0828b = c0828bArr[i];
            Class cls = c0828b.f3556a;
            C17978g c17978g = c0828b.f3557b;
            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(cls);
            String generateId = ContactData.generateId(phone, 0L);
            final String generateId2 = ContactData.generateId(phone, j);
            final ArrayList arrayList = new ArrayList();
            m4727d.m4700e().m4611a(c17978g, generateId).m4618a().m4636a((AbstractC17985c) new AbstractC17985c<T>() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.2
                @Override // io.objectbox.query.AbstractC17985c
                public final /* synthetic */ void accept(Object obj) {
                    MonitoredDeviceID monitoredDeviceID = (MonitoredDeviceID) obj;
                    monitoredDeviceID.setPhoneOrIdKey(generateId2);
                    arrayList.add(monitoredDeviceID);
                    CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "convertPhoneToContactId: ".concat(String.valueOf(monitoredDeviceID)));
                }
            });
            if (CollectionUtils.m26068b(arrayList)) {
                m4727d.m4710a((Collection) arrayList);
            }
        }
        IMDataExtractionUtils.m28623a(phone, (IMDataExtractionUtils.RecognizedPersonOrigin) null);
        ContactPlusUtils.m28345a();
        EventBusManager.f25138a.m29043c(RefreshSearchListener.f23136b, EventBusManager.CallAppDataType.REFRESH_SEARCH);
        m28357a(Collections.singletonList(phone.m26101a()), j);
    }

    /* renamed from: b */
    public static void m28352b(ContactLookupData contactLookupData) {
        CLog.m27611a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdInContactLookup: ".concat(String.valueOf(contactLookupData)));
        CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4711a((C17944a) contactLookupData);
    }

    /* renamed from: c */
    public static ContactLookupData m28350c(long j) {
        return (ContactLookupData) CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4613a(ContactLookupData_.contactId, j).m4618a().m4641a();
    }

    /* renamed from: c */
    public static String m28349c(String str) {
        if (str.length() < 6) {
            return null;
        }
        for (FastCacheData fastCacheData : CallAppApplication.get().getObjectBoxStore().m4727d(FastCacheData.class).m4700e().m4606b(FastCacheData_.fullName).m4600d().m4604b(FastCacheData_.fullName, "").m4618a().m4628c()) {
            String str2 = (String) ContactData.splitPhoneOrIdKey(fastCacheData.getPhoneOrIdKey()).first;
            if (StringUtils.m26037c(str2, str) || (str.startsWith("0") && StringUtils.m26037c(str2, str.substring(1)))) {
                return fastCacheData.getFullName();
            }
        }
        return null;
    }

    /* renamed from: d */
    public static List<ContactLookupData> m28348d(String str) {
        List<ContactLookupData> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4601c(ContactLookupData_.phoneNumbers, str).m4614a((C17978g) ContactLookupData_.displayName, 0).m4618a().m4628c();
        List<ContactLookupData> list = m4628c;
        if (m4628c == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    /* renamed from: e */
    public static List<ContactLookupData> m28347e(String str) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class);
        String[] m26017k = StringUtils.m26017k(str, "\\s+");
        if (CollectionUtils.m26066b(m26017k)) {
            QueryBuilder m4700e = m4727d.m4700e();
            for (String str2 : m26017k) {
                m4700e.m4606b(ContactLookupData_.unAccentName).m4604b(ContactLookupData_.unAccentName, "").m4601c(ContactLookupData_.unAccentName, str2);
            }
            List<ContactLookupData> m4628c = m4700e.m4614a((C17978g) ContactLookupData_.displayName, 0).m4618a().m4628c();
            HashSet hashSet = new HashSet();
            if (m4628c != null) {
                for (ContactLookupData contactLookupData : m4628c) {
                    hashSet.add(contactLookupData.getLookupKey());
                }
            }
            QueryBuilder m4700e2 = m4727d.m4700e();
            for (String str3 : m26017k) {
                m4700e2.m4606b(ContactLookupData_.unAccentDescription).m4604b(ContactLookupData_.unAccentDescription, "").m4601c(ContactLookupData_.unAccentDescription, str3);
            }
            List<ContactLookupData> m4628c2 = m4700e2.m4614a((C17978g) ContactLookupData_.displayName, 0).m4618a().m4628c();
            if (m4628c2 != null && m4628c != null) {
                for (ContactLookupData contactLookupData2 : m4628c2) {
                    if (!hashSet.contains(contactLookupData2.getLookupKey())) {
                        m4628c.add(contactLookupData2);
                    }
                }
                Collections.sort(m4628c, C7459xce6a59f9.INSTANCE);
            }
            return m4628c == null ? Collections.emptyList() : m4628c;
        }
        return Collections.emptyList();
    }

    /* renamed from: f */
    public static List<ContactLookupData> m28346f(String str) {
        QueryBuilder m4601c = CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4601c(ContactLookupData_.phoneNumbers, str);
        m4601c.m4603c().m4601c(ContactLookupData_.nameT9Format, "0".concat(String.valueOf(str)));
        m4601c.m4603c().m4601c(ContactLookupData_.nameT9FormatNoZero, str);
        List<ContactLookupData> m4628c = m4601c.m4614a((C17978g) ContactLookupData_.displayName, 0).m4618a().m4628c();
        List<ContactLookupData> list = m4628c;
        if (m4628c == null) {
            list = Collections.emptyList();
        }
        return list;
    }
}
