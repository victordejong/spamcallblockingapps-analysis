package com.privacystar.core.data.model;

import io.realm.AbstractC1910xbce7d778;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/AnalyticsEvent.class */
public class AnalyticsEvent extends RealmObject implements AbstractC1910xbce7d778 {
    private String eventBody;
    private int eventType;
    @PrimaryKey

    /* renamed from: id */
    private int f251id;
    private String status;

    /* renamed from: ts */
    private Date f252ts;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/AnalyticsEvent$Status.class */
    public enum Status {
        WAITING("waiting"),
        PROCESSING("processing");
        
        private String simpleName;

        Status(String str) {
            this.simpleName = str;
        }

        public static Status deserialize(String str) {
            Status[] values;
            for (Status status : values()) {
                if (status.getSimpleName().equals(str)) {
                    return status;
                }
            }
            return null;
        }

        public String getSimpleName() {
            return this.simpleName;
        }
    }

    public AnalyticsEvent() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
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

    public Status getStatus() {
        return Status.deserialize(realmGet$status());
    }

    public Date getTs() {
        return realmGet$ts();
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public String realmGet$eventBody() {
        return this.eventBody;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public int realmGet$eventType() {
        return this.eventType;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public int realmGet$id() {
        return this.f251id;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public String realmGet$status() {
        return this.status;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public Date realmGet$ts() {
        return this.f252ts;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public void realmSet$eventBody(String str) {
        this.eventBody = str;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public void realmSet$eventType(int i) {
        this.eventType = i;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public void realmSet$id(int i) {
        this.f251id = i;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public void realmSet$status(String str) {
        this.status = str;
    }

    @Override // io.realm.AbstractC1910xbce7d778
    public void realmSet$ts(Date date) {
        this.f252ts = date;
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

    public void setStatus(Status status) {
        realmSet$status(status.getSimpleName());
    }

    public void setTs(Date date) {
        realmSet$ts(date);
    }
}
