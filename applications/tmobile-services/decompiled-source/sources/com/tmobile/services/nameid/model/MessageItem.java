package com.tmobile.services.nameid.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MessageItem.class */
public class MessageItem extends RealmObject implements com_tmobile_services_nameid_model_MessageItemRealmProxyInterface {
    @PrimaryKey
    private String batchId;
    private String messageHtml;
    private String notificationMessage;
    private String notificationTitle;

    public MessageItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MessageItem copy() {
        MessageItem messageItem = new MessageItem();
        messageItem.setBatchId(getBatchId());
        messageItem.setMessageHtml(getMessageHtml());
        messageItem.setNotificationTitle(getNotificationTitle());
        messageItem.setNotificationMessage(getNotificationMessage());
        return messageItem;
    }

    public String getBatchId() {
        return realmGet$batchId();
    }

    public String getMessageHtml() {
        return realmGet$messageHtml();
    }

    public String getNotificationMessage() {
        return realmGet$notificationMessage();
    }

    public String getNotificationTitle() {
        return realmGet$notificationTitle();
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$batchId() {
        return this.batchId;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$messageHtml() {
        return this.messageHtml;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$notificationMessage() {
        return this.notificationMessage;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$notificationTitle() {
        return this.notificationTitle;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$batchId(String str) {
        this.batchId = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$messageHtml(String str) {
        this.messageHtml = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$notificationMessage(String str) {
        this.notificationMessage = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$notificationTitle(String str) {
        this.notificationTitle = str;
    }

    public void setBatchId(String str) {
        realmSet$batchId(str);
    }

    public void setMessageHtml(String str) {
        realmSet$messageHtml(str);
    }

    public void setNotificationMessage(String str) {
        realmSet$notificationMessage(str);
    }

    public void setNotificationTitle(String str) {
        realmSet$notificationTitle(str);
    }
}
