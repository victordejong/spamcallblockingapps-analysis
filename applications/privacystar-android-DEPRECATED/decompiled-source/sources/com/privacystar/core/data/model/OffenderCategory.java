package com.privacystar.core.data.model;

import io.realm.AbstractC1916xb999f5;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/OffenderCategory.class */
public class OffenderCategory extends RealmObject implements AbstractC1916xb999f5 {
    @PrimaryKey
    private Integer categoryId;
    private String categoryName;

    public OffenderCategory() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Integer getCategoryId() {
        return realmGet$categoryId();
    }

    public String getCategoryName() {
        return realmGet$categoryName();
    }

    @Override // io.realm.AbstractC1916xb999f5
    public Integer realmGet$categoryId() {
        return this.categoryId;
    }

    @Override // io.realm.AbstractC1916xb999f5
    public String realmGet$categoryName() {
        return this.categoryName;
    }

    @Override // io.realm.AbstractC1916xb999f5
    public void realmSet$categoryId(Integer num) {
        this.categoryId = num;
    }

    @Override // io.realm.AbstractC1916xb999f5
    public void realmSet$categoryName(String str) {
        this.categoryName = str;
    }

    public void setCategoryId(Integer num) {
        realmSet$categoryId(num);
    }

    public void setCategoryName(String str) {
        realmSet$categoryName(str);
    }
}
