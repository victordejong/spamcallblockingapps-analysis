package com.privacystar.core.data.model;

import io.realm.AbstractC1919x2e9a9285;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/PendingBulkLookup.class */
public class PendingBulkLookup extends RealmObject implements AbstractC1919x2e9a9285 {
    private RealmList<PendingBulkLookupNumber> queriedNumbers;
    @PrimaryKey
    private String statusId;

    public PendingBulkLookup() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public void cascadeDelete() {
        realmGet$queriedNumbers().deleteAllFromRealm();
        deleteFromRealm();
    }

    public List<PendingBulkLookupNumber> getQueriedNumbers() {
        return realmGet$queriedNumbers();
    }

    public String getStatusId() {
        return realmGet$statusId();
    }

    @Override // io.realm.AbstractC1919x2e9a9285
    public RealmList realmGet$queriedNumbers() {
        return this.queriedNumbers;
    }

    @Override // io.realm.AbstractC1919x2e9a9285
    public String realmGet$statusId() {
        return this.statusId;
    }

    @Override // io.realm.AbstractC1919x2e9a9285
    public void realmSet$queriedNumbers(RealmList realmList) {
        this.queriedNumbers = realmList;
    }

    @Override // io.realm.AbstractC1919x2e9a9285
    public void realmSet$statusId(String str) {
        this.statusId = str;
    }

    public void setQueriedNumbers(RealmList<PendingBulkLookupNumber> realmList) {
        realmSet$queriedNumbers(realmList);
    }

    public void setStatusId(String str) {
        realmSet$statusId(str);
    }
}
