package com.telguarder.features.postCallStatistics;

import io.realm.AbstractC2394x6078a5b7;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CallHistoryItem.class */
public class CallHistoryItem extends RealmObject implements AbstractC2394x6078a5b7 {
    private long date;
    private int duration;
    private String number;
    private int type;

    public CallHistoryItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public long getDate() {
        return realmGet$date();
    }

    public int getDuration() {
        return realmGet$duration();
    }

    public String getNumber() {
        return realmGet$number();
    }

    public int getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public long realmGet$date() {
        return this.date;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public int realmGet$duration() {
        return this.duration;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public void realmSet$date(long j) {
        this.date = j;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public void realmSet$duration(int i) {
        this.duration = i;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.AbstractC2394x6078a5b7
    public void realmSet$type(int i) {
        this.type = i;
    }

    public void setDate(long j) {
        realmSet$date(j);
    }

    public void setDuration(int i) {
        realmSet$duration(i);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public void setType(int i) {
        realmSet$type(i);
    }
}
