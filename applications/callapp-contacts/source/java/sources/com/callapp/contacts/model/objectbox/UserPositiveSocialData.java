package com.callapp.contacts.model.objectbox;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialData.class */
public class UserPositiveSocialData {
    transient BoxStore __boxStore;

    /* renamed from: id */
    protected Long f26813id;
    private String profileId;
    private int socialNetworkId;
    private boolean sure;
    private ToOne<UserNegativePositiveData> userPositiveData = new ToOne<>(this, UserPositiveSocialData_.userPositiveData);

    public Long getId() {
        return this.f26813id;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public int getSocialNetworkId() {
        return this.socialNetworkId;
    }

    public ToOne<UserNegativePositiveData> getUserPositiveData() {
        return this.userPositiveData;
    }

    public boolean isSure() {
        return this.sure;
    }

    public void setId(Long l) {
        this.f26813id = l;
    }

    public void setProfileId(String str) {
        this.profileId = str;
    }

    public void setSocialNetworkId(int i) {
        this.socialNetworkId = i;
    }

    public void setSure(boolean z) {
        this.sure = z;
    }

    public void setUserPositiveData(ToOne<UserNegativePositiveData> toOne) {
        this.userPositiveData = toOne;
    }

    public String toString() {
        return "UserPositiveSocialData{id=" + this.f26813id + ", socialNetworkId=" + this.socialNetworkId + ", profileId='" + this.profileId + "', sure=" + this.sure + ", userPositiveData=" + this.userPositiveData + '}';
    }
}
