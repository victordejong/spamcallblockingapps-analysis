package com.callapp.contacts.manager.contacts;

import android.util.Pair;
import androidx.core.e.b;
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
import io.objectbox.a;
import io.objectbox.exception.DbException;
import io.objectbox.g;
import io.objectbox.query.Query;
import io.objectbox.query.QueryBuilder;
import io.objectbox.query.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils.class */
public class ContactDeviceIDAndPhoneChangesUtils {

    /* renamed from: a  reason: collision with root package name */
    private static b<Class, g>[] f15020a = {b.a(FastCacheData.class, FastCacheData_.phoneOrIdKey), b.a(CallRecorder.class, CallRecorder_.phoneOrIdKey), b.a(UserNegativePositiveData.class, UserNegativePositiveData_.phoneOrIdKey), b.a(ChosenContactPhoto.class, ChosenContactPhoto_.phoneOrIdKey), b.a(UserMediaData.class, UserMediaData_.phoneOrIdKey), b.a(UserCorrectedData.class, UserCorrectedData_.phoneOrIdKey), b.a(IncognitoData.class, IncognitoData_.phoneOrIdKey), b.a(IMExtractedPhotoData.class, IMExtractedPhotoData_.phoneOrIdKey), b.a(PersonalStoreItemUserData.class, PersonalStoreItemUserData_.phoneOrIdKey), b.a(PreferredSimData.class, PreferredSimData_.phoneOrIdKey)};

    /* renamed from: b  reason: collision with root package name */
    private static b<Class, g>[] f15021b = {b.a(SuggestContactData.class, SuggestContactData_.phoneOrIdKey), b.a(BirthdayData.class, BirthdayData_.phoneOrIdKey), b.a(SyncerData.class, SyncerData_.phoneOrIdKey)};

    /* renamed from: c  reason: collision with root package name */
    private static AtomicBoolean f15022c = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(ContactLookupData contactLookupData, ContactLookupData contactLookupData2) {
        return StringUtils.a(contactLookupData.displayName, contactLookupData2.displayName, false);
    }

