package com.callapp.contacts.sync.model;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.Synchronizers;
import com.callapp.framework.util.StringUtils;
import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.query.AbstractC17985c;
import io.objectbox.query.Query;
import io.objectbox.relation.ToMany;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncManager.class */
public class SyncManager {
    public static final String LAST_SYNC = ".lastSync";
    public static final String START_SYNC = ".startSync";

    public static Map<Long, SyncerData> getSyncData() {
        final HashMap hashMap = new HashMap();
        CallAppApplication.get().getObjectBoxStore().m4727d(SyncerData.class).m4700e().m4618a().m4636a(new AbstractC17985c<SyncerData>() { // from class: com.callapp.contacts.sync.model.SyncManager.2
            public final void accept(SyncerData syncerData) {
                hashMap.put(ContactData.splitPhoneOrIdKey(syncerData.getPhoneOrIdKey()).second, syncerData);
            }
        });
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    public static long resetContactDbAndSynchronizes(String str) {
        final Query m4618a;
        SyncerData syncerData;
        resetSyncersPrefs();
        String[] m26017k = StringUtils.m26017k(str, ",");
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        C17944a m4727d = objectBoxStore.m4727d(SyncerData.class);
        int length = m26017k.length;
        ?? r9 = false;
        int i = 0;
        while (i < length) {
            ?? r13 = r9;
            try {
                long m28854a = DeviceIdLoader.m28854a(PhoneManager.get().m28239a(m26017k[i]), 500);
                ?? r0 = r9;
                m4618a = m4727d.m4700e().m4611a(SyncerData_.phoneOrIdKey, String.valueOf(m28854a)).m4618a();
                ?? r02 = r9;
                syncerData = (SyncerData) m4618a.m4641a();
            } catch (DeviceIdLoader.OperationFailedException e) {
            }
            if (syncerData == null) {
                return r9 == true ? 1L : 0L;
            }
            ToMany<SyncerDetails> syncerDetails = syncerData.getSyncerDetails();
            r13 = r9;
            if (syncerDetails != null) {
                Iterator<SyncerDetails> it2 = syncerDetails.iterator();
                ?? r03 = r9;
                ?? r04 = r9;
                final ArrayList arrayList = new ArrayList();
                while (true) {
                    ?? r05 = r9;
                    if (!it2.hasNext()) {
                        break;
                    }
                    ?? r06 = r9;
                    arrayList.add(it2.next());
                    ?? r07 = r9;
                    it2.remove();
                }
                final C17944a m4727d2 = objectBoxStore.m4727d(SyncerDetails.class);
                ?? r08 = r9;
                ?? size = (r9 == true ? 1L : 0L) + arrayList.size();
                objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.sync.model.SyncManager.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        m4727d2.m4704b((Collection) arrayList);
                        m4618a.m4624f();
                    }
                });
                r13 = size;
            }
            i++;
            r9 = r13;
        }
        return r9 == true ? 1L : 0L;
    }

    public static void resetDbAndSynchronizers() {
        resetSyncersPrefs();
        CallAppApplication.get().getObjectBoxStore().m4727d(SyncerDetails.class).m4701d();
        CallAppApplication.get().getObjectBoxStore().m4727d(SyncerData.class).m4701d();
    }

    private static void resetSyncersPrefs() {
        for (Synchronizers synchronizers : Synchronizers.getSyncers()) {
            new LongPref(synchronizers.syncer.getName() + LAST_SYNC, 0L).set(0L);
        }
    }

    public static void setSyncData(SyncerData syncerData) {
        CallAppApplication.get().getObjectBoxStore().m4727d(SyncerData.class).m4711a((C17944a) syncerData);
    }
}
