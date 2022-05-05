package com.tmobile.services.nameid.model;

import io.realm.RealmObject;
import io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/LogUtilItem.class */
public class LogUtilItem extends RealmObject implements com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface {
    private Date date;
    private String logText;

    public LogUtilItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Date getDate() {
        return realmGet$date();
    }

    public String getLogText() {
        return realmGet$logText();
    }

    @Override // io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public Date realmGet$date() {
        return this.date;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public String realmGet$logText() {
        return this.logText;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public void realmSet$date(Date date) {
        this.date = date;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public void realmSet$logText(String str) {
        this.logText = str;
    }

    public void setDate(Date date) {
        realmSet$date(date);
    }

    public void setLogText(String str) {
        realmSet$logText(str);
    }
}
