package com.privacystar.core.data.model;

import io.realm.AbstractC1918xe327143c;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/PendingBulkLookupNumber.class */
public class PendingBulkLookupNumber extends RealmObject implements AbstractC1918xe327143c {
    private String number;

    public PendingBulkLookupNumber() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PendingBulkLookupNumber(String str) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$number(str);
    }

    public String getNumber() {
        return realmGet$number();
    }

    @Override // io.realm.AbstractC1918xe327143c
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC1918xe327143c
    public void realmSet$number(String str) {
        this.number = str;
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }
}
