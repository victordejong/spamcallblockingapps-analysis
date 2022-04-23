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
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsTaskManager.class */
public class IdentifyContactsTaskManager {

    /* renamed from: a  reason: collision with root package name */
    static final String f12920a = "IdentifyContactsTaskManager";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask.class */
    public static class IdentifyContactsTask extends Task {
        private IdentifyContactsTask() {
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            int i;
            CLog.a(IdentifyContactsTaskManager.f12920a);
            ArrayList arrayList = new ArrayList();
            List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
            if (CollectionUtils.b(contactsWithPhoneNumber)) {
                Iterator<MemoryContactItem> it2 = contactsWithPhoneNumber.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    MemoryContactItem next = it2.next();
                    if (PhoneManager.get().a(next.displayName).isValid()) {
                        ContactData load = new ContactLoader().addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setDisableContactEvents().setLoadOnlyFromCache().addFields(ContactFieldEnumSets.NAME_FIELDS).load(next.getPhone(), next.getContactId());
                        load.updateFullName();
                        if (StringUtils.b((CharSequence) load.getFullName()) && load.isContactInDevice()) {
                            arrayList.add(Long.valueOf(next.contactId));
                            String str = IdentifyContactsTaskManager.f12920a;
                            StringBuilder sb = new StringBuilder("Found match: Phone ");
                            sb.append(next.getPhone());
                            sb.append(" <-> Name: ");
                            sb.append(load.getFullName());
                            CLog.a(str);
                        }
                    }
                }
                long[] jArr = null;
                if (CollectionUtils.b(arrayList)) {
                    long[] jArr2 = new long[arrayList.size()];
                    int i2 = 0;
                    while (true) {
                        jArr = jArr2;
                        if (i2 >= arrayList.size()) {
                            break;
                        }
                        jArr2[i2] = ((Long) arrayList.get(i2)).longValue();
                        i2++;
                    }
                }
                if (jArr != null && jArr.length > 1) {
                    AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Contacts to optimize", (String) null, jArr.length, new String[0]);
                }
                HashSet hashSet = new HashSet();
                if (jArr != null && jArr.length > 0) {
                    for (long j : jArr) {
                        hashSet.add(Long.valueOf(j));
                    }
                }
                Prefs.fo.set(Long.valueOf(System.currentTimeMillis()));
                Prefs.fn.set(hashSet);
                EventBusManager.f14368a.c(IdentifyContactsChangedListener.f12948b, EventBusManager.CallAppDataType.IDENTIFY_CONTACTS_FINISHED);
                String str2 = IdentifyContactsTaskManager.f12920a;
                StringBuilder sb2 = new StringBuilder("Finished job. Found: ");
                sb2.append(arrayList.size());
                sb2.append(" Contacts to identify");
                CLog.a(str2);
            }
        }
    }

    public static void a() {
        new IdentifyContactsTask().execute();
    }
}
