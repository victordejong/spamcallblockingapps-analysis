package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.DeviceExclusion;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/DeviceExclusionRealm.class */
public class DeviceExclusionRealm {
    public static RealmResults<DeviceExclusion> getExclusions(Realm realm) {
        return realm.where(DeviceExclusion.class).findAll();
    }

    public static void initializeDeviceExclusions(Realm realm) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new DeviceExclusion("htc", "", "4.1"));
        arrayList.add(new DeviceExclusion("htc", "", "4.2"));
        arrayList.add(new DeviceExclusion("htc", "", "4.3"));
        arrayList.add(new DeviceExclusion("htc", "", "4.4"));
        arrayList.add(new DeviceExclusion("", "", "6.0"));
        arrayList.add(new DeviceExclusion("", "", "7.0"));
        arrayList.add(new DeviceExclusion("", "", "7.1"));
        realm.executeTransaction(new Realm.Transaction(arrayList) { // from class: com.privacystar.core.data.model.helper.DeviceExclusionRealm$$Lambda$0
            private final List arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = arrayList;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                DeviceExclusionRealm.lambda$initializeDeviceExclusions$0$DeviceExclusionRealm(this.arg$1, realm2);
            }
        });
    }

    public static boolean isExcluded(Realm realm, DeviceExclusion deviceExclusion) {
        boolean z;
        Iterator it = getExclusions(realm).iterator();
        while (true) {
            if (it.hasNext()) {
                if (deviceExclusion.matchesPattern((DeviceExclusion) it.next())) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$initializeDeviceExclusions$0$DeviceExclusionRealm(List list, Realm realm) {
        realm.delete(DeviceExclusion.class);
        realm.copyToRealm(list, new ImportFlag[0]);
    }
}
