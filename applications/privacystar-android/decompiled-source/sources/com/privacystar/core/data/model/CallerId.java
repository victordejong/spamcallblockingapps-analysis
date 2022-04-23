package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/CallerId.class */
public class CallerId extends RealmObject implements com_privacystar_core_data_model_CallerIdRealmProxyInterface {
    private int categoryId;
    private String categoryName;
    private String city;
    private Date expiration;
    private String name;
    @PrimaryKey
    private String number;
    private int numberOfBlocks;
    private int numberOfComplaints;
    private int numberOfLookups;
    private int offenderFlags;
    private int spamScore;
    private String state;

    public CallerId() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public int getCategoryId() {
        return realmGet$categoryId();
    }

    public String getCategoryName() {
        return realmGet$categoryName();
    }

    public String getCity() {
        return realmGet$city();
    }

    public String getCityState() {
        return getCity() + ", " + getState();
    }

    public Date getExpiration() {
        return realmGet$expiration();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getNumber() {
        return realmGet$number();
    }

    public int getNumberOfBlocks() {
        return realmGet$numberOfBlocks();
    }

    public int getNumberOfComplaints() {
        return realmGet$numberOfComplaints();
    }

    public int getNumberOfLookups() {
        return realmGet$numberOfLookups();
    }

    public int getOffenderFlags() {
        return realmGet$offenderFlags();
    }

    public int getSpamScore() {
        return realmGet$spamScore();
    }

    public String getState() {
        return realmGet$state();
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$categoryId() {
        return this.categoryId;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$categoryName() {
        return this.categoryName;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$city() {
        return this.city;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public Date realmGet$expiration() {
        return this.expiration;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$numberOfBlocks() {
        return this.numberOfBlocks;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$numberOfComplaints() {
        return this.numberOfComplaints;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$numberOfLookups() {
        return this.numberOfLookups;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$offenderFlags() {
        return this.offenderFlags;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$spamScore() {
        return this.spamScore;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$state() {
        return this.state;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$categoryId(int i) {
        this.categoryId = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$categoryName(String str) {
        this.categoryName = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$city(String str) {
        this.city = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$expiration(Date date) {
        this.expiration = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$numberOfBlocks(int i) {
        this.numberOfBlocks = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$numberOfComplaints(int i) {
        this.numberOfComplaints = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$numberOfLookups(int i) {
        this.numberOfLookups = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$offenderFlags(int i) {
        this.offenderFlags = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$spamScore(int i) {
        this.spamScore = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$state(String str) {
        this.state = str;
    }

    public void setCategoryId(Integer num) {
        if (num == null) {
            realmSet$categoryId(0);
        } else {
            realmSet$categoryId(num.intValue());
        }
    }

    public void setCategoryName(String str) {
        realmSet$categoryName(str);
    }

    public void setCity(String str) {
        realmSet$city(str);
    }

    public void setExpiration(Date date) {
        realmSet$expiration(date);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public void setNumberOfBlocks(int i) {
        realmSet$numberOfBlocks(i);
    }

    public void setNumberOfComplaints(int i) {
        realmSet$numberOfComplaints(i);
    }

    public void setNumberOfLookups(int i) {
        realmSet$numberOfLookups(i);
    }

    public void setOffenderFlags(int i) {
        realmSet$offenderFlags(i);
    }

    public void setSpamScore(int i) {
        realmSet$spamScore(i);
    }

    public void setState(String str) {
        realmSet$state(str);
    }
}
