package com.callapp.contacts.observers;

import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.ContactsContract;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.RefreshSearchListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.LongColumn;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.device.DevicePhotoLoader;
import com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.cursor.CursorWithAggregatedRows;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.UpdateContactItem;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/ContactUtilsContactsContentObserver.class */
public class ContactUtilsContactsContentObserver extends CallAppContentObserver {

    /* renamed from: a */
    private static final Map<String, ContactLookupData> f26848a = new HashMap();

    /* renamed from: b */
    private static ContactUtilsContactsContentObserver f26849b;

    /* renamed from: c */
    private static HandlerThread f26850c;

    /* renamed from: d */
    private Runnable f26851d = new Runnable() { // from class: com.callapp.contacts.observers.ContactUtilsContactsContentObserver.1
        @Override // java.lang.Runnable
        public void run() {
            Date date = new Date();
            long time = new Date().getTime();
            try {
                List<Long> m28083a = ContactUtilsContactsContentObserver.m28083a(Prefs.f26539fy.get().longValue());
                StringBuilder sb = new StringBuilder();
                for (Long l : m28083a) {
                    sb.append(l + ", ");
                }
                StringBuilder sb2 = new StringBuilder(" deletedContactIds ");
                sb2.append(date.getTime());
                sb2.append(", ");
                sb2.append(sb.toString());
                CLog.m27606a("V21ContentObserver");
                ArrayList arrayList = new ArrayList();
                ContactUtils.m28317a(m28083a, arrayList, ContactUtilsContactsContentObserver.f26848a);
                List<UpdateContactItem> m28076c = ContactUtilsContactsContentObserver.m28076c(Prefs.f26538fx.get().longValue());
                StringBuilder sb3 = new StringBuilder();
                for (UpdateContactItem updateContactItem : m28076c) {
                    sb3.append(updateContactItem + ", ");
                }
                StringBuilder sb4 = new StringBuilder(" updatedContacts ");
                sb4.append(date.getTime());
                sb4.append(", ");
                sb4.append(sb3.toString());
                CLog.m27606a("V21ContentObserver");
                boolean m28081a = ContactUtilsContactsContentObserver.m28081a(m28076c);
                StringBuilder sb5 = new StringBuilder();
                for (Long l2 : m28083a) {
                    sb5.append(l2 + ", ");
                }
                StringBuilder sb6 = new StringBuilder(" deletedContactIds after update ");
                sb6.append(date.getTime());
                sb6.append(", ");
                sb6.append(sb5.toString());
                CLog.m27606a("V21ContentObserver");
                boolean m28320a = ContactUtils.m28320a(arrayList);
                Prefs.f26539fy.set(Long.valueOf(time));
                Prefs.f26538fx.set(Long.valueOf(time));
                if (!m28320a && !m28081a) {
                    return;
                }
                DeviceIdLoader.m28855a();
                DevicePhotoLoader.m28851a();
                CallLogUtils.m27582a();
                EventBusManager.CallAppDataType callAppDataType = EventBusManager.CallAppDataType.CONTACTS;
                callAppDataType.isObserverOriginated = true;
                EventBusManager.CallAppDataType callAppDataType2 = EventBusManager.CallAppDataType.FAVORITES;
                callAppDataType2.isObserverOriginated = true;
                EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, callAppDataType);
                EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, callAppDataType2);
                EventBusManager.f25138a.m29043c(RefreshSearchListener.f23136b, EventBusManager.CallAppDataType.REFRESH_SEARCH);
            } catch (Exception e) {
                CLog.m27609a(ContactUtilsContactsContentObserver.class, e);
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor.class */
    public static class UpdateContactItemAggregatorCursor extends CursorWithAggregatedRows<UpdateContactItem> {
        UpdateContactItemAggregatorCursor(Cursor cursor, int i) {
            super(cursor, i);
        }

        @Override // com.callapp.contacts.manager.cursor.CursorWithAggregatedRows
        /* renamed from: a */
        public final CursorWithAggregatedRows.PositionAndOffsetPair mo28074a(int i) {
            Cursor wrappedCursor = getWrappedCursor();
            do {
            } while (!wrappedCursor.isAfterLast() && wrappedCursor.moveToNext() && wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")) == wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")));
            return new CursorWithAggregatedRows.PositionAndOffsetPair(i, wrappedCursor.getPosition() - i);
        }

