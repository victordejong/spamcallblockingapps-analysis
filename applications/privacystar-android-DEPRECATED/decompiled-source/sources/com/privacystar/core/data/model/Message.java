package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/Message.class */
public class Message extends RealmObject implements com_privacystar_core_data_model_MessageRealmProxyInterface {
    @PrimaryKey
    private String batchId;
    @Index
    private Date expiration;
    private String messageBody;
    private String messageSubtitle;
    private String messageTitle;
    private boolean read;
    @Index
    private Date receivedDate;

    public Message() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$read(false);
    }

    public String getBatchId() {
        return realmGet$batchId();
    }

    public Date getExpiration() {
        return realmGet$expiration();
    }

    public String getMessageBody() {
        return realmGet$messageBody();
    }

    public String getMessageSubtitle() {
        return realmGet$messageSubtitle();
    }

    public String getMessageTitle() {
        return realmGet$messageTitle();
    }

    public Date getReceivedDate() {
        return realmGet$receivedDate();
    }

    public boolean isRead() {
        return realmGet$read();
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$batchId() {
        return this.batchId;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public Date realmGet$expiration() {
        return this.expiration;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$messageBody() {
        return this.messageBody;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$messageSubtitle() {
        return this.messageSubtitle;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$messageTitle() {
        return this.messageTitle;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public boolean realmGet$read() {
        return this.read;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public Date realmGet$receivedDate() {
        return this.receivedDate;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$batchId(String str) {
        this.batchId = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$expiration(Date date) {
        this.expiration = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$messageBody(String str) {
        this.messageBody = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$messageSubtitle(String str) {
        this.messageSubtitle = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$messageTitle(String str) {
        this.messageTitle = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$read(boolean z) {
        this.read = z;
    }

    @Override // io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$receivedDate(Date date) {
        this.receivedDate = date;
    }

    public void setBatchId(String str) {
        realmSet$batchId(str);
    }

    public void setExpiration(Date date) {
        realmSet$expiration(date);
    }

    public void setMessageBody(String str) {
        realmSet$messageBody(str);
    }

    public void setMessageSubtitle(String str) {
        realmSet$messageSubtitle(str);
    }

    public void setMessageTitle(String str) {
        realmSet$messageTitle(str);
    }

    public void setRead(boolean z) {
        realmSet$read(z);
    }

    public void setReceivedDate(Date date) {
        realmSet$receivedDate(date);
    }
}
