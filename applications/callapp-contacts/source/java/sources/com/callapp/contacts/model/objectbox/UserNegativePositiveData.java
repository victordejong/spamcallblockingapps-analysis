package com.callapp.contacts.model.objectbox;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToMany;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveData.class */
public class UserNegativePositiveData implements MonitoredDeviceID {
    transient BoxStore __boxStore;
    private long contactId;

    /* renamed from: id */
    protected Long f26809id;
    private String phoneNumber;
    private String phoneOrIdKey;
    ToMany<UserPositiveSocialData> userPositiveSocialData = new ToMany<>(this, UserNegativePositiveData_.userPositiveSocialData);
    ToMany<UserNegativeSocialData> userNegativeSocialData = new ToMany<>(this, UserNegativePositiveData_.userNegativeSocialData);

    public UserNegativePositiveData() {
    }

    public UserNegativePositiveData(Long l, String str) {
        this.f26809id = l;
        this.phoneOrIdKey = str;
    }

    public long getContactId() {
        return this.contactId;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.f26809id;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public ToMany<UserNegativeSocialData> getUserNegativeSocialData() {
        return this.userNegativeSocialData;
    }

    public ToMany<UserPositiveSocialData> getUserPositiveSocialData() {
        return this.userPositiveSocialData;
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.f26809id = l;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setUserNegativeSocialData(ToMany<UserNegativeSocialData> toMany) {
        this.userNegativeSocialData = toMany;
    }

    public void setUserPositiveSocialData(ToMany<UserPositiveSocialData> toMany) {
        this.userPositiveSocialData = toMany;
    }

    public String toString() {
        return "UserNegativePositiveData{id=" + this.f26809id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', userNegativeSocialData=" + this.userNegativeSocialData + ", userPositiveSocialData=" + this.userPositiveSocialData + ", contactId=" + this.contactId + ", phoneNumber='" + this.phoneNumber + "'}";
    }
}
