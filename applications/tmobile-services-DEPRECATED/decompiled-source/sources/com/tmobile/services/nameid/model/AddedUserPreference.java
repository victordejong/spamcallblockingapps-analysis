package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/AddedUserPreference.class */
public class AddedUserPreference {
    @SerializedName("addedUserPreferences")
    @Expose
    List<UserPreferenceItem> preferenceItems;

    public List<UserPreferenceItem> getPreferenceItems() {
        return this.preferenceItems;
    }

    public void setPreferenceItems(List<UserPreferenceItem> list) {
        this.preferenceItems = list;
    }
}
