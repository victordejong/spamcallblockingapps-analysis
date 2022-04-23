package com.callapp.contacts.manager.contacts;

import android.accounts.Account;
import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Pair;
import androidx.b.e;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.chooseContact.ChooseContactFromContactsActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.gmail.GmailManager;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.ContentUpdate;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.RowVisitor;
import com.callapp.contacts.framework.dao.column.BooleanColumn;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.framework.dao.column.IntColumn;
import com.callapp.contacts.framework.dao.column.LongColumn;
import com.callapp.contacts.framework.dao.column.StringColumn;
import com.callapp.contacts.loader.CompoundAsyncLoader;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.UserCorrectedInfoLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.business.FacebookPlacesLoader;
import com.callapp.contacts.loader.business.GooglePlacesLoader;
import com.callapp.contacts.loader.business.HuaweiPlacesLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.device.DevicePhotoLoader;
import com.callapp.contacts.loader.device.UserProfileLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.manager.cursor.ContactsAggregatorCursor;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.BlockedNumberData;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.observers.ContactUtilsContactsContentObserver;
import com.callapp.contacts.popup.contact.DialogChooseContactPhone;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/ContactUtils.class */
public class ContactUtils {

    /* renamed from: d  reason: collision with root package name */
    private static List<FavoriteMemoryContactItem> f15036d;

    /* renamed from: b  reason: collision with root package name */
    private static final e<String, String> f15034b = new e<>(20);

    /* renamed from: c  reason: collision with root package name */
    private static final BooleanColumn f15035c = new BooleanColumn("starred");
    private static final Object e = new Object();

    /* renamed from: a  reason: collision with root package name */
    public static final Account f15033a = new Account(Constants.APP_NAME, "com.callapp.contacts.account");
    private static Random f = new Random();

