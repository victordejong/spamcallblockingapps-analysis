package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/Offender.class */
public class Offender extends RealmObject implements com_privacystar_core_data_model_OffenderRealmProxyInterface {
    private Integer categoryId;
    @PrimaryKey
    private Long number;
    private Integer offenderFlags;
    private Integer spamScore;

    public Offender() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Integer getCategoryId() {
        return realmGet$categoryId();
    }

    public Long getNumber() {
        return realmGet$number();
    }

    public Integer getOffenderFlags() {
        return realmGet$offenderFlags();
    }

    public Integer getSpamScore() {
        return realmGet$spamScore();
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Integer realmGet$categoryId() {
        return this.categoryId;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Long realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Integer realmGet$offenderFlags() {
        return this.offenderFlags;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Integer realmGet$spamScore() {
        return this.spamScore;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$categoryId(Integer num) {
        this.categoryId = num;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$number(Long l) {
        this.number = l;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$offenderFlags(Integer num) {
        this.offenderFlags = num;
    }

    @Override // io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$spamScore(Integer num) {
        this.spamScore = num;
    }

    public void setCategoryId(Integer num) {
        realmSet$categoryId(num);
    }

    public void setNumber(Long l) {
        realmSet$number(l);
    }

    public void setOffenderFlags(Integer num) {
        realmSet$offenderFlags(num);
    }

    public void setSpamScore(Integer num) {
        realmSet$spamScore(num);
    }
}
