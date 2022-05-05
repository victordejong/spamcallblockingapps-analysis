package com.privacystar.core.data.model;

import io.realm.AbstractC1913xaf6395db;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/ConnectivityLog.class */
public class ConnectivityLog extends RealmObject implements AbstractC1913xaf6395db {
    private String requestPayload;
    private Date requestTime;
    private String requestUrl;
    private String responseExtras;
    private Date responseTime;

    public ConnectivityLog() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getRequestPayload() {
        return realmGet$requestPayload();
    }

    public Date getRequestTime() {
        return realmGet$requestTime();
    }

    public String getRequestUrl() {
        return realmGet$requestUrl();
    }

    public String getResponseExtras() {
        return realmGet$responseExtras();
    }

    public Date getResponseTime() {
        return realmGet$responseTime();
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public String realmGet$requestPayload() {
        return this.requestPayload;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public Date realmGet$requestTime() {
        return this.requestTime;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public String realmGet$requestUrl() {
        return this.requestUrl;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public String realmGet$responseExtras() {
        return this.responseExtras;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public Date realmGet$responseTime() {
        return this.responseTime;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public void realmSet$requestPayload(String str) {
        this.requestPayload = str;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public void realmSet$requestTime(Date date) {
        this.requestTime = date;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public void realmSet$requestUrl(String str) {
        this.requestUrl = str;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public void realmSet$responseExtras(String str) {
        this.responseExtras = str;
    }

    @Override // io.realm.AbstractC1913xaf6395db
    public void realmSet$responseTime(Date date) {
        this.responseTime = date;
    }

    public void setRequestPayload(String str) {
        realmSet$requestPayload(str);
    }

    public void setRequestTime(Date date) {
        realmSet$requestTime(date);
    }

    public void setRequestUrl(String str) {
        realmSet$requestUrl(str);
    }

    public void setResponseExtras(String str) {
        realmSet$responseExtras(str);
    }

    public void setResponseTime(Date date) {
        realmSet$responseTime(date);
    }
}
