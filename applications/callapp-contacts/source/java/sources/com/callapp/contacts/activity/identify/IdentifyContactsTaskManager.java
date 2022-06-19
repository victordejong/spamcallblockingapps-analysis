package com.callapp.contacts.activity.identify;

import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.IdentifyContactsChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsTaskManager.class */
public class IdentifyContactsTaskManager {

    /* renamed from: a */
    static final String f23084a = "IdentifyContactsTaskManager";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask.class */
    public static class IdentifyContactsTask extends Task {
        private IdentifyContactsTask() {
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            CLog.m27606a(IdentifyContactsTaskManager.f23084a);
            ArrayList arrayList = new ArrayList();
            List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
            if (CollectionUtils.m26068b(contactsWithPhoneNumber)) {
                for (MemoryContactItem memoryContactItem : contactsWithPhoneNumber) {
                    if (PhoneManager.get().m28239a(memoryContactItem.displayName).isValid()) {
                        ContactData load = new ContactLoader().addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setDisableContactEvents().setLoadOnlyFromCache().addFields(ContactFieldEnumSets.NAME_FIELDS).load(memoryContactItem.getPhone(), memoryContactItem.getContactId());
                        load.updateFullName();
                        if (StringUtils.m26045b((CharSequence) load.getFullName()) && load.isContactInDevice()) {
                            arrayList.add(Long.valueOf(memoryContactItem.contactId));
                            String str = IdentifyContactsTaskManager.f23084a;
                            StringBuilder sb = new StringBuilder("Found match: Phone ");
                            sb.append(memoryContactItem.getPhone());
                            sb.append(" <-> Name: ");
                            sb.append(load.getFullName());
                            CLog.m27606a(str);
                        }
                    }
                }
                long[] jArr = null;
                if (CollectionUtils.m26068b(arrayList)) {
                    long[] jArr2 = new long[arrayList.size()];
                    int i = 0;
                    while (true) {
                        jArr = jArr2;
                        if (i >= arrayList.size()) {
                            break;
                        }
                        jArr2[i] = ((Long) arrayList.get(i)).longValue();
                        i++;
                    }
                }
                if (jArr != null && jArr.length > 1) {
                    AnalyticsManager.get().mo28444a(Constants.OPTIMIZE_CONTACTS, "Contacts to optimize", (String) null, jArr.length, new String[0]);
                }
                HashSet hashSet = new HashSet();
                if (jArr != null && jArr.length > 0) {
                    for (long j : jArr) {
                        hashSet.add(Long.valueOf(j));
                    }
                }
                Prefs.f26529fo.set(Long.valueOf(System.currentTimeMillis()));
                Prefs.f26528fn.set(hashSet);
                EventBusManager.f25138a.m29043c(IdentifyContactsChangedListener.f23121b, EventBusManager.CallAppDataType.IDENTIFY_CONTACTS_FINISHED);
                String str2 = IdentifyContactsTaskManager.f23084a;
                StringBuilder sb2 = new StringBuilder("Finished job. Found: ");
                sb2.append(arrayList.size());
                sb2.append(" Contacts to identify");
                CLog.m27606a(str2);
            }
        }
    }

    /* renamed from: a */
    public static void m30237a() {
        new IdentifyContactsTask().execute();
    }
}
