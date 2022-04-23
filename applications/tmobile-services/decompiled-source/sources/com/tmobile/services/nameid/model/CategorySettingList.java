package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CategorySettingList.class */
public class CategorySettingList {
    @SerializedName("userPreferenceCategoryList")
    @Expose
    private List<CategorySetting> settings;

    public List<CategorySetting> getSettings() {
        return this.settings;
    }

    public void setSettings(List<CategorySetting> list) {
        this.settings = list;
    }
}
