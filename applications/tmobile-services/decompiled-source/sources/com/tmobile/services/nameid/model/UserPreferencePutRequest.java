package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferencePutRequest.class */
public class UserPreferencePutRequest {
    @SerializedName("userPreferenceItem")
    @Expose
    private UserPreferencePutItem item;

    public UserPreferencePutItem getItem() {
        return this.item;
    }

    public void setItem(UserPreferencePutItem userPreferencePutItem) {
        this.item = userPreferencePutItem;
    }
}
