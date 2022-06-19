package com.freshchat.consumer.sdk.beans;

import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Category.class */
public class Category implements ICategory {
    private static final String JSON_TAG_CATEGORY_ALIAS = "categoryAlias";
    private static final String JSON_TAG_CATEGORY_ID = "categoryId";
    private static final String JSON_TAG_DESCRIPTION = "description";
    private static final String JSON_TAG_POSITION = "position";
    private static final String JSON_TAG_TITLE = "title";
    private static final String JSON_TAG_UPDATED_AT = "lastUpdatedAt";
    private static final String JSON_TAG_URL = "icon";
    private String categoryAlias;
    private String description;
    private String iconUrl;

    /* renamed from: id */
    private String f4099id;
    private int position;
    private String title;
    private long updatedAt;

    public static Category getCategory(JSONObject jSONObject) throws JSONException {
        Category updatedAt = new Category().setId(jSONObject.getString(JSON_TAG_CATEGORY_ID)).setTitle(jSONObject.getString(JSON_TAG_TITLE)).setDescription(jSONObject.optString(JSON_TAG_DESCRIPTION)).setIconUrl(jSONObject.optString("icon")).setPosition(jSONObject.getInt(JSON_TAG_POSITION)).setUpdatedAt(jSONObject.getLong(JSON_TAG_UPDATED_AT));
        if (jSONObject.has(JSON_TAG_CATEGORY_ALIAS)) {
            updatedAt.setCategoryAlias(jSONObject.getString(JSON_TAG_CATEGORY_ALIAS));
        }
        return updatedAt;
    }

    @Override // com.freshchat.consumer.sdk.beans.ICategory
    public String getCategoryAlias() {
        return this.categoryAlias;
    }

    @Override // com.freshchat.consumer.sdk.beans.ICategory
    public String getCategoryId() {
        return this.f4099id;
    }

    @Override // com.freshchat.consumer.sdk.beans.ICategory
    public String getDescription() {
        return this.description;
    }

    @Override // com.freshchat.consumer.sdk.beans.ICategory
    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getId() {
        return this.f4099id;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // com.freshchat.consumer.sdk.beans.ICategory
    public String getTitle() {
        return this.title;
    }

    public long getUpdatedAt() {
        return this.updatedAt;
    }

    public Category setCategoryAlias(String str) {
        this.categoryAlias = str;
        return this;
    }

    public Category setDescription(String str) {
        this.description = str;
        return this;
    }

    public Category setIconUrl(String str) {
        this.iconUrl = str;
        return this;
    }

    public Category setId(String str) {
        this.f4099id = str;
        return this;
    }

    public Category setPosition(int i) {
        this.position = i;
        return this;
    }

    public Category setTitle(String str) {
        this.title = str;
        return this;
    }

    public Category setUpdatedAt(long j) {
        this.updatedAt = j;
        return this;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("Category{", "id='");
        C22128a.m8678P0(m8704I, this.f4099id, '\'', ", title='");
        C22128a.m8678P0(m8704I, this.title, '\'', ", description='");
        C22128a.m8678P0(m8704I, this.description, '\'', ", iconUrl='");
        C22128a.m8678P0(m8704I, this.iconUrl, '\'', ", position='");
        m8704I.append(this.position);
        m8704I.append('\'');
        m8704I.append(", categoryAlias='");
        m8704I.append(this.categoryAlias);
        m8704I.append('\'');
        m8704I.append(", updatedAt=");
        m8704I.append('}');
        return m8704I.toString();
    }
}
