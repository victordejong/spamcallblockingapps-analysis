package com.tmobile.services.nameid.utility;

import io.realm.RealmObject;
import io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/LogItem.class */
public class LogItem extends RealmObject implements com_tmobile_services_nameid_utility_LogItemRealmProxyInterface {
    private Date date;
    private String log;

    public LogItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Date getDate() {
        return realmGet$date();
    }

    public String getLog() {
        return realmGet$log();
    }

    @Override // io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public Date realmGet$date() {
        return this.date;
    }

    @Override // io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public String realmGet$log() {
        return this.log;
    }

    @Override // io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public void realmSet$date(Date date) {
        this.date = date;
    }

    @Override // io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public void realmSet$log(String str) {
        this.log = str;
    }

    public void setDate(Date date) {
        realmSet$date(date);
    }

    public void setLog(String str) {
        realmSet$log(str);
    }
}