    public static void a() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class);
        List<ContactLookupData> c2 = d2.e().a(ContactLookupData_.nameT9FormatNoZero, "").a().c();
        for (ContactLookupData contactLookupData : c2) {
            contactLookupData.setDisplayName(contactLookupData.displayName);
        }
        d2.a((Collection) c2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(long j) {
        b<Class, g>[] bVarArr;
        b<Class, g>[] bVarArr2;
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "removeContactIdOnAllTables - contactId: ".concat(String.valueOf(j)));
        for (b<Class, g> bVar : f15021b) {
            a(j, bVar.f1889a, bVar.f1890b);
        }
        for (b<Class, g> bVar2 : f15020a) {
            a(j, bVar2.f1889a, bVar2.f1890b);
        }
    }

    private static <T extends MonitoredDeviceID> void a(long j, long j2, Class<T> cls, g gVar) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(cls);
        String generateId = ContactData.generateId(Phone.f17100b, j);
        final String generateId2 = ContactData.generateId(Phone.f17100b, j2);
        final ArrayList arrayList = new ArrayList();
        d2.e().a(gVar, generateId).a().a((c) new c<T>() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.3
            @Override // io.objectbox.query.c
            public final /* synthetic */ void accept(Object obj) {
                MonitoredDeviceID monitoredDeviceID = (MonitoredDeviceID) obj;
                monitoredDeviceID.setPhoneOrIdKey(generateId2);
                arrayList.add(monitoredDeviceID);
                CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdOnAllTables: ".concat(String.valueOf(monitoredDeviceID)));
            }
        });
        if (CollectionUtils.b(arrayList)) {
            d2.a((Collection) arrayList);
        }
    }

    public static void a(long j, long j2, List<String> list) {
        b<Class, g>[] bVarArr;
        b<Class, g>[] bVarArr2;
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdOnAllTables - oldContactId: " + j + ", newContactId: " + j2 + ", phoneNumbers: " + list);
        for (b<Class, g> bVar : f15021b) {
            a(j, j2, bVar.f1889a, bVar.f1890b);
        }
        for (b<Class, g> bVar2 : f15020a) {
            a(j, j2, bVar2.f1889a, bVar2.f1890b);
        }
        a(list, j2);
    }

    public static void a(long j, Phone phone) {
        b<Class, g>[] bVarArr;
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "convertContactIdToPhone - oldContactId: " + j + ", phoneNum: " + phone);
        for (b<Class, g> bVar : f15020a) {
            Class cls = bVar.f1889a;
            g gVar = bVar.f1890b;
            a d2 = CallAppApplication.get().getObjectBoxStore().d(cls);
            String generateId = ContactData.generateId(phone, j);
            final String generateId2 = ContactData.generateId(phone, 0L);
            final ArrayList arrayList = new ArrayList();
            d2.e().a(gVar, generateId).a().a((c) new c<T>() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.1
                @Override // io.objectbox.query.c
                public final /* synthetic */ void accept(Object obj) {
                    MonitoredDeviceID monitoredDeviceID = (MonitoredDeviceID) obj;
                    monitoredDeviceID.setPhoneOrIdKey(generateId2);
                    arrayList.add(monitoredDeviceID);
                    CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "convertContactIdToPhone: ".concat(String.valueOf(monitoredDeviceID)));
                }
            });
            if (CollectionUtils.b(arrayList)) {
                d2.a((Collection) arrayList);
            }
        }
        a(Collections.singletonList(phone.a()), 0L);
    }

    private static <T extends MonitoredDeviceID> void a(long j, Class<T> cls, g gVar) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(cls);
        d2.e().a(gVar, ContactData.generateId(Phone.f17100b, j)).a().f();
    }

    public static void a(ContactLookupData contactLookupData) {
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "addContactsToContactLookup - ".concat(String.valueOf(contactLookupData)));
        try {
            CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).a((a) contactLookupData);
        } catch (DbException e) {
            CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, e);
        }
    }

    static /* synthetic */ void a(a aVar) {
        int i;
        Query a2 = aVar.e().a();
        int i2 = 1;
        while (true) {
            int i3 = 0;
            do {
                List a3 = a2.a(i2);
                if (a3.isEmpty()) {
                    f15022c.set(false);
                    return;
                }
                aVar.b((Collection) a3);
                i = i3 + 1;
                i3 = i;
            } while (i != 3);
            i2 = Math.min((int) ApiErrorData.ErrorCodes.InternalServerError.InternalError, i2 * 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "removeLookupKeyFromContactLookup - ".concat(String.valueOf(str)));
        CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().a(ContactLookupData_.lookupKey, str).a().f();
    }

    public static void a(List<ContactLookupData> list) {
        CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).a((Collection) list);
    }

    private static void a(List<String> list, long j) {
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdAndNotifyExistingContactData device id changed, new contactId: " + j + ", for numbers: " + list);
        if (CollectionUtils.b(list)) {
            for (String str : list) {
                Phone a2 = PhoneManager.get().a(str);
                Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(a2, j);
                if (!(contactDataOnlyIfAlreadyLoaded == null || contactDataOnlyIfAlreadyLoaded.first == null)) {
                    ((ContactData) contactDataOnlyIfAlreadyLoaded.first).setDeviceId(j);
                    ((ContactData) contactDataOnlyIfAlreadyLoaded.first).updateDeviceIdMonitored();
                    CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "Firing device id changed for number: " + a2.a());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, Set set, ContactLookupData contactLookupData) {
        if (DeviceIdLoader.a(null, contactLookupData.getContactId(), false, false, false) == null) {
            list.add(contactLookupData);
        }
        if (set.contains(Long.valueOf(contactLookupData.getContactId()))) {
            list.add(contactLookupData);
        } else {
            set.add(Long.valueOf(contactLookupData.getContactId()));
        }
    }

    public static ContactLookupData b(long j) {
        return (ContactLookupData) CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().a(ContactLookupData_.contactId, j).a().a();
    }

    public static ContactLookupData b(String str) {
        return (ContactLookupData) CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().a(ContactLookupData_.lookupKey, str).a().a();
    }

    public static void b() {
        final a d2 = CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class);
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList = new ArrayList();
        d2.e().a().a(new c() { // from class: com.callapp.contacts.manager.contacts._$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc
            @Override // io.objectbox.query.c
            public final void accept(Object obj) {
                ContactDeviceIDAndPhoneChangesUtils.a(arrayList, hashSet, (ContactLookupData) obj);
            }
        });
        if (CollectionUtils.b(arrayList)) {
            d2.b((Collection) arrayList);
        }
        if (d2.b() > 50000 && f15022c.getAndSet(true)) {
            new Task() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.4
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactDeviceIDAndPhoneChangesUtils.a(a.this);
                }
            }.execute();
        }
    }

    public static void b(long j, Phone phone) {
        b<Class, g>[] bVarArr;
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "convertPhoneToContactId - newContactId: " + j + ", phoneNum: " + phone);
        for (b<Class, g> bVar : f15020a) {
            Class cls = bVar.f1889a;
            g gVar = bVar.f1890b;
            a d2 = CallAppApplication.get().getObjectBoxStore().d(cls);
            String generateId = ContactData.generateId(phone, 0L);
            final String generateId2 = ContactData.generateId(phone, j);
            final ArrayList arrayList = new ArrayList();
            d2.e().a(gVar, generateId).a().a((c) new c<T>() { // from class: com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils.2
                @Override // io.objectbox.query.c
                public final /* synthetic */ void accept(Object obj) {
                    MonitoredDeviceID monitoredDeviceID = (MonitoredDeviceID) obj;
                    monitoredDeviceID.setPhoneOrIdKey(generateId2);
                    arrayList.add(monitoredDeviceID);
                    CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "convertPhoneToContactId: ".concat(String.valueOf(monitoredDeviceID)));
                }
            });
            if (CollectionUtils.b(arrayList)) {
                d2.a((Collection) arrayList);
            }
        }
        IMDataExtractionUtils.a(phone, (IMDataExtractionUtils.RecognizedPersonOrigin) null);
        ContactPlusUtils.a();
        EventBusManager.f14368a.c(RefreshSearchListener.f12962b, EventBusManager.CallAppDataType.REFRESH_SEARCH);
        a(Collections.singletonList(phone.a()), j);
    }

    public static void b(ContactLookupData contactLookupData) {
        CLog.a(ContactDeviceIDAndPhoneChangesUtils.class, "updateContactIdInContactLookup: ".concat(String.valueOf(contactLookupData)));
        CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).a((a) contactLookupData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContactLookupData c(long j) {
        return (ContactLookupData) CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().a(ContactLookupData_.contactId, j).a().a();
    }

    public static String c(String str) {
        if (str.length() < 6) {
            return null;
        }
        for (FastCacheData fastCacheData : CallAppApplication.get().getObjectBoxStore().d(FastCacheData.class).e().b(FastCacheData_.fullName).d().b(FastCacheData_.fullName, "").a().c()) {
            String str2 = (String) ContactData.splitPhoneOrIdKey(fastCacheData.getPhoneOrIdKey()).first;
            if (StringUtils.c(str2, str) || (str.startsWith("0") && StringUtils.c(str2, str.substring(1)))) {
                return fastCacheData.getFullName();
            }
        }
        return null;
    }

    public static List<ContactLookupData> d(String str) {
        List<ContactLookupData> c2 = CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().c(ContactLookupData_.phoneNumbers, str).a((g) ContactLookupData_.displayName, 0).a().c();
        List<ContactLookupData> list = c2;
        if (c2 == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public static List<ContactLookupData> e(String str) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class);
        String[] k = StringUtils.k(str, "\\s+");
        if (!CollectionUtils.b(k)) {
            return Collections.emptyList();
        }
        QueryBuilder e = d2.e();
        for (String str2 : k) {
            e.b(ContactLookupData_.unAccentName).b(ContactLookupData_.unAccentName, "").c(ContactLookupData_.unAccentName, str2);
        }
        List<ContactLookupData> c2 = e.a((g) ContactLookupData_.displayName, 0).a().c();
        HashSet hashSet = new HashSet();
        if (c2 != null) {
            for (ContactLookupData contactLookupData : c2) {
                hashSet.add(contactLookupData.getLookupKey());
            }
        }
        QueryBuilder e2 = d2.e();
        for (String str3 : k) {
            e2.b(ContactLookupData_.unAccentDescription).b(ContactLookupData_.unAccentDescription, "").c(ContactLookupData_.unAccentDescription, str3);
        }
        List<ContactLookupData> c3 = e2.a((g) ContactLookupData_.displayName, 0).a().c();
        if (!(c3 == null || c2 == null)) {
            for (ContactLookupData contactLookupData2 : c3) {
                if (!hashSet.contains(contactLookupData2.getLookupKey())) {
                    c2.add(contactLookupData2);
                }
            }
            Collections.sort(c2, _$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY.INSTANCE);
        }
        return c2 == null ? Collections.emptyList() : c2;
    }

    public static List<ContactLookupData> f(String str) {
        QueryBuilder c2 = CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().c(ContactLookupData_.phoneNumbers, str);
        c2.c().c(ContactLookupData_.nameT9Format, "0".concat(String.valueOf(str)));
        c2.c().c(ContactLookupData_.nameT9FormatNoZero, str);
        List<ContactLookupData> c3 = c2.a((g) ContactLookupData_.displayName, 0).a().c();
        List<ContactLookupData> list = c3;
        if (c3 == null) {
            list = Collections.emptyList();
        }
        return list;
    }
}
