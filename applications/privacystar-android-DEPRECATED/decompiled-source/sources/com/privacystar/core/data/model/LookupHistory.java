package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/LookupHistory.class */
public class LookupHistory extends RealmObject implements com_privacystar_core_data_model_LookupHistoryRealmProxyInterface {
    private Date added;
    @PrimaryKey
    private String number;

    public LookupHistory() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Date getAdded() {
        return realmGet$added();
    }

    public String getNumber() {
        return realmGet$number();
    }

    @Override // io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public Date realmGet$added() {
        return this.added;
    }

    @Override // io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public void realmSet$added(Date date) {
        this.added = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    public void setAdded(Date date) {
        realmSet$added(date);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }
}
