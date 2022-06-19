package com.callapp.contacts.model.objectbox;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveData.class */
public class UserCorrectedPositiveData {
    transient BoxStore __boxStore;

    /* renamed from: id */
    private long f26805id;
    private String profileId;
    private int socialNetworkId;
    private ToOne<UserCorrectedData> userCorrectedData = new ToOne<>(this, UserCorrectedPositiveData_.userCorrectedData);

    public long getId() {
        return this.f26805id;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public int getSocialNetworkId() {
        return this.socialNetworkId;
    }

    public ToOne<UserCorrectedData> getUserCorrectedData() {
        return this.userCorrectedData;
    }

    public void setId(long j) {
        this.f26805id = j;
    }

    public void setProfileId(String str) {
        this.profileId = str;
    }

    public void setSocialNetworkId(int i) {
        this.socialNetworkId = i;
    }

    public void setUserCorrectedData(ToOne<UserCorrectedData> toOne) {
        this.userCorrectedData = toOne;
    }

    public String toString() {
        return "Social network ID: " + this.socialNetworkId + "Profile ID: " + this.profileId;
    }
}
