package com.callapp.contacts.sync.model;

import android.content.ContentResolver;
import android.content.Context;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncContext.class */
public class SyncContext {
    public static final int MAX_TOOLTIP_CONTACTS_SIZE = 4;
    public Map<Long, ContactData> allContacts;
    public ContentResolver contentResolver;
    public Context context;
    public Map<Long, ContactData> favoriteContacts;
    public Map<Long, ContactData> frequentlyCalledContacts;
    public boolean isFirstSync;
    public Map<Long, SyncerData> syncData;
    public List<Syncer> syncers;
    private static final Object longRunningSyncersLock = new Object();
    private static final List<Class> longRunningSyncers = new ArrayList();
    public List<MemoryContactItem> contactItems = new ArrayList(4);
    public long startDate = System.currentTimeMillis();
    private final Object syncDataLocker = new Object();

    private SyncerData getSyncData(long j) {
        SyncerData syncerData = this.syncData.get(Long.valueOf(j));
        SyncerData syncerData2 = syncerData;
        if (syncerData == null) {
            synchronized (this.syncDataLocker) {
                SyncerData syncerData3 = this.syncData.get(Long.valueOf(j));
                syncerData2 = syncerData3;
                if (syncerData3 == null) {
                    syncerData2 = new SyncerData();
                    syncerData2.setPhoneOrIdKey(ContactData.generateId(Phone.f17100b, j));
                    this.syncData.put(Long.valueOf(j), syncerData2);
                }
            }
        }
        return syncerData2;
    }

    public SyncerData getSyncData(ContactData contactData) {
        return getSyncData(contactData.getDeviceId());
    }

    public boolean isLongRunningSyncersAlreadyRunning(Syncer syncer) {
        synchronized (longRunningSyncersLock) {
            List<Class> list = longRunningSyncers;
            if (list.contains(syncer.getClass())) {
                return true;
            }
            list.add(syncer.getClass());
            return false;
        }
    }

    public void removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Syncer syncer) {
        synchronized (longRunningSyncersLock) {
            longRunningSyncers.remove(syncer.getClass());
        }
    }
}