    public static long a(long j) {
        return ((Long) new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).a(Constants.ID_COLUMN).b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).a((RowCallback<RowCallback<Long>>) new RowCallback<Long>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.2
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Long onRow(RowContext rowContext) {
                return (Long) rowContext.a(Constants.ID_COLUMN);
            }
        }, (RowCallback<Long>) 0L)).longValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0117 A[EDGE_INSN: B:85:0x0117->B:32:0x0117 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent a(com.callapp.contacts.model.contact.ContactData r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.a(com.callapp.contacts.model.contact.ContactData, boolean):android.content.Intent");
    }

    private static Cursor a(boolean z, Collection<Long> collection, boolean z2) {
        ContentQuery c2 = new ContentQuery(ContactsContract.Data.CONTENT_URI).c("contact_id").c("data1").c("display_name").c("lookup").c("data1").c("mimetype").c("starred");
        if (z) {
            c2.c("times_contacted");
        }
        c2.a("mimetype= ? OR mimetype= ? ", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/note");
        c2.b("data1", "!=", (String) null).b("data1", "!=", "").b("account_type", "!=", f15033a.name);
        if (CollectionUtils.b(collection)) {
            c2.a(new LongColumn("contact_id"), collection);
        }
        if (z2) {
            c2.b((Column<String>) f15035c, "=", (String) Boolean.TRUE);
        }
        c2.a("contact_id", true).a("is_super_primary", false).a("is_primary", false);
        return c2.b();
    }

    public static ContactData a(Phone phone) {
        return new ContactLoader().addFields(EnumSet.of(ContactField.deviceId)).addFields(EnumSet.of(ContactField.fullName)).addFields(ContactField.isIncognito).addFields(ContactFieldEnumSets.PHOTO_FIELDS).addFields(ContactField.favorite).addDeviceDataAndFastPhotoNameLoaders().addSyncLoader(new CacheLoader()).addLoader(new GooglePlacesLoader()).addLoader(new FacebookPlacesLoader()).addLoader(new HuaweiPlacesLoader()).addLoader(new FacebookLoader()).addLoader(new InstagramLoader()).addLoader(new TwitterLoader()).addLoader(new PinterestLoader()).setLoadOnlyFromCache().setDisableContactEvents().load(phone);
    }

    public static ContactData a(String str) {
        if (str == null) {
            return null;
        }
        ContactLoader addFields = new ContactLoader().addFields(ContactField.fullName);
        addFields.addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new UserCorrectedInfoLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader());
        addFields.addFields(EnumSet.of(ContactField.deviceId, ContactField.deviceData));
        return addFields.load(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Phone a(RowContext rowContext) {
        Phone a2 = PhoneManager.get().a(rowContext.a("data1"));
        Integer valueOf = Integer.valueOf(rowContext.d("data2"));
        String a3 = rowContext.a("data3");
        if (valueOf != null) {
            a2.f17101c = PhoneType.fromCode(valueOf.intValue());
        }
        if (StringUtils.b((CharSequence) a3)) {
            a2.setCustomType(a3);
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(java.lang.String r7, long r8) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.a(java.lang.String, long):java.lang.String");
    }

    public static String a(String str, Integer num) {
        if (!StringUtils.b((CharSequence) str) || num.intValue() != 1) {
            return null;
        }
        return FacebookHelper.get().m(str);
    }

    public static String a(String str, String str2) {
        if (StringUtils.a((CharSequence) str) && StringUtils.a((CharSequence) str2)) {
            return "";
        }
        if (!StringUtils.b((CharSequence) str) || !StringUtils.b((CharSequence) str2)) {
            return StringUtils.b((CharSequence) str) ? str : str2;
        }
        return str2 + org.apache.commons.lang3.StringUtils.SPACE + str;
    }

    public static String a(List<String> list, Phone phone) {
        String rawNumber = phone.getRawNumber();
        String str = rawNumber;
        if (list.size() > 1) {
            str = rawNumber + " (+)";
        }
        return str;
    }

    public static Collection<JSONIMaddress> a(ContactData contactData, int i, String... strArr) {
        HashSet hashSet = new HashSet();
        for (JSONIMaddress jSONIMaddress : contactData.getImAddresses()) {
            if (jSONIMaddress.getProtocol() == i && StringUtils.b((CharSequence) jSONIMaddress.getIMAddress())) {
                hashSet.add(jSONIMaddress);
            }
        }
        if (strArr != null) {
            for (JSONEmail jSONEmail : contactData.getEmails()) {
                String email = jSONEmail.getEmail();
                if (email != null) {
                    for (String str : strArr) {
                        if (email.endsWith(str)) {
                            hashSet.add(new JSONIMaddress(email, 3, i));
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public static List<MemoryContactItem> a(boolean z) {
        return c(true);
    }

    public static Map<Long, MemoryContactItem> a(Set<Long> set) {
        Throwable th;
        HashMap hashMap = new HashMap();
        if (CollectionUtils.b(set)) {
            ContactsAggregatorCursor contactsAggregatorCursor = null;
            try {
                ContactsAggregatorCursor contactsAggregatorCursor2 = new ContactsAggregatorCursor(a(false, (Collection<Long>) set, false), set.size());
                try {
                    contactsAggregatorCursor2.moveToFirst();
                    while (!contactsAggregatorCursor2.isAfterLast()) {
                        MemoryContactItem dataAtPosition = contactsAggregatorCursor2.getDataAtPosition(contactsAggregatorCursor2.getPosition());
                        if (dataAtPosition != null) {
                            hashMap.put(Long.valueOf(dataAtPosition.getContactId()), dataAtPosition);
                        }
                        contactsAggregatorCursor2.moveToNext();
                    }
                    IoUtils.a((Cursor) contactsAggregatorCursor2);
                } catch (Throwable th2) {
                    th = th2;
                    contactsAggregatorCursor = contactsAggregatorCursor2;
                    IoUtils.a((Cursor) contactsAggregatorCursor);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return hashMap;
    }

    public static void a() {
        CLog.a(ContactUtilsContactsContentObserver.class, "resetContactList called");
        b();
        DeviceIdLoader.a();
        DevicePhotoLoader.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(long j, DialogContactMultiNumber.DialogContactMultiNumberListener dialogContactMultiNumberListener, Phone phone, boolean z) {
        if (phone != null && phone.isNotEmpty() && z) {
            a(j, phone);
        }
        if (dialogContactMultiNumberListener != null) {
            dialogContactMultiNumberListener.onDone(phone, z);
        }
    }

    public static void a(long j, final Phone phone) {
        Long l = (Long) ContentQuery.a(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).a(new LongColumn("_id")).a(new StringColumn("data1")).b("contact_id", "=", String.valueOf(j)).c(new RowCallback<Long>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.6
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Long onRow(RowContext rowContext) {
                if (PhoneManager.get().a(rowContext.a("data1")).equals(Phone.this)) {
                    return (Long) rowContext.a(new LongColumn("_id"));
                }
                return null;
            }
        });
        if (l != null) {
            String valueOf = String.valueOf(l);
            ContentUpdate c2 = ContentQuery.c(ContactsContract.Data.CONTENT_URI);
            c2.f14393a.put(new IntColumn("is_super_primary").f14402a, (Integer) 1);
            c2.a("contact_id = ? AND mimetype = ? AND _id = ?", String.valueOf(j), "vnd.android.cursor.item/phone_v2", valueOf);
            CLog.a(ContactUtils.class, String.format("Setting phone %s as super primary for contact id %d. Updated: %d", phone.a(), Long.valueOf(j), Integer.valueOf(c2.b().intValue())));
        }
    }

    public static void a(long j, boolean z) {
        ContentQuery.c(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(j))).a(f15035c, Boolean.valueOf(z)).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity, int i, int i2, Intent intent) {
        if (i2 == -1 && intent != null && intent.getExtras() != null) {
            final long j = intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID);
            final String string = intent.getExtras().getString(Constants.EXTRA_PHONE_NUMBER);
            new Task() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.16
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(PhoneManager.get().a(string), j);
                    if (contactDataOnlyIfAlreadyLoaded != null) {
                        ContactDataUtils.setIsFavorite((ContactData) contactDataOnlyIfAlreadyLoaded.first, true);
                    } else {
                        ContactUtils.a(j, true);
                    }
                }
            }.execute();
        }
    }

    public static void a(Context context) {
        Activities.a(context, (Class<?>) ChooseContactFromContactsActivity.class, (ActivityResult) _$$Lambda$ContactUtils$KeBqLxVdjG2CyfVKdM7505JRr7w.INSTANCE);
    }

    public static void a(BaseAdapterItemData baseAdapterItemData) {
        if (StringUtils.b((CharSequence) baseAdapterItemData.displayName)) {
            baseAdapterItemData.nameT9 = T9Helper.a(baseAdapterItemData.displayName);
            baseAdapterItemData.unaccentName = RegexUtils.l(baseAdapterItemData.displayName);
        }
    }

    public static void a(List<Long> list, List<ContactLookupData> list2, Map<String, ContactLookupData> map) {
        for (Long l : list) {
            ContactLookupData c2 = ContactDeviceIDAndPhoneChangesUtils.c(l.longValue());
            if (c2 != null) {
                String a2 = a(c2.getLookupKey(), c2.getContactId());
                StringBuilder sb = new StringBuilder("lookup search results - original: ");
                sb.append(c2);
                sb.append(", from device: ");
                sb.append(a2);
                CLog.a("V21ContentObserver");
                if (StringUtils.a((CharSequence) a2)) {
                    list2.add(c2);
                } else {
                    map.put(a2, c2);
                }
            } else {
                "removeContactIdOnAllTables: ".concat(String.valueOf(l));
                CLog.a("V21ContentObserver");
                ContactDeviceIDAndPhoneChangesUtils.a(l.longValue());
                Iterator<Map.Entry<String, ContactLookupData>> it2 = map.entrySet().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Map.Entry<String, ContactLookupData> next = it2.next();
                        if (next.getValue().getContactId() == l.longValue()) {
                            list2.add(next.getValue());
                            map.remove(next.getKey());
                            break;
                        }
                    }
                }
            }
        }
    }

    public static boolean a(Context context, long j, String str) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id = ?", new String[]{String.valueOf(j)}, null);
                if (query == null || !query.moveToFirst()) {
                    IoUtils.a(query);
                    return false;
                }
                String string = query.getString(query.getColumnIndex("_id"));
                ContentResolver contentResolver = context.getContentResolver();
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValue("raw_contact_id", string).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", str).build());
                cursor2 = query;
                cursor = query;
                CLog.a(ContactUtils.class, "Finish update contact name: ".concat(String.valueOf(contentResolver.applyBatch("com.android.contacts", arrayList))));
                IoUtils.a(query);
                return true;
            } catch (Exception e2) {
                CLog.a(ContactUtils.class, e2);
                IoUtils.a(cursor);
                return false;
            }
        } catch (Throwable th) {
            IoUtils.a(cursor2);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r13, com.callapp.framework.phone.Phone r14, final long r15, java.util.List<java.lang.String> r17, final com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener r18) {
        /*
            r0 = 1
            r19 = r0
            r0 = r14
            r20 = r0
            r0 = r17
            if (r0 == 0) goto L_0x0090
            r0 = r14
            r20 = r0
            r0 = r17
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L_0x0090
            r0 = 0
            r14 = r0
            r0 = r15
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0024
            goto L_0x0060
        L_0x0024:
            com.callapp.contacts.framework.dao.ContentQuery r0 = new com.callapp.contacts.framework.dao.ContentQuery
            r1 = r0
            android.net.Uri r2 = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI
            r1.<init>(r2)
            java.lang.String r1 = "data1"
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.c(r1)
            com.callapp.contacts.framework.dao.column.IntColumn r1 = com.callapp.contacts.model.Constants.TYPE_COLUMN
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.a(r1)
            com.callapp.contacts.framework.dao.column.LongColumn r1 = com.callapp.contacts.model.Constants.CONTACT_ID_COLUMN
            java.lang.String r2 = "="
            r3 = r15
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.b(r1, r2, r3)
            java.lang.String r1 = "is_super_primary"
            java.lang.String r2 = "="
            java.lang.String r3 = "1"
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.b(r1, r2, r3)
            com.callapp.contacts.manager.contacts.ContactUtils$5 r1 = new com.callapp.contacts.manager.contacts.ContactUtils$5
            r2 = r1
            r2.<init>()
            r2 = 0
            java.lang.Object r0 = r0.a(r1, r2)
            com.callapp.framework.phone.Phone r0 = (com.callapp.framework.phone.Phone) r0
            r14 = r0
        L_0x0060:
            r0 = r14
            r20 = r0
            r0 = r14
            if (r0 != 0) goto L_0x0090
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r17
            r1.<init>(r2)
            r17 = r0
            com.callapp.contacts.manager.popup.PopupManager r0 = com.callapp.contacts.manager.popup.PopupManager.get()
            r1 = r13
            com.callapp.contacts.popup.contact.DialogContactMultiNumber r2 = new com.callapp.contacts.popup.contact.DialogContactMultiNumber
            r3 = r2
            r4 = r15
            r5 = r17
            com.callapp.contacts.manager.contacts._$$Lambda$ContactUtils$ohU5WylqI__FV9rzoJOwUwFpmdk r6 = new com.callapp.contacts.manager.contacts._$$Lambda$ContactUtils$ohU5WylqI__FV9rzoJOwUwFpmdk
            r7 = r6
            r8 = r15
            r9 = r18
            r7.<init>()
            r3.<init>(r4, r5, r6)
            r0.a(r1, r2)
            goto L_0x0096
        L_0x0090:
            r0 = 0
            r19 = r0
            r0 = r20
            r14 = r0
        L_0x0096:
            r0 = r19
            if (r0 != 0) goto L_0x00a4
            r0 = r18
            r1 = r14
            r2 = 0
            r0.onDone(r1, r2)
        L_0x00a4:
            r0 = r19
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.a(android.content.Context, com.callapp.framework.phone.Phone, long, java.util.List, com.callapp.contacts.popup.contact.DialogContactMultiNumber$DialogContactMultiNumberListener):boolean");
    }

    public static boolean a(Context context, Phone phone, List<Phone> list, DialogContactMultiNumber.DialogContactMultiNumberListener dialogContactMultiNumberListener) {
        boolean z = false;
        if (list == null || list.size() > 1) {
            DialogChooseContactPhone dialogChooseContactPhone = new DialogChooseContactPhone(context, Activities.getString(2131886750), phone, list, dialogContactMultiNumberListener);
            dialogChooseContactPhone.setDialogType(Popup.DialogType.withInset);
            PopupManager.get().a(context, dialogChooseContactPhone);
            z = true;
        } else {
            dialogContactMultiNumberListener.onDone(phone, false);
        }
        return z;
    }

    public static boolean a(Phone phone, long j) {
        new IncognitoContactsManager();
        return IncognitoContactsManager.a(ContactData.generateId(phone, j)) != null;
    }

    public static boolean a(List<ContactLookupData> list) {
        if (CollectionUtils.a(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (ContactLookupData contactLookupData : list) {
            "deleteContacts: ".concat(String.valueOf(contactLookupData));
            CLog.a("V21ContentObserver");
            if (CollectionUtils.b(contactLookupData.getPhoneNumbers())) {
                for (String str : contactLookupData.getPhoneNumbers()) {
                    Phone a2 = PhoneManager.get().a(str);
                    StringBuilder sb = new StringBuilder("deleteContacts: convertContactIdToPhone: ");
                    sb.append(contactLookupData.getContactId());
                    sb.append(": ");
                    sb.append(a2);
                    CLog.a("V21ContentObserver");
                    ContactDeviceIDAndPhoneChangesUtils.a(contactLookupData.getContactId(), a2);
                }
            }
            "deleteContacts: removeLookupKeyFromContactLookup: ".concat(String.valueOf(contactLookupData));
            CLog.a("V21ContentObserver");
            ContactDeviceIDAndPhoneChangesUtils.a(contactLookupData.getLookupKey());
            "deleteContacts: removeContactIdOnAllTables: ".concat(String.valueOf(contactLookupData));
            CLog.a("V21ContentObserver");
            ContactDeviceIDAndPhoneChangesUtils.a(contactLookupData.getContactId());
            arrayList.add(Long.valueOf(contactLookupData.getContactId()));
        }
        c(arrayList);
        return CollectionUtils.b(arrayList);
    }

    public static boolean a(List<String> list, String str) {
        if (!CollectionUtils.b(list) || str.length() <= 6) {
            return false;
        }
        String a2 = StringUtils.a(str, str.length() - 6, str.length());
        for (String str2 : list) {
            if (str2.endsWith(a2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Set<Long> set, Map<Long, Long> map) {
        Throwable th;
        FavoriteMemoryContactItem next;
        boolean z;
        if (f15036d == null || CollectionUtils.a(set)) {
            return false;
        }
        ContactsAggregatorCursor contactsAggregatorCursor = null;
        try {
            ContactsAggregatorCursor contactsAggregatorCursor2 = new ContactsAggregatorCursor(a(false, (Collection<Long>) set, false), set.size());
            try {
                contactsAggregatorCursor2.moveToFirst();
                boolean z2 = false;
                while (!contactsAggregatorCursor2.isAfterLast()) {
                    MemoryContactItem dataAtPosition = contactsAggregatorCursor2.getDataAtPosition(contactsAggregatorCursor2.getPosition());
                    z2 = z2;
                    if (dataAtPosition != null) {
                        Long l = map.get(Long.valueOf(dataAtPosition.contactId));
                        List<FavoriteMemoryContactItem> list = f15036d;
                        z2 = z2;
                        if (list != null) {
                            boolean z3 = z2;
                            if (l != null) {
                                Iterator<FavoriteMemoryContactItem> it2 = list.iterator();
                                while (true) {
                                    z3 = z2;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    FavoriteMemoryContactItem next2 = it2.next();
                                    if (next2.contactId == l.longValue()) {
                                        f15036d.remove(next2);
                                        z3 = true;
                                        break;
                                    }
                                }
                            }
                            if (dataAtPosition.f12645c) {
                                Iterator<FavoriteMemoryContactItem> it3 = f15036d.iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        if (it3.next().contactId == dataAtPosition.contactId) {
                                            z = false;
                                            break;
                                        }
                                    } else {
                                        z = true;
                                        break;
                                    }
                                }
                                z2 = z3;
                                if (z) {
                                    f15036d.add(new FavoriteMemoryContactItem(dataAtPosition));
                                    z2 = true;
                                }
                            } else {
                                Iterator<FavoriteMemoryContactItem> it4 = f15036d.iterator();
                                do {
                                    z2 = z3;
                                    if (!it4.hasNext()) {
                                        break;
                                    }
                                    next = it4.next();
                                } while (next.contactId != dataAtPosition.contactId);
                                f15036d.remove(next);
                                z2 = true;
                            }
                        }
                    }
                    contactsAggregatorCursor2.moveToNext();
                }
                IoUtils.a((Cursor) contactsAggregatorCursor2);
                List<FavoriteMemoryContactItem> list2 = f15036d;
                if (list2 == null || !z2) {
                    return true;
                }
                Collections.sort(list2);
                return true;
            } catch (Throwable th2) {
                th = th2;
                contactsAggregatorCursor = contactsAggregatorCursor2;
                IoUtils.a((Cursor) contactsAggregatorCursor);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static ContentProviderResult[] a(String str, String str2, String str3) {
        String str4;
        String gmailAccount = GmailManager.get().getGmailAccount();
        if (StringUtils.b((CharSequence) gmailAccount)) {
            str4 = "com.google";
        } else {
            gmailAccount = null;
            str4 = null;
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", str4).withValue("account_name", gmailAccount).build());
        if (StringUtils.b((CharSequence) str)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", str).build());
        }
        if (StringUtils.b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", null).withValue("data2", 2).build());
        }
        if (StringUtils.b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", null).withValue("data2", 1).build());
        }
        if (StringUtils.b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", null).withValue("data2", 3).build());
        }
        if (StringUtils.b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", null).withValue("data2", 2).build());
        }
        if (StringUtils.b((CharSequence) str2)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", str2).withValue("data2", 1).build());
        }
        if (StringUtils.b((CharSequence) null) && StringUtils.b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/organization").withValue("data1", null).withValue("data2", 1).withValue("data4", null).withValue("data2", 1).build());
        }
        if (StringUtils.b((CharSequence) str3)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/contact_event").withValue("data1", str3).withValue("data2", 3).build());
        }
        try {
            return CallAppApplication.get().getContentResolver().applyBatch("com.android.contacts", arrayList);
        } catch (Exception e2) {
            CLog.a(ContactUtils.class, e2);
            return null;
        }
    }

    public static ContactData b(Phone phone, long j) {
        return new ContactLoader().addBirthdayStack().addFields(ContactField.fullName, ContactField.photoUrl, ContactField.deviceId, ContactField.facebookId).load(phone, j);
    }

    public static ContactData b(boolean z) {
        ContactLoader disableSpecificCaches = new ContactLoader().addFields(ContactField.fullName, ContactField.emails, ContactField.addresses, ContactField.phone).setDisableSpecificCaches();
        if (z) {
            disableSpecificCaches.addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS);
            disableSpecificCaches.addFields(EnumSet.of(ContactField.facebookData, ContactField.twitterData, ContactField.foursquareData, ContactField.instagramData, ContactField.pinterestData));
        }
        disableSpecificCaches.addSyncLoader(new UserProfileLoader());
        String str = Prefs.ao.get();
        if (StringUtils.a((CharSequence) str)) {
            str = "0";
        } else {
            disableSpecificCaches.addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader());
            disableSpecificCaches.addFields(EnumSet.of(ContactField.deviceId, ContactField.deviceData));
        }
        if (z) {
            CompoundAsyncLoader compoundAsyncLoader = new CompoundAsyncLoader();
            compoundAsyncLoader.a(new FacebookLoader()).a(new TwitterLoader()).a(new VKLoader()).a(new InstagramLoader()).a(new PinterestLoader());
            disableSpecificCaches.addSyncLoader(compoundAsyncLoader);
        }
        return disableSpecificCaches.load(str);
    }

    public static Phone b(long j) {
        if (j == 0) {
            return null;
        }
        return (Phone) new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).c("data1").a(Constants.TYPE_COLUMN).b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).a("is_primary", false).a((RowCallback<RowCallback<Phone>>) new RowCallback<Phone>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.4
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Phone onRow(RowContext rowContext) {
                Phone a2 = PhoneManager.get().a(rowContext.a("data1"));
                a2.f17101c = PhoneType.fromCode(((Integer) rowContext.a(Constants.TYPE_COLUMN)).intValue());
                return a2;
            }
        }, (RowCallback<Phone>) null);
    }

    public static List<String> b(List<String> list) {
        final StringColumn stringColumn = new StringColumn("display_name");
        return ContentQuery.a(ContactsContract.Contacts.CONTENT_URI).a(stringColumn).a(new StringColumn("_id"), list).b("display_name_source", "!=", "20").a(new RowCallback<String>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.7
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return (String) rowContext.a(StringColumn.this);
            }
        });
    }

    public static void b() {
        synchronized (e) {
            f15036d = null;
        }
    }

    public static String c(long j) {
        return (String) new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).c("display_name").b("account_type", "=", Constants.SKYPE_ACCOUNT_TYPE).b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.9
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return rowContext.a("display_name");
            }
        }, (RowCallback<String>) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0116, code lost:
        if (r22 != r27) goto L_0x0119;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:250:0x05a2  */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r27v0, types: [long] */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.callapp.contacts.activity.contact.list.MemoryContactItem> c(boolean r7) {
        /*
            Method dump skipped, instructions count: 1496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.c(boolean):java.util.List");
    }

    public static void c() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = CallAppApplication.get().getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "data1 = ?", new String[]{"jasmine@callapp.info"}, null);
                cursor = cursor2;
                if (cursor2 != null) {
                    cursor2 = cursor2;
                    cursor = cursor2;
                    cursor = cursor2;
                    if (cursor2.moveToNext()) {
                        return;
                    }
                }
            } catch (Exception e2) {
                cursor2 = cursor;
                CLog.a(ContactUtils.class, e2);
            }
            IoUtils.a(cursor);
            ContentProviderResult[] a2 = a(Constants.APP_NAME, "jasmine@callapp.info", "1990-05-26");
            if (CollectionUtils.b(a2)) {
                for (ContentProviderResult contentProviderResult : a2) {
                    if (contentProviderResult.uri != null && StringUtils.g(contentProviderResult.uri.toString(), "raw")) {
                        String[] split = contentProviderResult.uri.toString().split("/");
                        if (CollectionUtils.b(split)) {
                            new ContentQuery(ContactsContract.Data.CONTENT_URI).c("data1").b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(split[split.length - 1])).b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/contact_event").b((Column<String>) Constants.TYPE_COLUMN, "=", (String) 3).a(new RowVisitor() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.15
                                @Override // com.callapp.contacts.framework.dao.RowVisitor
                                public final void onRow(RowContext rowContext) {
                                    String a3 = rowContext.a("data1");
                                    if (!StringUtils.a((CharSequence) a3)) {
                                        DateUtils.setParseLocalDatePref(a3);
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                }
            }
        } finally {
            IoUtils.a(cursor2);
        }
    }

    private static boolean c(List<Long> list) {
        boolean z = false;
        if (f15036d == null) {
            return false;
        }
        for (Long l : list) {
            List<FavoriteMemoryContactItem> list2 = f15036d;
            if (list2 != null) {
                Iterator<FavoriteMemoryContactItem> it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        FavoriteMemoryContactItem next = it2.next();
                        if (next.contactId == l.longValue()) {
                            f15036d.remove(next);
                            z = true;
                            break;
                        }
                    }
                }
            }
        }
        return z;
    }

    public static Pair<String, String> d(long j) {
        Pair<String, String> pair = (Pair) new ContentQuery(ContactsContract.Contacts.CONTENT_URI).c("photo_uri").c("photo_thumb_uri").b("_id", "=", String.valueOf(j)).a((RowCallback<RowCallback<Pair<String, String>>>) new RowCallback<Pair<String, String>>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.10
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Pair<String, String> onRow(RowContext rowContext) {
                return new Pair<>((String) rowContext.a(new StringColumn("photo_uri")), (String) rowContext.a(new StringColumn("photo_thumb_uri")));
            }
        }, (RowCallback<Pair<String, String>>) null);
        Pair<String, String> pair2 = pair;
        if (pair != null) {
            pair2 = pair;
            if (StringUtils.b((CharSequence) pair.second)) {
                pair2 = pair;
                if (StringUtils.b((String) pair.first, (String) pair.second)) {
                    Uri withAppendedPath = Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "display_photo");
                    try {
                        CallAppApplication.get().getContentResolver().openAssetFileDescriptor(withAppendedPath, "r");
                        pair2 = new Pair<>(withAppendedPath.toString(), pair.second);
                    } catch (IOException e2) {
                        pair2 = pair;
                    }
                }
            }
        }
        return pair2;
    }

    public static String e(long j) {
        return (String) new ContentQuery(ContactsContract.Contacts.CONTENT_URI).c("photo_uri").b("_id", "=", String.valueOf(j)).a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.11
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return (String) rowContext.a(new StringColumn("photo_uri"));
            }
        }, (RowCallback<String>) null);
    }

    public static List<Phone> f(long j) {
        return new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).a("data2", "data3", "data1").b("contact_id", "=", String.valueOf(j)).a((RowCallback) _$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8.INSTANCE);
    }

    public static Map<Long, String> getAllSkypeNames() {
        final HashMap hashMap = new HashMap();
        new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).c("display_name").a(Constants.CONTACT_ID_COLUMN).b("account_type", "=", Constants.SKYPE_ACCOUNT_TYPE).a(new RowVisitor() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.8
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                long c2 = rowContext.c("contact_id");
                hashMap.put(Long.valueOf(c2), rowContext.a("display_name"));
            }
        });
        return hashMap;
    }

    private static Set<Long> getBlockedContactIds() {
        HashSet hashSet = new HashSet();
        new ContentQuery(ContactsContract.Contacts.CONTENT_URI).c("_id").b((Column<String>) BlockManager.f14793a, "=", (String) Boolean.TRUE).a(hashSet, new RowCallback<Long>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.14
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Long onRow(RowContext rowContext) {
                return Long.valueOf(rowContext.c("_id"));
            }
        });
        return hashSet;
    }

    public static List<ReminderData> getBlockedContacts() {
        List<ReminderData> blockedContactsInternal = getBlockedContactsInternal();
        BaseAdapterItemData.createCacheKeysAsync(blockedContactsInternal);
        return blockedContactsInternal;
    }

    private static List<ReminderData> getBlockedContactsInternal() {
        Cursor b2 = new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).a("display_name", "contact_id", "data1", "is_primary").a("is_primary", false).a(new LongColumn("contact_id"), getBlockedContactIds()).b();
        ArrayList arrayList = new ArrayList();
        if (b2 != null) {
            try {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                while (b2.moveToNext()) {
                    String string = b2.getString(2);
                    if (!StringUtils.a((CharSequence) string)) {
                        long j = b2.getLong(1);
                        if (!linkedHashSet.contains(Long.valueOf(j))) {
                            linkedHashSet.add(Long.valueOf(j));
                            arrayList.add(new ReminderData(-1L, new Date(0L), j, PhoneManager.get().a(string), b2.getString(0), ReminderType.BLOCKED));
                        }
                    }
                }
                for (BlockedNumberData blockedNumberData : BlockManager.getBlockedNumbersForIncoming()) {
                    arrayList.add(new ReminderData(-1L, new Date(0L), 0L, blockedNumberData.getPhone(), blockedNumberData.getFullName(), ReminderType.BLOCKED));
                }
                Collections.sort(arrayList, new Comparator<ReminderData>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.13
                    @Override // java.util.Comparator
                    public final /* synthetic */ int compare(ReminderData reminderData, ReminderData reminderData2) {
                        ReminderData reminderData3 = reminderData;
                        ReminderData reminderData4 = reminderData2;
                        if (reminderData3 == null || reminderData3.displayName == null) {
                            return (reminderData4 == null || reminderData4.displayName == null) ? 0 : -1;
                        }
                        if (reminderData4 == null || reminderData4.displayName == null) {
                            return 1;
                        }
                        return reminderData3.displayName.compareTo(reminderData4.displayName);
                    }
                });
            } finally {
                IoUtils.a(b2);
            }
        }
        return arrayList;
    }

    public static Map<Long, String> getContactIdToThumbnailUriMap() {
        final HashMap hashMap = new HashMap();
        new ContentQuery(ContactsContract.Contacts.CONTENT_URI).a("photo_thumb_uri", "_id").b("has_phone_number", "=", "1").a(new RowVisitor() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.12
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                long c2 = rowContext.c("_id");
                String a2 = rowContext.a("photo_thumb_uri");
                if (StringUtils.b((CharSequence) a2)) {
                    hashMap.put(Long.valueOf(c2), a2);
                }
            }
        });
        return hashMap;
    }

    private static Cursor getContactListEmailsCursor() {
        return new ContentQuery(ContactsContract.CommonDataKinds.Email.CONTENT_URI).c("contact_id").a(Constants.DATA_COLUMN).a(Constants.TYPE_COLUMN).a(Constants.DISPLAY_NAME_COLUMN).b(Constants.DATA_COLUMN, "!=", (String) null).b(Constants.DATA_COLUMN, "!=", JsonReaderKt.NULL).b(Constants.DATA_COLUMN, "!=", "").a("contact_id", true).b();
    }

    public static List<MemoryContactItem> getContactsWithPhoneNumber() {
        return c(false);
    }

    public static List<FavoriteMemoryContactItem> getFavoriteContacts() {
        ArrayList arrayList;
        synchronized (e) {
            if (CollectionUtils.a(f15036d)) {
                PermissionManager.get();
                List<FavoriteMemoryContactItem> favoritesInternal = !PermissionManager.a() ? f15036d : CollectionUtils.b(f15036d) ? f15036d : getFavoritesInternal();
                f15036d = favoritesInternal;
                BaseAdapterItemData.createCacheKeysAsync(favoritesInternal);
            }
            List<FavoriteMemoryContactItem> list = f15036d;
            if (list == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
            }
        }
        return arrayList;
    }

    private static List<FavoriteMemoryContactItem> getFavoritesInternal() {
        Throwable th;
        ArrayList arrayList = new ArrayList();
        ContactsAggregatorCursor contactsAggregatorCursor = null;
        contactsAggregatorCursor = null;
        Cursor a2 = a(false, (Collection<Long>) null, true);
        if (a2 != null) {
            try {
                contactsAggregatorCursor = new ContactsAggregatorCursor(a2, a2.getCount());
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                contactsAggregatorCursor.moveToFirst();
                while (!contactsAggregatorCursor.isAfterLast()) {
                    MemoryContactItem dataAtPosition = contactsAggregatorCursor.getDataAtPosition(contactsAggregatorCursor.getPosition());
                    if (dataAtPosition != null) {
                        arrayList.add(new FavoriteMemoryContactItem(dataAtPosition));
                    }
                    contactsAggregatorCursor.moveToNext();
                }
            } catch (Throwable th3) {
                th = th3;
                IoUtils.a((Cursor) contactsAggregatorCursor);
                throw th;
            }
        }
        IoUtils.a((Cursor) contactsAggregatorCursor);
        Collections.sort(arrayList);
        return arrayList;
    }
}
