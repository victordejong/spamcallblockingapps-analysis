package com.tmobile.services.nameid.model;

import io.realm.RealmObject;
import io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CallEvent.class */
public class CallEvent extends RealmObject implements com_tmobile_services_nameid_model_CallEventRealmProxyInterface {
    @Nonnull
    private Date answerDate;
    private boolean answered;
    @Nonnull
    private String numberAsReceived;
    @Nonnull
    private Date ringDate;

    public CallEvent() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$ringDate(new Date());
        realmSet$answerDate(new Date());
        realmSet$numberAsReceived("");
    }

    @Nonnull
    public Date getAnswerDate() {
        return realmGet$answerDate();
    }

    @Nonnull
    public String getNumberAsReceived() {
        return realmGet$numberAsReceived();
    }

    @Nonnull
    public Date getRingDate() {
        return realmGet$ringDate();
    }

    public boolean isAnswered() {
        return realmGet$answered();
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public Date realmGet$answerDate() {
        return this.answerDate;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public boolean realmGet$answered() {
        return this.answered;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public String realmGet$numberAsReceived() {
        return this.numberAsReceived;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public Date realmGet$ringDate() {
        return this.ringDate;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$answerDate(Date date) {
        this.answerDate = date;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$answered(boolean z) {
        this.answered = z;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$numberAsReceived(String str) {
        this.numberAsReceived = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$ringDate(Date date) {
        this.ringDate = date;
    }

    public void setAnswerDate(@Nonnull Date date) {
        realmSet$answerDate(date);
    }

    public void setAnswered(boolean z) {
        realmSet$answered(z);
    }

    public void setNumberAsReceived(@Nonnull String str) {
        realmSet$numberAsReceived(str);
    }

    public void setRingDate(@Nonnull Date date) {
        realmSet$ringDate(date);
    }
}
