package com.callapp.contacts.model.objectbox;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialData.class */
public class UserNegativeSocialData {
    transient BoxStore __boxStore;

    /* renamed from: id */
    protected Long f26811id;
    private String profileId;
    private int socialNetworkId;
    private ToOne<UserNegativePositiveData> userNegativeData = new ToOne<>(this, UserNegativeSocialData_.userNegativeData);

    public Long getId() {
        return this.f26811id;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public int getSocialNetworkId() {
        return this.socialNetworkId;
    }

    public ToOne<UserNegativePositiveData> getUserNegativeData() {
        return this.userNegativeData;
    }

    public void setId(Long l) {
        this.f26811id = l;
    }

    public void setProfileId(String str) {
        this.profileId = str;
    }

    public void setSocialNetworkId(int i) {
        this.socialNetworkId = i;
    }

    public void setUserNegativeData(ToOne<UserNegativePositiveData> toOne) {
        this.userNegativeData = toOne;
    }

    public String toString() {
        return "UserNegativeSocialData{id=" + this.f26811id + ", socialNetworkId=" + this.socialNetworkId + ", profileId='" + this.profileId + "', userNegativeData=" + this.userNegativeData + '}';
    }
}
