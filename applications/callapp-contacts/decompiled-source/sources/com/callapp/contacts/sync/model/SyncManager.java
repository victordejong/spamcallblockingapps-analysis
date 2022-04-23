package com.callapp.contacts.sync.model;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.Synchronizers;
import io.objectbox.a;
import io.objectbox.query.c;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncManager.class */
public class SyncManager {
    public static final String LAST_SYNC = ".lastSync";
    public static final String START_SYNC = ".startSync";

    public static Map<Long, SyncerData> getSyncData() {
        final HashMap hashMap = new HashMap();
        CallAppApplication.get().getObjectBoxStore().d(SyncerData.class).e().a().a(new c<SyncerData>() { // from class: com.callapp.contacts.sync.model.SyncManager.2
            public final void accept(SyncerData syncerData) {
                hashMap.put(ContactData.splitPhoneOrIdKey(syncerData.getPhoneOrIdKey()).second, syncerData);
            }
        });
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v15, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long resetContactDbAndSynchronizes(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.model.SyncManager.resetContactDbAndSynchronizes(java.lang.String):long");
    }

    public static void resetDbAndSynchronizers() {
        resetSyncersPrefs();
        CallAppApplication.get().getObjectBoxStore().d(SyncerDetails.class).d();
        CallAppApplication.get().getObjectBoxStore().d(SyncerData.class).d();
    }

    private static void resetSyncersPrefs() {
        for (Synchronizers synchronizers : Synchronizers.getSyncers()) {
            new LongPref(synchronizers.syncer.getName() + LAST_SYNC, 0L).set(0L);
        }
    }

    public static void setSyncData(SyncerData syncerData) {
        CallAppApplication.get().getObjectBoxStore().d(SyncerData.class).a((a) syncerData);
    }
}
