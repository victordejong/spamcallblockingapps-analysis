package com.tmobile.services.nameid.model;

import io.realm.AbstractC2163x57b4c55;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/SearchedNumber.class */
public class SearchedNumber extends RealmObject implements AbstractC2163x57b4c55 {
    @PrimaryKey
    private String e164Number;

    public SearchedNumber() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$e164Number("");
    }

    public String getE164Number() {
        return realmGet$e164Number();
    }

    @Override // io.realm.AbstractC2163x57b4c55
    public String realmGet$e164Number() {
        return this.e164Number;
    }

    @Override // io.realm.AbstractC2163x57b4c55
    public void realmSet$e164Number(String str) {
        this.e164Number = str;
    }

    public void setE164Number(String str) {
        realmSet$e164Number(str);
    }
}
