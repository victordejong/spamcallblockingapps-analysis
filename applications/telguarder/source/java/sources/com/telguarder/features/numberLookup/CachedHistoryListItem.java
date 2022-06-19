package com.telguarder.features.numberLookup;

import io.realm.AbstractC2392x331be87b;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/CachedHistoryListItem.class */
public class CachedHistoryListItem extends RealmObject implements AbstractC2392x331be87b {
    private String calledPhoneNumber;
    private int counter;
    private long dateTimeInMillis;
    private String infoPageUrl;
    private String lastSpamComment;
    private String lastSpamDate;
    private String name;
    private String phoneNumberForDisplaying;
    private String securityLevel;
    private String spamType;
    private int type;

    public CachedHistoryListItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getCalledPhoneNumber() {
        return realmGet$calledPhoneNumber();
    }

    public int getCounter() {
        return realmGet$counter();
    }

    public long getDateTimeInMillis() {
        return realmGet$dateTimeInMillis();
    }

    public String getInfoPageUrl() {
        return realmGet$infoPageUrl();
    }

    public String getLastSpamComment() {
        return realmGet$lastSpamComment();
    }

    public String getLastSpamDate() {
        return realmGet$lastSpamDate();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getPhoneNumberForDisplaying() {
        return realmGet$phoneNumberForDisplaying();
    }

    public String getSecurityLevel() {
        return realmGet$securityLevel();
    }

    public String getSpamType() {
        return realmGet$spamType();
    }

    public int getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$calledPhoneNumber() {
        return this.calledPhoneNumber;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public int realmGet$counter() {
        return this.counter;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public long realmGet$dateTimeInMillis() {
        return this.dateTimeInMillis;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$infoPageUrl() {
        return this.infoPageUrl;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$lastSpamComment() {
        return this.lastSpamComment;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$lastSpamDate() {
        return this.lastSpamDate;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$phoneNumberForDisplaying() {
        return this.phoneNumberForDisplaying;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$securityLevel() {
        return this.securityLevel;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public String realmGet$spamType() {
        return this.spamType;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$calledPhoneNumber(String str) {
        this.calledPhoneNumber = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$counter(int i) {
        this.counter = i;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$dateTimeInMillis(long j) {
        this.dateTimeInMillis = j;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$infoPageUrl(String str) {
        this.infoPageUrl = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$lastSpamComment(String str) {
        this.lastSpamComment = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$lastSpamDate(String str) {
        this.lastSpamDate = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$phoneNumberForDisplaying(String str) {
        this.phoneNumberForDisplaying = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$securityLevel(String str) {
        this.securityLevel = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$spamType(String str) {
        this.spamType = str;
    }

    @Override // io.realm.AbstractC2392x331be87b
    public void realmSet$type(int i) {
        this.type = i;
    }

    public void setCalledPhoneNumber(String str) {
        realmSet$calledPhoneNumber(str);
    }

    public void setCounter(int i) {
        realmSet$counter(i);
    }

    public void setDateTimeInMillis(long j) {
        realmSet$dateTimeInMillis(j);
    }

    public void setInfoPageUrl(String str) {
        realmSet$infoPageUrl(realmGet$infoPageUrl());
    }

    public void setLastSpamComment(String str) {
        realmSet$lastSpamComment(str);
    }

    public void setLastSpamDate(String str) {
        realmSet$lastSpamDate(str);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setPhoneNumberForDisplaying(String str) {
        realmSet$phoneNumberForDisplaying(str);
    }

    public void setSecurityLevel(String str) {
        realmSet$securityLevel(str);
    }

    public void setSpamType(String str) {
        realmSet$spamType(str);
    }

    public void setType(int i) {
        realmSet$type(i);
    }
}
