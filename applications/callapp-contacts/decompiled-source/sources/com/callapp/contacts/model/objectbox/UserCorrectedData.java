package com.callapp.contacts.model.objectbox;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToMany;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedData.class */
public class UserCorrectedData implements MonitoredDeviceID {
    transient BoxStore __boxStore;
    private long contactId;
    private String fullName;
    protected Long id;
    private String phoneNumber;
    private String phoneOrIdKey;
    private ToMany<UserCorrectedPositiveData> userCorrectedPositive = new ToMany<>(this, UserCorrectedData_.userCorrectedPositive);
    private int userCorrectedType;

    public UserCorrectedData() {
    }

    public UserCorrectedData(Long l, String str, String str2, int i) {
        this.id = l;
        this.phoneOrIdKey = str;
        this.fullName = str2;
        this.userCorrectedType = i;
    }

    public long getContactId() {
        return this.contactId;
    }

    public String getFullName() {
        return this.fullName;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.id;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public ToMany<UserCorrectedPositiveData> getUserCorrectedPositive() {
        return this.userCorrectedPositive;
    }

    public int getUserCorrectedType() {
        return this.userCorrectedType;
    }

    public boolean isBusiness() {
        return this.userCorrectedType == 2;
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setUserCorrectedPositive(ToMany<UserCorrectedPositiveData> toMany) {
        this.userCorrectedPositive = toMany;
    }

    public void setUserCorrectedType(int i) {
        this.userCorrectedType = i;
    }

    public String toString() {
        return "PhoneOrIdKey: " + this.phoneOrIdKey + ", User corrected name: " + this.fullName + ", Type: " + this.userCorrectedType + ", Corrected socials positive data: " + this.userCorrectedPositive.toArray();
    }
}
