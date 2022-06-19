package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import io.objectbox.BoxStore;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserData.class */
public class PersonalStoreItemUserData implements MonitoredDeviceID {
    transient BoxStore __boxStore;

    /* renamed from: id */
    public Long f26787id;
    private PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType;
    public ToOne<PersonalStoreItemUrlData> personalStoreItemUrlDataToOne = new ToOne<>(this, PersonalStoreItemUserData_.personalStoreItemUrlDataToOne);
    private String phoneOrIdKey;

    public PersonalStoreItemUserData() {
    }

    public PersonalStoreItemUserData(Long l, String str, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        this.f26787id = l;
        this.phoneOrIdKey = str;
        this.personalStoreItemType = personalStoreItemType;
    }

    public PersonalStoreItemUserData(String str, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        this.phoneOrIdKey = str;
        this.personalStoreItemType = personalStoreItemType;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.f26787id;
    }

    public PersonalStoreItemUrlData.PersonalStoreItemType getPersonalStoreItemType() {
        return this.personalStoreItemType;
    }

    public ToOne<PersonalStoreItemUrlData> getPersonalStoreItemUrlDataToOne() {
        return this.personalStoreItemUrlDataToOne;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.f26787id = l;
    }

    public void setPersonalStoreItemType(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        this.personalStoreItemType = personalStoreItemType;
    }

    public void setPersonalStoreItemUrlDataToOne(ToOne<PersonalStoreItemUrlData> toOne) {
        this.personalStoreItemUrlDataToOne = toOne;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public String toString() {
        return "PersonalStoreItemUserData{id=" + this.f26787id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', personalStoreItemUrlDataToOne=" + this.personalStoreItemUrlDataToOne + ", personalStoreItemType=" + this.personalStoreItemType + '}';
    }
}
