package com.callapp.contacts.model.objectbox;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactData.class */
public class SuggestContactData implements MonitoredDeviceID {
    private String contactName;
    private Long id;
    private String phoneOrIdKey;
    private String profileId;
    private int socialNetworkId;
    private String userName;

    public SuggestContactData() {
    }

    public SuggestContactData(Long l, String str, int i, String str2, String str3, String str4) {
        this.id = l;
        this.phoneOrIdKey = str;
        this.socialNetworkId = i;
        this.profileId = str2;
        this.userName = str3;
        this.contactName = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SuggestContactData suggestContactData = (SuggestContactData) obj;
        if (this.socialNetworkId == suggestContactData.socialNetworkId && Objects.equals(this.id, suggestContactData.id) && Objects.equals(this.phoneOrIdKey, suggestContactData.phoneOrIdKey) && Objects.equals(this.profileId, suggestContactData.profileId) && Objects.equals(this.userName, suggestContactData.userName)) {
            return Objects.equals(this.contactName, suggestContactData.contactName);
        }
        return false;
    }

    public String getContactName() {
        return this.contactName;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.id;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public int getSocialNetworkId() {
        return this.socialNetworkId;
    }

    public String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        Long l = this.id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.phoneOrIdKey;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int i2 = this.socialNetworkId;
        String str2 = this.profileId;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.userName;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.contactName;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setContactName(String str) {
        this.contactName = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setProfileId(String str) {
        this.profileId = str;
    }

    public void setSocialNetworkId(int i) {
        this.socialNetworkId = i;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String toString() {
        return "SuggestContactData{id=" + this.id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', socialNetworkId=" + this.socialNetworkId + ", profileId='" + this.profileId + "', userName='" + this.userName + "', contactName='" + this.contactName + "'}";
    }
}
