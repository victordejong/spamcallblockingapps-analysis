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

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, ContactLookupData> f15292a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static ContactUtilsContactsContentObserver f15293b;

    /* renamed from: c  reason: collision with root package name */
    private static HandlerThread f15294c;

    /* renamed from: d  reason: collision with root package name */
    private Runnable f15295d = new Runnable() { // from class: com.callapp.contacts.observers.ContactUtilsContactsContentObserver.1
        @Override // java.lang.Runnable
        public void run() {
            Date date = new Date();
            long time = new Date().getTime();
            try {
                List<Long> a2 = ContactUtilsContactsContentObserver.a(Prefs.fy.get().longValue());
                StringBuilder sb = new StringBuilder();
                for (Long l : a2) {
                    sb.append(l + ", ");
                }
                StringBuilder sb2 = new StringBuilder(" deletedContactIds ");
                sb2.append(date.getTime());
                sb2.append(", ");
                sb2.append(sb.toString());
                CLog.a("V21ContentObserver");
                ArrayList arrayList = new ArrayList();
                ContactUtils.a(a2, arrayList, ContactUtilsContactsContentObserver.f15292a);
                List<UpdateContactItem> c2 = ContactUtilsContactsContentObserver.c(Prefs.fx.get().longValue());
                StringBuilder sb3 = new StringBuilder();
                for (UpdateContactItem updateContactItem : c2) {
                    sb3.append(updateContactItem + ", ");
                }
                StringBuilder sb4 = new StringBuilder(" updatedContacts ");
                sb4.append(date.getTime());
                sb4.append(", ");
                sb4.append(sb3.toString());
                CLog.a("V21ContentObserver");
                boolean a3 = ContactUtilsContactsContentObserver.a(c2);
                StringBuilder sb5 = new StringBuilder();
                for (Long l2 : a2) {
                    sb5.append(l2 + ", ");
                }
                StringBuilder sb6 = new StringBuilder(" deletedContactIds after update ");
                sb6.append(date.getTime());
                sb6.append(", ");
                sb6.append(sb5.toString());
                CLog.a("V21ContentObserver");
                boolean a4 = ContactUtils.a(arrayList);
                Prefs.fy.set(Long.valueOf(time));
                Prefs.fx.set(Long.valueOf(time));
                if (a4 || a3) {
                    DeviceIdLoader.a();
                    DevicePhotoLoader.a();
                    CallLogUtils.a();
                    EventBusManager.CallAppDataType callAppDataType = EventBusManager.CallAppDataType.CONTACTS;
                    callAppDataType.isObserverOriginated = true;
                    EventBusManager.CallAppDataType callAppDataType2 = EventBusManager.CallAppDataType.FAVORITES;
                    callAppDataType2.isObserverOriginated = true;
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, callAppDataType);
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, callAppDataType2);
                    EventBusManager.f14368a.c(RefreshSearchListener.f12962b, EventBusManager.CallAppDataType.REFRESH_SEARCH);
                }
            } catch (Exception e) {
                CLog.a(ContactUtilsContactsContentObserver.class, e);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor.class */
    public static class UpdateContactItemAggregatorCursor extends CursorWithAggregatedRows<UpdateContactItem> {
        UpdateContactItemAggregatorCursor(Cursor cursor, int i) {
            super(cursor, i);
        }

        @Override // com.callapp.contacts.manager.cursor.CursorWithAggregatedRows
        public final CursorWithAggregatedRows.PositionAndOffsetPair a(int i) {
            Cursor wrappedCursor = getWrappedCursor();
            do {
            } while (!wrappedCursor.isAfterLast() && wrappedCursor.moveToNext() && wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")) == wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")));
            return new CursorWithAggregatedRows.PositionAndOffsetPair(i, wrappedCursor.getPosition() - i);
        }

        @Override // com.callapp.contacts.manager.cursor.CursorWithAggregatedRows
        public final CursorWithAggregatedRows<UpdateContactItem>.DataAndPosition b(int i) {
            Cursor wrappedCursor = getWrappedCursor();
            if (!wrappedCursor.moveToPosition(i)) {
                return null;
            }
            UpdateContactItem updateContactItem = new UpdateContactItem(Long.valueOf(wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id"))), wrappedCursor.getString(wrappedCursor.getColumnIndex("lookup")), wrappedCursor.getString(wrappedCursor.getColumnIndex("display_name")), new ArrayList(), "");
            while (!wrappedCursor.isAfterLast() && wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")) == updateContactItem.contactId.longValue()) {
                String string = wrappedCursor.getString(wrappedCursor.getColumnIndex("mimetype"));
                if (StringUtils.b(string, "vnd.android.cursor.item/phone_v2")) {
                    String a2 = T9Helper.a((CharSequence) wrappedCursor.getString(wrappedCursor.getColumnIndex("data1")));
                    if (CollectionUtils.a(updateContactItem.normalNumbers)) {
                        updateContactItem.normalNumbers.add(a2);
                    } else if (!ContactUtils.a(updateContactItem.normalNumbers, a2)) {
                        updateContactItem.normalNumbers.add(a2);
                    }
                } else if (StringUtils.b(string, "vnd.android.cursor.item/organization")) {
                    updateContactItem.setDescription(ContactUtils.a(wrappedCursor.getString(wrappedCursor.getColumnIndex("data1")), wrappedCursor.getString(wrappedCursor.getColumnIndex("data4"))));
                }
                wrappedCursor.moveToNext();
            }
            return new CursorWithAggregatedRows.DataAndPosition(updateContactItem, i);
        }
    }

    private ContactUtilsContactsContentObserver(Handler handler) {
        super(handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(RowContext rowContext) {
        return Long.valueOf(rowContext.c("_id"));
    }

    static /* synthetic */ List a(long j) {
        return ContentQuery.a(ContactsContract.DeletedContacts.CONTENT_URI).b("contact_deleted_timestamp", ">=", String.valueOf(j)).a("contact_id", true).b((RowCallback) _$$Lambda$ContactUtilsContactsContentObserver$m_8L_ssfj3RqLMIii4TsRCOLmhs.INSTANCE);
    }

    public static void a() {
        PermissionManager.get();
        if (PermissionManager.a("android.permission.READ_CONTACTS")) {
            HandlerThread handlerThread = new HandlerThread("CallApp.ContactsObserver");
            f15294c = handlerThread;
            handlerThread.start();
            AndroidUtils.a(f15294c.getLooper());
            f15293b = new ContactUtilsContactsContentObserver(new Handler(f15294c.getLooper()));
            CallAppApplication.get().getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, false, f15293b);
            if (Prefs.fx.get().longValue() == 0) {
                f15293b.onChange(true);
            }
        }
    }

    public static boolean a(List<UpdateContactItem> list) {
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (UpdateContactItem updateContactItem : list) {
            hashSet.add(updateContactItem.contactId);
            ContactLookupData b2 = ContactDeviceIDAndPhoneChangesUtils.b(updateContactItem.lookupKey);
            if (b2 != null) {
                StringBuilder sb = new StringBuilder("Contact was found using lookupkey: ");
                sb.append(updateContactItem);
                sb.append(", ");
                sb.append(b2);
                CLog.a("V21ContentObserver");
                Map<String, ContactLookupData> map = f15292a;
                ContactLookupData contactLookupData = map.get(updateContactItem.lookupKey);
                if (contactLookupData != null) {
                    map.remove(updateContactItem.lookupKey);
                    ContactDeviceIDAndPhoneChangesUtils.a(contactLookupData.getContactId(), updateContactItem.contactId.longValue(), contactLookupData.getPhoneNumbers());
                }
                boolean z = false;
                if (b2.getContactId() != updateContactItem.contactId.longValue()) {
                    z = true;
                    StringBuilder sb2 = new StringBuilder("contactId has changed but lookupKey remains the same: ");
                    sb2.append(updateContactItem);
                    sb2.append(", ");
                    sb2.append(b2);
                    CLog.a("V21ContentObserver");
                    hashMap.put(updateContactItem.contactId, Long.valueOf(b2.getContactId()));
                    ContactDeviceIDAndPhoneChangesUtils.a(b2.getContactId(), updateContactItem.contactId.longValue(), b2.getPhoneNumbers());
                }
                if (z || !CollectionUtils.a((Collection) b2.getPhoneNumbers(), (Collection) updateContactItem.getNormalNumbers()) || !StringUtils.b((Object) updateContactItem.displayName, (Object) b2.displayName) || !StringUtils.b((Object) updateContactItem.description, (Object) b2.description)) {
                    StringBuilder sb3 = new StringBuilder("Updating contactId or Phones: ");
                    sb3.append(updateContactItem);
                    sb3.append(", ");
                    sb3.append(b2);
                    CLog.a("V21ContentObserver");
                    b2.setContactId(updateContactItem.contactId.longValue());
                    b2.setPhoneNumbers(updateContactItem.getNormalNumbers());
                    b2.setDisplayName(updateContactItem.displayName);
                    b2.setDescription(updateContactItem.description);
                    ContactDeviceIDAndPhoneChangesUtils.b(b2);
                }
            } else {
                ContactLookupData b3 = ContactDeviceIDAndPhoneChangesUtils.b(updateContactItem.contactId.longValue());
                if (b3 != null) {
                    StringBuilder sb4 = new StringBuilder("Updating lookupKey: ");
                    sb4.append(updateContactItem);
                    sb4.append(", ");
                    sb4.append(b3);
                    CLog.a("V21ContentObserver");
                    b3.setLookupKey(updateContactItem.lookupKey);
                    b3.setPhoneNumbers(updateContactItem.getNormalNumbers());
                    b3.setDisplayName(updateContactItem.displayName);
                    b3.setDescription(updateContactItem.description);
                    ContactDeviceIDAndPhoneChangesUtils.b(b3);
                } else {
                    Map<String, ContactLookupData> map2 = f15292a;
                    ContactLookupData contactLookupData2 = map2.get(updateContactItem.lookupKey);
                    if (contactLookupData2 != null) {
                        map2.remove(updateContactItem.lookupKey);
                        StringBuilder sb5 = new StringBuilder("Updating lookupKey and contactId: ");
                        sb5.append(updateContactItem);
                        sb5.append(", ");
                        sb5.append(b3);
                        sb5.append(", old: ");
                        sb5.append(contactLookupData2);
                        CLog.a("V21ContentObserver");
                        ContactDeviceIDAndPhoneChangesUtils.a(contactLookupData2.getContactId(), updateContactItem.contactId.longValue(), contactLookupData2.getPhoneNumbers());
                        hashMap.put(updateContactItem.contactId, Long.valueOf(contactLookupData2.getContactId()));
                        contactLookupData2.setContactId(updateContactItem.contactId.longValue());
                        contactLookupData2.setLookupKey(updateContactItem.lookupKey);
                        contactLookupData2.setPhoneNumbers(updateContactItem.getNormalNumbers());
                        contactLookupData2.setDisplayName(updateContactItem.displayName);
                        contactLookupData2.setDescription(updateContactItem.description);
                        ContactDeviceIDAndPhoneChangesUtils.b(contactLookupData2);
                    } else {
                        StringBuilder sb6 = new StringBuilder("New contact: ");
                        sb6.append(updateContactItem);
                        sb6.append(", ");
                        sb6.append(b3);
                        CLog.a("V21ContentObserver");
                        ContactDeviceIDAndPhoneChangesUtils.a(new ContactLookupData(updateContactItem.lookupKey, updateContactItem.contactId.longValue(), updateContactItem.displayName, updateContactItem.normalNumbers, updateContactItem.description));
                        for (String str : updateContactItem.normalNumbers) {
                            ContactDeviceIDAndPhoneChangesUtils.b(updateContactItem.contactId.longValue(), PhoneManager.get().a(str));
                            StringBuilder sb7 = new StringBuilder("convertPhoneToContactId: ");
                            sb7.append(updateContactItem);
                            sb7.append(", ");
                            sb7.append(b3);
                            CLog.a("V21ContentObserver");
                        }
                    }
                }
            }
        }
        ContactUtils.a(hashSet, hashMap);
        return CollectionUtils.b(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long b(RowContext rowContext) {
        return Long.valueOf(rowContext.c("contact_id"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<UpdateContactItem> c(long j) throws IllegalStateException {
        Throwable th;
        UpdateContactItemAggregatorCursor updateContactItemAggregatorCursor;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        ContentQuery.a(ContactsContract.Contacts.CONTENT_URI).c("_id").b("contact_last_updated_timestamp", ">=", String.valueOf(j)).a((Collection) hashSet, (RowCallback) _$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0.INSTANCE);
        ContentQuery a2 = ContentQuery.a(ContactsContract.Data.CONTENT_URI).c("lookup").c("data1").c("display_name").c("contact_id").c("data1").c("data4").c("mimetype").a(new LongColumn("contact_id"), hashSet);
        a2.a("mimetype= ? OR mimetype= ?", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/organization");
        UpdateContactItemAggregatorCursor updateContactItemAggregatorCursor2 = null;
        Cursor b2 = a2.b("data1", "!=", (String) null).b("data1", "!=", "").b("account_type", "!=", Constants.APP_NAME).a("contact_id", true).a("is_primary", false).a("is_super_primary", false).b();
        if (b2 != null) {
            try {
                updateContactItemAggregatorCursor = new UpdateContactItemAggregatorCursor(b2, hashSet.size());
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                updateContactItemAggregatorCursor.moveToFirst();
                while (!updateContactItemAggregatorCursor.isAfterLast()) {
                    arrayList.add(updateContactItemAggregatorCursor.getDataAtPosition(updateContactItemAggregatorCursor.getPosition()));
                    updateContactItemAggregatorCursor.moveToNext();
                }
                IoUtils.a((Cursor) updateContactItemAggregatorCursor);
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
                updateContactItemAggregatorCursor2 = updateContactItemAggregatorCursor;
                IoUtils.a((Cursor) updateContactItemAggregatorCursor2);
                throw th;
            }
        } else {
            throw new IllegalStateException();
        }
    }

    public static void c() {
        if (f15293b != null) {
            CallAppApplication.get().getContentResolver().unregisterContentObserver(f15293b);
            f15293b = null;
        }
        HandlerThread handlerThread = f15294c;
        if (handlerThread != null) {
            handlerThread.quit();
            f15294c = null;
        }
    }

    public static ContactUtilsContactsContentObserver getContactUtilsContactsContentObserver() {
        return f15293b;
    }

    @Override // com.callapp.contacts.observers.CallAppContentObserver
    protected final Runnable b() {
        return this.f15295d;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }
}
