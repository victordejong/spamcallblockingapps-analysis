package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.PendingBulkLookupNumber;
import io.realm.Realm;
import io.realm.RealmList;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/PendingBulkLookupNumberRealm.class */
public class PendingBulkLookupNumberRealm {
    public static List<String> getLookupStrings(List<PendingBulkLookupNumber> list) {
        ArrayList arrayList = new ArrayList();
        for (PendingBulkLookupNumber pendingBulkLookupNumber : list) {
            arrayList.add(pendingBulkLookupNumber.getNumber());
        }
        return arrayList;
    }

    public static RealmList<PendingBulkLookupNumber> makeListOfLookupNumbers(Realm realm, List<String> list) {
        RealmList<PendingBulkLookupNumber> realmList = new RealmList<>();
        for (String str : list) {
            PendingBulkLookupNumber pendingBulkLookupNumber = (PendingBulkLookupNumber) realm.createObject(PendingBulkLookupNumber.class);
            pendingBulkLookupNumber.setNumber(str);
            realmList.add(pendingBulkLookupNumber);
        }
        return realmList;
    }
}