        @Override // com.callapp.contacts.manager.cursor.CursorWithAggregatedRows
        /* renamed from: b */
        public final CursorWithAggregatedRows<UpdateContactItem>.DataAndPosition mo28073b(int i) {
            Cursor wrappedCursor = getWrappedCursor();
            if (!wrappedCursor.moveToPosition(i)) {
                return null;
            }
            UpdateContactItem updateContactItem = new UpdateContactItem(Long.valueOf(wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id"))), wrappedCursor.getString(wrappedCursor.getColumnIndex("lookup")), wrappedCursor.getString(wrappedCursor.getColumnIndex("display_name")), new ArrayList(), "");
            while (!wrappedCursor.isAfterLast() && wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")) == updateContactItem.contactId.longValue()) {
                String string = wrappedCursor.getString(wrappedCursor.getColumnIndex("mimetype"));
                if (StringUtils.m26042b(string, "vnd.android.cursor.item/phone_v2")) {
                    String m30360a = T9Helper.m30360a((CharSequence) wrappedCursor.getString(wrappedCursor.getColumnIndex("data1")));
                    if (CollectionUtils.m26076a(updateContactItem.normalNumbers)) {
                        updateContactItem.normalNumbers.add(m30360a);
                    } else if (!ContactUtils.m28318a(updateContactItem.normalNumbers, m30360a)) {
                        updateContactItem.normalNumbers.add(m30360a);
                    }
                } else if (StringUtils.m26042b(string, "vnd.android.cursor.item/organization")) {
                    updateContactItem.setDescription(ContactUtils.m28322a(wrappedCursor.getString(wrappedCursor.getColumnIndex("data1")), wrappedCursor.getString(wrappedCursor.getColumnIndex("data4"))));
                }
                wrappedCursor.moveToNext();
            }
            return new CursorWithAggregatedRows.DataAndPosition(updateContactItem, i);
        }
    }

    private ContactUtilsContactsContentObserver(Handler handler) {
        super(handler);
    }

    /* renamed from: a */
    public static /* synthetic */ Long m28082a(RowContext rowContext) {
        return Long.valueOf(rowContext.m29000c("_id"));
    }

    /* renamed from: a */
    static /* synthetic */ List m28083a(long j) {
        return ContentQuery.m29028a(ContactsContract.DeletedContacts.CONTENT_URI).m29012b("contact_deleted_timestamp", ">=", String.valueOf(j)).m29020a("contact_id", true).m29015b((RowCallback) C7602xe6294a93.INSTANCE);
    }

    /* renamed from: a */
    public static void m28084a() {
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.READ_CONTACTS")) {
            HandlerThread handlerThread = new HandlerThread("CallApp.ContactsObserver");
            f26850c = handlerThread;
            handlerThread.start();
            AndroidUtils.m27631a(f26850c.getLooper());
            f26849b = new ContactUtilsContactsContentObserver(new Handler(f26850c.getLooper()));
            CallAppApplication.get().getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, false, f26849b);
            if (Prefs.f26538fx.get().longValue() != 0) {
                return;
            }
            f26849b.onChange(true);
        }
    }

    /* renamed from: a */
    public static boolean m28081a(List<UpdateContactItem> list) {
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (UpdateContactItem updateContactItem : list) {
            hashSet.add(updateContactItem.contactId);
            ContactLookupData m28351b = ContactDeviceIDAndPhoneChangesUtils.m28351b(updateContactItem.lookupKey);
            if (m28351b != null) {
                StringBuilder sb = new StringBuilder("Contact was found using lookupkey: ");
                sb.append(updateContactItem);
                sb.append(", ");
                sb.append(m28351b);
                CLog.m27606a("V21ContentObserver");
                Map<String, ContactLookupData> map = f26848a;
                ContactLookupData contactLookupData = map.get(updateContactItem.lookupKey);
                if (contactLookupData != null) {
                    map.remove(updateContactItem.lookupKey);
                    ContactDeviceIDAndPhoneChangesUtils.m28365a(contactLookupData.getContactId(), updateContactItem.contactId.longValue(), contactLookupData.getPhoneNumbers());
                }
                boolean z = false;
                if (m28351b.getContactId() != updateContactItem.contactId.longValue()) {
                    z = true;
                    StringBuilder sb2 = new StringBuilder("contactId has changed but lookupKey remains the same: ");
                    sb2.append(updateContactItem);
                    sb2.append(", ");
                    sb2.append(m28351b);
                    CLog.m27606a("V21ContentObserver");
                    hashMap.put(updateContactItem.contactId, Long.valueOf(m28351b.getContactId()));
                    ContactDeviceIDAndPhoneChangesUtils.m28365a(m28351b.getContactId(), updateContactItem.contactId.longValue(), m28351b.getPhoneNumbers());
                }
                if (z || !CollectionUtils.m26074a((Collection) m28351b.getPhoneNumbers(), (Collection) updateContactItem.getNormalNumbers()) || !StringUtils.m26044b((Object) updateContactItem.displayName, (Object) m28351b.displayName) || !StringUtils.m26044b((Object) updateContactItem.description, (Object) m28351b.description)) {
                    StringBuilder sb3 = new StringBuilder("Updating contactId or Phones: ");
                    sb3.append(updateContactItem);
                    sb3.append(", ");
                    sb3.append(m28351b);
                    CLog.m27606a("V21ContentObserver");
                    m28351b.setContactId(updateContactItem.contactId.longValue());
                    m28351b.setPhoneNumbers(updateContactItem.getNormalNumbers());
                    m28351b.setDisplayName(updateContactItem.displayName);
                    m28351b.setDescription(updateContactItem.description);
                    ContactDeviceIDAndPhoneChangesUtils.m28352b(m28351b);
                }
            } else {
                ContactLookupData m28354b = ContactDeviceIDAndPhoneChangesUtils.m28354b(updateContactItem.contactId.longValue());
                if (m28354b != null) {
                    StringBuilder sb4 = new StringBuilder("Updating lookupKey: ");
                    sb4.append(updateContactItem);
                    sb4.append(", ");
                    sb4.append(m28354b);
                    CLog.m27606a("V21ContentObserver");
                    m28354b.setLookupKey(updateContactItem.lookupKey);
                    m28354b.setPhoneNumbers(updateContactItem.getNormalNumbers());
                    m28354b.setDisplayName(updateContactItem.displayName);
                    m28354b.setDescription(updateContactItem.description);
                    ContactDeviceIDAndPhoneChangesUtils.m28352b(m28354b);
                } else {
                    Map<String, ContactLookupData> map2 = f26848a;
                    ContactLookupData contactLookupData2 = map2.get(updateContactItem.lookupKey);
                    if (contactLookupData2 != null) {
                        map2.remove(updateContactItem.lookupKey);
                        StringBuilder sb5 = new StringBuilder("Updating lookupKey and contactId: ");
                        sb5.append(updateContactItem);
                        sb5.append(", ");
                        sb5.append(m28354b);
                        sb5.append(", old: ");
                        sb5.append(contactLookupData2);
                        CLog.m27606a("V21ContentObserver");
                        ContactDeviceIDAndPhoneChangesUtils.m28365a(contactLookupData2.getContactId(), updateContactItem.contactId.longValue(), contactLookupData2.getPhoneNumbers());
                        hashMap.put(updateContactItem.contactId, Long.valueOf(contactLookupData2.getContactId()));
                        contactLookupData2.setContactId(updateContactItem.contactId.longValue());
                        contactLookupData2.setLookupKey(updateContactItem.lookupKey);
                        contactLookupData2.setPhoneNumbers(updateContactItem.getNormalNumbers());
                        contactLookupData2.setDisplayName(updateContactItem.displayName);
                        contactLookupData2.setDescription(updateContactItem.description);
                        ContactDeviceIDAndPhoneChangesUtils.m28352b(contactLookupData2);
                    } else {
                        StringBuilder sb6 = new StringBuilder("New contact: ");
                        sb6.append(updateContactItem);
                        sb6.append(", ");
                        sb6.append(m28354b);
                        CLog.m27606a("V21ContentObserver");
                        ContactDeviceIDAndPhoneChangesUtils.m28362a(new ContactLookupData(updateContactItem.lookupKey, updateContactItem.contactId.longValue(), updateContactItem.displayName, updateContactItem.normalNumbers, updateContactItem.description));
                        for (String str : updateContactItem.normalNumbers) {
                            ContactDeviceIDAndPhoneChangesUtils.m28353b(updateContactItem.contactId.longValue(), PhoneManager.get().m28239a(str));
                            StringBuilder sb7 = new StringBuilder("convertPhoneToContactId: ");
                            sb7.append(updateContactItem);
                            sb7.append(", ");
                            sb7.append(m28354b);
                            CLog.m27606a("V21ContentObserver");
                        }
                    }
                }
            }
        }
        ContactUtils.m28315a(hashSet, hashMap);
        return CollectionUtils.m26068b(hashSet);
    }

    /* renamed from: b */
    public static /* synthetic */ Long m28078b(RowContext rowContext) {
        return Long.valueOf(rowContext.m29000c("contact_id"));
    }

    /* renamed from: c */
    public static List<UpdateContactItem> m28076c(long j) throws IllegalStateException {
        Throwable th;
        UpdateContactItemAggregatorCursor updateContactItemAggregatorCursor;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        ContentQuery.m29028a(ContactsContract.Contacts.CONTENT_URI).m29008c("_id").m29012b("contact_last_updated_timestamp", ">=", String.valueOf(j)).m29019a((Collection) hashSet, (RowCallback) C7601x509d7268.INSTANCE);
        ContentQuery m29022a = ContentQuery.m29028a(ContactsContract.Data.CONTENT_URI).m29008c("lookup").m29008c("data1").m29008c("display_name").m29008c("contact_id").m29008c("data1").m29008c("data4").m29008c("mimetype").m29022a(new LongColumn("contact_id"), hashSet);
        m29022a.m29035a("mimetype= ? OR mimetype= ?", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/organization");
        UpdateContactItemAggregatorCursor updateContactItemAggregatorCursor2 = null;
        Cursor b = m29022a.m29012b("data1", "!=", (String) null).m29012b("data1", "!=", "").m29012b("account_type", "!=", Constants.APP_NAME).m29020a("contact_id", true).m29020a("is_primary", false).m29020a("is_super_primary", false).m29039b();
        if (b != null) {
            try {
                updateContactItemAggregatorCursor = new UpdateContactItemAggregatorCursor(b, hashSet.size());
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                updateContactItemAggregatorCursor.moveToFirst();
                while (!updateContactItemAggregatorCursor.isAfterLast()) {
                    arrayList.add(updateContactItemAggregatorCursor.getDataAtPosition(updateContactItemAggregatorCursor.getPosition()));
                    updateContactItemAggregatorCursor.moveToNext();
                }
                IoUtils.m27517a((Cursor) updateContactItemAggregatorCursor);
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
                updateContactItemAggregatorCursor2 = updateContactItemAggregatorCursor;
                IoUtils.m27517a((Cursor) updateContactItemAggregatorCursor2);
                throw th;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    public static void m28077c() {
        if (f26849b != null) {
            CallAppApplication.get().getContentResolver().unregisterContentObserver(f26849b);
            f26849b = null;
        }
        HandlerThread handlerThread = f26850c;
        if (handlerThread != null) {
            handlerThread.quit();
            f26850c = null;
        }
    }

    public static ContactUtilsContactsContentObserver getContactUtilsContactsContentObserver() {
        return f26849b;
    }

    @Override // com.callapp.contacts.observers.CallAppContentObserver
    /* renamed from: b */
    protected final Runnable mo28080b() {
        return this.f26851d;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }
}
