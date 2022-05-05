package com.tmobile.services.nameid.model;

import io.realm.AbstractC2157xf6af7191;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/AnalyticsEvent.class */
public class AnalyticsEvent extends RealmObject implements AbstractC2157xf6af7191 {
    private String eventBody;
    private int eventType;
    @PrimaryKey

    /* renamed from: id */
    private int f13603id;
    private boolean sending;
    private long time;

    public AnalyticsEvent() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public AnalyticsEvent copy() {
        AnalyticsEvent analyticsEvent = new AnalyticsEvent();
        analyticsEvent.setTime(realmGet$time());
        analyticsEvent.setEventType(realmGet$eventType());
        analyticsEvent.setEventBody(realmGet$eventBody());
        analyticsEvent.setId(realmGet$id());
        analyticsEvent.setSending(realmGet$sending());
        return analyticsEvent;
    }

    public String getEventBody() {
        return realmGet$eventBody();
    }

    public int getEventType() {
        return realmGet$eventType();
    }

    public int getId() {
        return realmGet$id();
    }

    public long getTime() {
        return realmGet$time();
    }

    public boolean isSending() {
        return realmGet$sending();
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public String realmGet$eventBody() {
        return this.eventBody;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public int realmGet$eventType() {
        return this.eventType;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public int realmGet$id() {
        return this.f13603id;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public boolean realmGet$sending() {
        return this.sending;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public long realmGet$time() {
        return this.time;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public void realmSet$eventBody(String str) {
        this.eventBody = str;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public void realmSet$eventType(int i) {
        this.eventType = i;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public void realmSet$id(int i) {
        this.f13603id = i;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public void realmSet$sending(boolean z) {
        this.sending = z;
    }

    @Override // io.realm.AbstractC2157xf6af7191
    public void realmSet$time(long j) {
        this.time = j;
    }

    public void setEventBody(String str) {
        realmSet$eventBody(str);
    }

    public void setEventType(int i) {
        realmSet$eventType(i);
    }

    public void setId(int i) {
        realmSet$id(i);
    }

    public void setSending(boolean z) {
        realmSet$sending(z);
    }

    public void setTime(long j) {
        realmSet$time(j);
    }
}
