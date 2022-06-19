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
import androidx.p023b.C0434e;
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
import com.callapp.contacts.loader.p239vk.VKLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
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

    /* renamed from: d */
    private static List<FavoriteMemoryContactItem> f25973d;

    /* renamed from: b */
    private static final C0434e<String, String> f25971b = new C0434e<>(20);

    /* renamed from: c */
    private static final BooleanColumn f25972c = new BooleanColumn("starred");

    /* renamed from: e */
    private static final Object f25974e = new Object();

    /* renamed from: a */
    public static final Account f25970a = new Account(Constants.APP_NAME, "com.callapp.contacts.account");

    /* renamed from: f */
    private static Random f25975f = new Random();

    /* renamed from: a */
    public static long m28340a(long j) {
        return ((Long) new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).m29023a(Constants.ID_COLUMN).m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).m29025a((RowCallback<RowCallback<Long>>) new RowCallback<Long>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.2
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Long onRow(RowContext rowContext) {
                return (Long) rowContext.m29003a(Constants.ID_COLUMN);
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent m28328a(com.callapp.contacts.model.contact.ContactData r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.m28328a(com.callapp.contacts.model.contact.ContactData, boolean):android.content.Intent");
    }

    /* renamed from: a */
    private static Cursor m28313a(boolean z, Collection<Long> collection, boolean z2) {
        ContentQuery m29008c = new ContentQuery(ContactsContract.Data.CONTENT_URI).m29008c("contact_id").m29008c("data1").m29008c("display_name").m29008c("lookup").m29008c("data1").m29008c("mimetype").m29008c("starred");
        if (z) {
            m29008c.m29008c("times_contacted");
        }
        m29008c.m29035a("mimetype= ? OR mimetype= ? ", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/note");
        m29008c.m29012b("data1", "!=", (String) null).m29012b("data1", "!=", "").m29012b("account_type", "!=", f25970a.name);
        if (CollectionUtils.m26068b(collection)) {
            m29008c.m29022a(new LongColumn("contact_id"), collection);
        }
        if (z2) {
            m29008c.m29014b((Column<String>) f25972c, "=", (String) Boolean.TRUE);
        }
        m29008c.m29020a("contact_id", true).m29020a("is_super_primary", false).m29020a("is_primary", false);
        return m29008c.m29039b();
    }

    /* renamed from: a */
    public static ContactData m28327a(Phone phone) {
        return new ContactLoader().addFields(EnumSet.of(ContactField.deviceId)).addFields(EnumSet.of(ContactField.fullName)).addFields(ContactField.isIncognito).addFields(ContactFieldEnumSets.PHOTO_FIELDS).addFields(ContactField.favorite).addDeviceDataAndFastPhotoNameLoaders().addSyncLoader(new CacheLoader()).addLoader(new GooglePlacesLoader()).addLoader(new FacebookPlacesLoader()).addLoader(new HuaweiPlacesLoader()).addLoader(new FacebookLoader()).addLoader(new InstagramLoader()).addLoader(new TwitterLoader()).addLoader(new PinterestLoader()).setLoadOnlyFromCache().setDisableContactEvents().load(phone);
    }

    /* renamed from: a */
    public static ContactData m28325a(String str) {
        if (str == null) {
            return null;
        }
        ContactLoader addFields = new ContactLoader().addFields(ContactField.fullName);
        addFields.addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new UserCorrectedInfoLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader());
        addFields.addFields(EnumSet.of(ContactField.deviceId, ContactField.deviceData));
        return addFields.load(str);
    }

    /* renamed from: a */
    public static /* synthetic */ Phone m28330a(RowContext rowContext) {
        Phone m28239a = PhoneManager.get().m28239a(rowContext.m29002a("data1"));
        Integer valueOf = Integer.valueOf(rowContext.m28999d("data2"));
        String m29002a = rowContext.m29002a("data3");
        if (valueOf != null) {
            m28239a.f29664c = PhoneType.fromCode(valueOf.intValue());
        }
        if (StringUtils.m26045b((CharSequence) m29002a)) {
            m28239a.setCustomType(m29002a);
        }
        return m28239a;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x010d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m28324a(java.lang.String r7, long r8) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.m28324a(java.lang.String, long):java.lang.String");
    }

    /* renamed from: a */
    public static String m28323a(String str, Integer num) {
        if (!StringUtils.m26045b((CharSequence) str) || num.intValue() != 1) {
            return null;
        }
        return FacebookHelper.get().m29202m(str);
    }

    /* renamed from: a */
    public static String m28322a(String str, String str2) {
        if (!StringUtils.m26059a((CharSequence) str) || !StringUtils.m26059a((CharSequence) str2)) {
            if (!StringUtils.m26045b((CharSequence) str) || !StringUtils.m26045b((CharSequence) str2)) {
                return StringUtils.m26045b((CharSequence) str) ? str : str2;
            }
            return str2 + org.apache.commons.lang3.StringUtils.SPACE + str;
        }
        return "";
    }

    /* renamed from: a */
    public static String m28319a(List<String> list, Phone phone) {
        String rawNumber = phone.getRawNumber();
        String str = rawNumber;
        if (list.size() > 1) {
            str = rawNumber + " (+)";
        }
        return str;
    }

    /* renamed from: a */
    public static Collection<JSONIMaddress> m28329a(ContactData contactData, int i, String... strArr) {
        HashSet hashSet = new HashSet();
        for (JSONIMaddress jSONIMaddress : contactData.getImAddresses()) {
            if (jSONIMaddress.getProtocol() == i && StringUtils.m26045b((CharSequence) jSONIMaddress.getIMAddress())) {
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

    /* renamed from: a */
    public static List<MemoryContactItem> m28314a(boolean z) {
        return m28304c(true);
    }

    /* renamed from: a */
    public static Map<Long, MemoryContactItem> m28316a(Set<Long> set) {
        Throwable th;
        HashMap hashMap = new HashMap();
        if (CollectionUtils.m26068b(set)) {
            ContactsAggregatorCursor contactsAggregatorCursor = null;
            try {
                ContactsAggregatorCursor contactsAggregatorCursor2 = new ContactsAggregatorCursor(m28313a(false, (Collection<Long>) set, false), set.size());
                try {
                    contactsAggregatorCursor2.moveToFirst();
                    while (!contactsAggregatorCursor2.isAfterLast()) {
                        MemoryContactItem dataAtPosition = contactsAggregatorCursor2.getDataAtPosition(contactsAggregatorCursor2.getPosition());
                        if (dataAtPosition != null) {
                            hashMap.put(Long.valueOf(dataAtPosition.getContactId()), dataAtPosition);
                        }
                        contactsAggregatorCursor2.moveToNext();
                    }
                    IoUtils.m27517a((Cursor) contactsAggregatorCursor2);
                } catch (Throwable th2) {
                    th = th2;
                    contactsAggregatorCursor = contactsAggregatorCursor2;
                    IoUtils.m27517a((Cursor) contactsAggregatorCursor);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m28341a() {
        CLog.m27611a(ContactUtilsContactsContentObserver.class, "resetContactList called");
        m28312b();
        DeviceIdLoader.m28855a();
        DevicePhotoLoader.m28851a();
    }

    /* renamed from: a */
    public static /* synthetic */ void m28339a(long j, DialogContactMultiNumber.DialogContactMultiNumberListener dialogContactMultiNumberListener, Phone phone, boolean z) {
        if (phone != null && phone.isNotEmpty() && z) {
            m28338a(j, phone);
        }
        if (dialogContactMultiNumberListener != null) {
            dialogContactMultiNumberListener.onDone(phone, z);
        }
    }

    /* renamed from: a */
    public static void m28338a(long j, final Phone phone) {
        Long l = (Long) ContentQuery.m29028a(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).m29023a(new LongColumn("_id")).m29023a(new StringColumn("data1")).m29012b("contact_id", "=", String.valueOf(j)).m29009c(new RowCallback<Long>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.6
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Long onRow(RowContext rowContext) {
                if (PhoneManager.get().m28239a(rowContext.m29002a("data1")).equals(phone)) {
                    return (Long) rowContext.m29003a(new LongColumn("_id"));
                }
                return null;
            }
        });
        if (l != null) {
            String valueOf = String.valueOf(l);
            ContentUpdate m29010c = ContentQuery.m29010c(ContactsContract.Data.CONTENT_URI);
            m29010c.f25166a.put(new IntColumn("is_super_primary").f25180a, (Integer) 1);
            m29010c.m29035a("contact_id = ? AND mimetype = ? AND _id = ?", String.valueOf(j), "vnd.android.cursor.item/phone_v2", valueOf);
            CLog.m27611a(ContactUtils.class, String.format("Setting phone %s as super primary for contact id %d. Updated: %d", phone.m26101a(), Long.valueOf(j), Integer.valueOf(m29010c.m29039b().intValue())));
        }
    }

    /* renamed from: a */
    public static void m28337a(long j, boolean z) {
        ContentQuery.m29010c(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(j))).m29006a(f25972c, Boolean.valueOf(z)).m29039b();
    }

    /* renamed from: a */
    public static /* synthetic */ void m28336a(Activity activity, int i, int i2, Intent intent) {
        if (i2 != -1 || intent == null || intent.getExtras() == null) {
            return;
        }
        final long j = intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID);
        final String string = intent.getExtras().getString(Constants.EXTRA_PHONE_NUMBER);
        new Task() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.16
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(PhoneManager.get().m28239a(string), j);
                if (contactDataOnlyIfAlreadyLoaded != null) {
                    ContactDataUtils.setIsFavorite((ContactData) contactDataOnlyIfAlreadyLoaded.first, true);
                } else {
                    ContactUtils.m28337a(j, true);
                }
            }
        }.execute();
    }

    /* renamed from: a */
    public static void m28335a(Context context) {
        Activities.m27680a(context, (Class<?>) ChooseContactFromContactsActivity.class, (ActivityResult) _$$Lambda$ContactUtils$KeBqLxVdjG2CyfVKdM7505JRr7w.INSTANCE);
    }

    /* renamed from: a */
    public static void m28331a(BaseAdapterItemData baseAdapterItemData) {
        if (StringUtils.m26045b((CharSequence) baseAdapterItemData.displayName)) {
            baseAdapterItemData.nameT9 = T9Helper.m30359a(baseAdapterItemData.displayName);
            baseAdapterItemData.unaccentName = RegexUtils.m31889l(baseAdapterItemData.displayName);
        }
    }

    /* renamed from: a */
    public static void m28317a(List<Long> list, List<ContactLookupData> list2, Map<String, ContactLookupData> map) {
        for (Long l : list) {
            ContactLookupData m28350c = ContactDeviceIDAndPhoneChangesUtils.m28350c(l.longValue());
            if (m28350c != null) {
                String m28324a = m28324a(m28350c.getLookupKey(), m28350c.getContactId());
                StringBuilder sb = new StringBuilder("lookup search results - original: ");
                sb.append(m28350c);
                sb.append(", from device: ");
                sb.append(m28324a);
                CLog.m27606a("V21ContentObserver");
                if (StringUtils.m26059a((CharSequence) m28324a)) {
                    list2.add(m28350c);
                } else {
                    map.put(m28324a, m28350c);
                }
            } else {
                "removeContactIdOnAllTables: ".concat(String.valueOf(l));
                CLog.m27606a("V21ContentObserver");
                ContactDeviceIDAndPhoneChangesUtils.m28367a(l.longValue());
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

    /* renamed from: a */
    public static boolean m28334a(Context context, long j, String str) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id = ?", new String[]{String.valueOf(j)}, null);
                if (query == null || !query.moveToFirst()) {
                    IoUtils.m27517a(query);
                    return false;
                }
                String string = query.getString(query.getColumnIndex("_id"));
                ContentResolver contentResolver = context.getContentResolver();
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValue("raw_contact_id", string).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", str).build());
                cursor2 = query;
                cursor = query;
                CLog.m27611a(ContactUtils.class, "Finish update contact name: ".concat(String.valueOf(contentResolver.applyBatch("com.android.contacts", arrayList))));
                IoUtils.m27517a(query);
                return true;
            } catch (Exception e) {
                CLog.m27609a(ContactUtils.class, e);
                IoUtils.m27517a(cursor);
                return false;
            }
        } catch (Throwable th) {
            IoUtils.m27517a(cursor2);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m28333a(android.content.Context r13, com.callapp.framework.phone.Phone r14, final long r15, java.util.List<java.lang.String> r17, final com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener r18) {
        /*
            r0 = 1
            r19 = r0
            r0 = r14
            r20 = r0
            r0 = r17
            if (r0 == 0) goto L90
            r0 = r14
            r20 = r0
            r0 = r17
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L90
            r0 = 0
            r14 = r0
            r0 = r15
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L24
            goto L60
        L24:
            com.callapp.contacts.framework.dao.ContentQuery r0 = new com.callapp.contacts.framework.dao.ContentQuery
            r1 = r0
            android.net.Uri r2 = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI
            r1.<init>(r2)
            java.lang.String r1 = "data1"
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.m29008c(r1)
            com.callapp.contacts.framework.dao.column.IntColumn r1 = com.callapp.contacts.model.Constants.TYPE_COLUMN
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.m29023a(r1)
            com.callapp.contacts.framework.dao.column.LongColumn r1 = com.callapp.contacts.model.Constants.CONTACT_ID_COLUMN
            java.lang.String r2 = "="
            r3 = r15
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.m29014b(r1, r2, r3)
            java.lang.String r1 = "is_super_primary"
            java.lang.String r2 = "="
            java.lang.String r3 = "1"
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.m29012b(r1, r2, r3)
            com.callapp.contacts.manager.contacts.ContactUtils$5 r1 = new com.callapp.contacts.manager.contacts.ContactUtils$5
            r2 = r1
            r2.<init>()
            r2 = 0
            java.lang.Object r0 = r0.m29025a(r1, r2)
            com.callapp.framework.phone.Phone r0 = (com.callapp.framework.phone.Phone) r0
            r14 = r0
        L60:
            r0 = r14
            r20 = r0
            r0 = r14
            if (r0 != 0) goto L90
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
            r0.m28209a(r1, r2)
            goto L96
        L90:
            r0 = 0
            r19 = r0
            r0 = r20
            r14 = r0
        L96:
            r0 = r19
            if (r0 != 0) goto La4
            r0 = r18
            r1 = r14
            r2 = 0
            r0.onDone(r1, r2)
        La4:
            r0 = r19
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.m28333a(android.content.Context, com.callapp.framework.phone.Phone, long, java.util.List, com.callapp.contacts.popup.contact.DialogContactMultiNumber$DialogContactMultiNumberListener):boolean");
    }

    /* renamed from: a */
    public static boolean m28332a(Context context, Phone phone, List<Phone> list, DialogContactMultiNumber.DialogContactMultiNumberListener dialogContactMultiNumberListener) {
        boolean z = false;
        if (list == null || list.size() > 1) {
            DialogChooseContactPhone dialogChooseContactPhone = new DialogChooseContactPhone(context, Activities.getString(2131886750), phone, list, dialogContactMultiNumberListener);
            dialogChooseContactPhone.setDialogType(Popup.DialogType.withInset);
            PopupManager.get().m28209a(context, dialogChooseContactPhone);
            z = true;
        } else {
            dialogContactMultiNumberListener.onDone(phone, false);
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m28326a(Phone phone, long j) {
        new IncognitoContactsManager();
        return IncognitoContactsManager.m28656a(ContactData.generateId(phone, j)) != null;
    }

    /* renamed from: a */
    public static boolean m28320a(List<ContactLookupData> list) {
        if (CollectionUtils.m26076a(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (ContactLookupData contactLookupData : list) {
            "deleteContacts: ".concat(String.valueOf(contactLookupData));
            CLog.m27606a("V21ContentObserver");
            if (CollectionUtils.m26068b(contactLookupData.getPhoneNumbers())) {
                for (String str : contactLookupData.getPhoneNumbers()) {
                    Phone m28239a = PhoneManager.get().m28239a(str);
                    StringBuilder sb = new StringBuilder("deleteContacts: convertContactIdToPhone: ");
                    sb.append(contactLookupData.getContactId());
                    sb.append(": ");
                    sb.append(m28239a);
                    CLog.m27606a("V21ContentObserver");
                    ContactDeviceIDAndPhoneChangesUtils.m28364a(contactLookupData.getContactId(), m28239a);
                }
            }
            "deleteContacts: removeLookupKeyFromContactLookup: ".concat(String.valueOf(contactLookupData));
            CLog.m27606a("V21ContentObserver");
            ContactDeviceIDAndPhoneChangesUtils.m28359a(contactLookupData.getLookupKey());
            "deleteContacts: removeContactIdOnAllTables: ".concat(String.valueOf(contactLookupData));
            CLog.m27606a("V21ContentObserver");
            ContactDeviceIDAndPhoneChangesUtils.m28367a(contactLookupData.getContactId());
            arrayList.add(Long.valueOf(contactLookupData.getContactId()));
        }
        m28305c(arrayList);
        return CollectionUtils.m26068b(arrayList);
    }

    /* renamed from: a */
    public static boolean m28318a(List<String> list, String str) {
        if (!CollectionUtils.m26068b(list) || str.length() <= 6) {
            return false;
        }
        String m26054a = StringUtils.m26054a(str, str.length() - 6, str.length());
        for (String str2 : list) {
            if (str2.endsWith(m26054a)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m28315a(Set<Long> set, Map<Long, Long> map) {
        ContactsAggregatorCursor contactsAggregatorCursor;
        Throwable th;
        boolean z;
        FavoriteMemoryContactItem next;
        boolean z2;
        if (f25973d == null || CollectionUtils.m26076a(set)) {
            return false;
        }
        try {
            ContactsAggregatorCursor contactsAggregatorCursor2 = new ContactsAggregatorCursor(m28313a(false, (Collection<Long>) set, false), set.size());
            try {
                contactsAggregatorCursor2.moveToFirst();
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (contactsAggregatorCursor2.isAfterLast()) {
                        break;
                    }
                    MemoryContactItem dataAtPosition = contactsAggregatorCursor2.getDataAtPosition(contactsAggregatorCursor2.getPosition());
                    boolean z4 = z;
                    if (dataAtPosition != null) {
                        Long l = map.get(Long.valueOf(dataAtPosition.contactId));
                        List<FavoriteMemoryContactItem> list = f25973d;
                        z4 = z;
                        if (list != null) {
                            boolean z5 = z;
                            if (l != null) {
                                Iterator<FavoriteMemoryContactItem> it2 = list.iterator();
                                while (true) {
                                    z5 = z;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    FavoriteMemoryContactItem next2 = it2.next();
                                    if (next2.contactId == l.longValue()) {
                                        f25973d.remove(next2);
                                        z5 = true;
                                        break;
                                    }
                                }
                            }
                            if (dataAtPosition.f22603c) {
                                Iterator<FavoriteMemoryContactItem> it3 = f25973d.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        z2 = true;
                                        break;
                                    } else if (it3.next().contactId == dataAtPosition.contactId) {
                                        z2 = false;
                                        break;
                                    }
                                }
                                z4 = z5;
                                if (z2) {
                                    f25973d.add(new FavoriteMemoryContactItem(dataAtPosition));
                                    z4 = true;
                                }
                            } else {
                                Iterator<FavoriteMemoryContactItem> it4 = f25973d.iterator();
                                do {
                                    z4 = z5;
                                    if (!it4.hasNext()) {
                                        break;
                                    }
                                    next = it4.next();
                                } while (next.contactId != dataAtPosition.contactId);
                                f25973d.remove(next);
                                z4 = true;
                            }
                        }
                    }
                    contactsAggregatorCursor2.moveToNext();
                    z3 = z4;
                }
                IoUtils.m27517a((Cursor) contactsAggregatorCursor2);
                List<FavoriteMemoryContactItem> list2 = f25973d;
                if (list2 == null || !z) {
                    return true;
                }
                Collections.sort(list2);
                return true;
            } catch (Throwable th2) {
                th = th2;
                contactsAggregatorCursor = contactsAggregatorCursor2;
                IoUtils.m27517a((Cursor) contactsAggregatorCursor);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            contactsAggregatorCursor = null;
        }
    }

    /* renamed from: a */
    private static ContentProviderResult[] m28321a(String str, String str2, String str3) {
        Object obj;
        String gmailAccount = GmailManager.get().getGmailAccount();
        if (StringUtils.m26045b((CharSequence) gmailAccount)) {
            obj = "com.google";
        } else {
            gmailAccount = null;
            obj = null;
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", obj).withValue("account_name", gmailAccount).build());
        if (StringUtils.m26045b((CharSequence) str)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", str).build());
        }
        if (StringUtils.m26045b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", null).withValue("data2", 2).build());
        }
        if (StringUtils.m26045b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", null).withValue("data2", 1).build());
        }
        if (StringUtils.m26045b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", null).withValue("data2", 3).build());
        }
        if (StringUtils.m26045b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", null).withValue("data2", 2).build());
        }
        if (StringUtils.m26045b((CharSequence) str2)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", str2).withValue("data2", 1).build());
        }
        if (StringUtils.m26045b((CharSequence) null) && StringUtils.m26045b((CharSequence) null)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/organization").withValue("data1", null).withValue("data2", 1).withValue("data4", null).withValue("data2", 1).build());
        }
        if (StringUtils.m26045b((CharSequence) str3)) {
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/contact_event").withValue("data1", str3).withValue("data2", 3).build());
        }
        try {
            return CallAppApplication.get().getContentResolver().applyBatch("com.android.contacts", arrayList);
        } catch (Exception e) {
            CLog.m27609a(ContactUtils.class, e);
            return null;
        }
    }

    /* renamed from: b */
    public static ContactData m28310b(Phone phone, long j) {
        return new ContactLoader().addBirthdayStack().addFields(ContactField.fullName, ContactField.photoUrl, ContactField.deviceId, ContactField.facebookId).load(phone, j);
    }

    /* renamed from: b */
    public static ContactData m28308b(boolean z) {
        ContactLoader disableSpecificCaches = new ContactLoader().addFields(ContactField.fullName, ContactField.emails, ContactField.addresses, ContactField.phone).setDisableSpecificCaches();
        if (z) {
            disableSpecificCaches.addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS);
            disableSpecificCaches.addFields(EnumSet.of(ContactField.facebookData, ContactField.twitterData, ContactField.foursquareData, ContactField.instagramData, ContactField.pinterestData));
        }
        disableSpecificCaches.addSyncLoader(new UserProfileLoader());
        String str = Prefs.f26264ao.get();
        if (StringUtils.m26059a((CharSequence) str)) {
            str = "0";
        } else {
            disableSpecificCaches.addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader());
            disableSpecificCaches.addFields(EnumSet.of(ContactField.deviceId, ContactField.deviceData));
        }
        if (z) {
            CompoundAsyncLoader compoundAsyncLoader = new CompoundAsyncLoader();
            compoundAsyncLoader.m28957a(new FacebookLoader()).m28957a(new TwitterLoader()).m28957a(new VKLoader()).m28957a(new InstagramLoader()).m28957a(new PinterestLoader());
            disableSpecificCaches.addSyncLoader(compoundAsyncLoader);
        }
        return disableSpecificCaches.load(str);
    }

    /* renamed from: b */
    public static Phone m28311b(long j) {
        if (j == 0) {
            return null;
        }
        return (Phone) new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).m29008c("data1").m29023a(Constants.TYPE_COLUMN).m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).m29020a("is_primary", false).m29025a((RowCallback<RowCallback<Phone>>) new RowCallback<Phone>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.4
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Phone onRow(RowContext rowContext) {
                Phone m28239a = PhoneManager.get().m28239a(rowContext.m29002a("data1"));
                m28239a.f29664c = PhoneType.fromCode(((Integer) rowContext.m29003a(Constants.TYPE_COLUMN)).intValue());
                return m28239a;
            }
        }, (RowCallback<Phone>) null);
    }

    /* renamed from: b */
    public static List<String> m28309b(List<String> list) {
        final StringColumn stringColumn = new StringColumn("display_name");
        return ContentQuery.m29028a(ContactsContract.Contacts.CONTENT_URI).m29023a(stringColumn).m29022a(new StringColumn("_id"), list).m29012b("display_name_source", "!=", "20").m29026a(new RowCallback<String>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.7
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return (String) rowContext.m29003a(stringColumn);
            }
        });
    }

    /* renamed from: b */
    public static void m28312b() {
        synchronized (f25974e) {
            f25973d = null;
        }
    }

    /* renamed from: c */
    public static String m28306c(long j) {
        return (String) new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).m29008c("display_name").m29012b("account_type", "=", Constants.SKYPE_ACCOUNT_TYPE).m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).m29025a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.9
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return rowContext.m29002a("display_name");
            }
        }, (RowCallback<String>) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0116, code lost:
        if (r22 != r27) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:250:0x05a2  */
    /* JADX WARN: Type inference failed for: r0v299, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.callapp.contacts.activity.contact.list.MemoryContactItem> m28304c(boolean r7) {
        /*
            Method dump skipped, instructions count: 1496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.contacts.ContactUtils.m28304c(boolean):java.util.List");
    }

    /* renamed from: c */
    public static void m28307c() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = CallAppApplication.get().getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "data1 = ?", new String[]{"jasmine@callapp.info"}, null);
                cursor = query;
                if (query != null) {
                    cursor2 = query;
                    cursor = query;
                    cursor = query;
                    if (query.moveToNext()) {
                        IoUtils.m27517a(query);
                        return;
                    }
                }
            } catch (Exception e) {
                cursor2 = cursor;
                CLog.m27609a(ContactUtils.class, e);
            }
            IoUtils.m27517a(cursor);
            ContentProviderResult[] m28321a = m28321a(Constants.APP_NAME, "jasmine@callapp.info", "1990-05-26");
            if (!CollectionUtils.m26066b(m28321a)) {
                return;
            }
            for (ContentProviderResult contentProviderResult : m28321a) {
                if (contentProviderResult.uri != null && StringUtils.m26025g(contentProviderResult.uri.toString(), "raw")) {
                    String[] split = contentProviderResult.uri.toString().split("/");
                    if (!CollectionUtils.m26066b(split)) {
                        return;
                    }
                    new ContentQuery(ContactsContract.Data.CONTENT_URI).m29008c("data1").m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(split[split.length - 1])).m29014b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/contact_event").m29014b((Column<String>) Constants.TYPE_COLUMN, "=", (String) 3).m29024a(new RowVisitor() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.15
                        @Override // com.callapp.contacts.framework.dao.RowVisitor
                        public final void onRow(RowContext rowContext) {
                            String m29002a = rowContext.m29002a("data1");
                            if (StringUtils.m26059a((CharSequence) m29002a)) {
                                return;
                            }
                            DateUtils.setParseLocalDatePref(m29002a);
                        }
                    });
                    return;
                }
            }
        } catch (Throwable th) {
            IoUtils.m27517a(cursor2);
            throw th;
        }
    }

    /* renamed from: c */
    private static boolean m28305c(List<Long> list) {
        boolean z = false;
        if (f25973d == null) {
            return false;
        }
        for (Long l : list) {
            List<FavoriteMemoryContactItem> list2 = f25973d;
            if (list2 != null) {
                Iterator<FavoriteMemoryContactItem> it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        FavoriteMemoryContactItem next = it2.next();
                        if (next.contactId == l.longValue()) {
                            f25973d.remove(next);
                            z = true;
                            break;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    public static Pair<String, String> m28303d(long j) {
        Pair<String, String> pair = (Pair) new ContentQuery(ContactsContract.Contacts.CONTENT_URI).m29008c("photo_uri").m29008c("photo_thumb_uri").m29012b("_id", "=", String.valueOf(j)).m29025a((RowCallback<RowCallback<Pair<String, String>>>) new RowCallback<Pair<String, String>>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.10
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Pair<String, String> onRow(RowContext rowContext) {
                return new Pair<>((String) rowContext.m29003a(new StringColumn("photo_uri")), (String) rowContext.m29003a(new StringColumn("photo_thumb_uri")));
            }
        }, (RowCallback<Pair<String, String>>) null);
        Pair<String, String> pair2 = pair;
        if (pair != null) {
            pair2 = pair;
            if (StringUtils.m26045b((CharSequence) pair.second)) {
                pair2 = pair;
                if (StringUtils.m26042b((String) pair.first, (String) pair.second)) {
                    Uri withAppendedPath = Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "display_photo");
                    try {
                        CallAppApplication.get().getContentResolver().openAssetFileDescriptor(withAppendedPath, "r");
                        pair2 = new Pair<>(withAppendedPath.toString(), pair.second);
                    } catch (IOException e) {
                        pair2 = pair;
                    }
                }
            }
        }
        return pair2;
    }

    /* renamed from: e */
    public static String m28302e(long j) {
        return (String) new ContentQuery(ContactsContract.Contacts.CONTENT_URI).m29008c("photo_uri").m29012b("_id", "=", String.valueOf(j)).m29025a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.11
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return (String) rowContext.m29003a(new StringColumn("photo_uri"));
            }
        }, (RowCallback<String>) null);
    }

    /* renamed from: f */
    public static List<Phone> m28301f(long j) {
        return new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).m29017a("data2", "data3", "data1").m29012b("contact_id", "=", String.valueOf(j)).m29026a((RowCallback) _$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8.INSTANCE);
    }

    public static Map<Long, String> getAllSkypeNames() {
        final HashMap hashMap = new HashMap();
        new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).m29008c("display_name").m29023a(Constants.CONTACT_ID_COLUMN).m29012b("account_type", "=", Constants.SKYPE_ACCOUNT_TYPE).m29024a(new RowVisitor() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.8
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                long m29000c = rowContext.m29000c("contact_id");
                hashMap.put(Long.valueOf(m29000c), rowContext.m29002a("display_name"));
            }
        });
        return hashMap;
    }

    private static Set<Long> getBlockedContactIds() {
        HashSet hashSet = new HashSet();
        new ContentQuery(ContactsContract.Contacts.CONTENT_URI).m29008c("_id").m29014b((Column<String>) BlockManager.f25588a, "=", (String) Boolean.TRUE).m29019a(hashSet, new RowCallback<Long>() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.14
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Long onRow(RowContext rowContext) {
                return Long.valueOf(rowContext.m29000c("_id"));
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
        Cursor b = new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).m29017a("display_name", "contact_id", "data1", "is_primary").m29020a("is_primary", false).m29022a(new LongColumn("contact_id"), getBlockedContactIds()).m29039b();
        ArrayList arrayList = new ArrayList();
        if (b != null) {
            try {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                while (b.moveToNext()) {
                    String string = b.getString(2);
                    if (!StringUtils.m26059a((CharSequence) string)) {
                        long j = b.getLong(1);
                        if (!linkedHashSet.contains(Long.valueOf(j))) {
                            linkedHashSet.add(Long.valueOf(j));
                            arrayList.add(new ReminderData(-1L, new Date(0L), j, PhoneManager.get().m28239a(string), b.getString(0), ReminderType.BLOCKED));
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
                        } else if (reminderData4 != null && reminderData4.displayName != null) {
                            return reminderData3.displayName.compareTo(reminderData4.displayName);
                        } else {
                            return 1;
                        }
                    }
                });
            } finally {
                IoUtils.m27517a(b);
            }
        }
        return arrayList;
    }

    public static Map<Long, String> getContactIdToThumbnailUriMap() {
        final HashMap hashMap = new HashMap();
        new ContentQuery(ContactsContract.Contacts.CONTENT_URI).m29017a("photo_thumb_uri", "_id").m29012b("has_phone_number", "=", "1").m29024a(new RowVisitor() { // from class: com.callapp.contacts.manager.contacts.ContactUtils.12
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                long m29000c = rowContext.m29000c("_id");
                String m29002a = rowContext.m29002a("photo_thumb_uri");
                if (StringUtils.m26045b((CharSequence) m29002a)) {
                    hashMap.put(Long.valueOf(m29000c), m29002a);
                }
            }
        });
        return hashMap;
    }

    private static Cursor getContactListEmailsCursor() {
        return new ContentQuery(ContactsContract.CommonDataKinds.Email.CONTENT_URI).m29008c("contact_id").m29023a(Constants.DATA_COLUMN).m29023a(Constants.TYPE_COLUMN).m29023a(Constants.DISPLAY_NAME_COLUMN).m29014b(Constants.DATA_COLUMN, "!=", (String) null).m29014b(Constants.DATA_COLUMN, "!=", JsonReaderKt.NULL).m29014b(Constants.DATA_COLUMN, "!=", "").m29020a("contact_id", true).m29039b();
    }

    public static List<MemoryContactItem> getContactsWithPhoneNumber() {
        return m28304c(false);
    }

    public static List<FavoriteMemoryContactItem> getFavoriteContacts() {
        ArrayList arrayList;
        synchronized (f25974e) {
            if (CollectionUtils.m26076a(f25973d)) {
                PermissionManager.get();
                List<FavoriteMemoryContactItem> favoritesInternal = !PermissionManager.m28256a() ? f25973d : CollectionUtils.m26068b(f25973d) ? f25973d : getFavoritesInternal();
                f25973d = favoritesInternal;
                BaseAdapterItemData.createCacheKeysAsync(favoritesInternal);
            }
            List<FavoriteMemoryContactItem> list = f25973d;
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
        Cursor m28313a = m28313a(false, (Collection<Long>) null, true);
        if (m28313a != null) {
            try {
                contactsAggregatorCursor = new ContactsAggregatorCursor(m28313a, m28313a.getCount());
            } catch (Throwable th2) {
                th = th2;
                contactsAggregatorCursor = null;
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
                IoUtils.m27517a((Cursor) contactsAggregatorCursor);
                throw th;
            }
        }
        IoUtils.m27517a((Cursor) contactsAggregatorCursor);
        Collections.sort(arrayList);
        return arrayList;
    }
}
