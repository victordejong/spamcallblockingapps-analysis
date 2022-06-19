package com.callapp.contacts.activity.marketplace.catalog;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem.class */
public class JSONStoreItemPremiumAppItem extends JSONStoreItem {
    private int[] groups;
    @JsonProperty("isSubscription")
    private boolean isSubscription;
    private int originalPrice;

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        JSONStoreItemPremiumAppItem jSONStoreItemPremiumAppItem = (JSONStoreItemPremiumAppItem) obj;
        if (this.isSubscription != jSONStoreItemPremiumAppItem.isSubscription || this.originalPrice != jSONStoreItemPremiumAppItem.originalPrice) {
            return false;
        }
        return Arrays.equals(this.groups, jSONStoreItemPremiumAppItem.groups);
    }

    public int[] getGroups() {
        return this.groups;
    }

    public int getOriginalPrice() {
        return this.originalPrice;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem
    public int hashCode() {
        return (((((super.hashCode() * 31) + Arrays.hashCode(this.groups)) * 31) + (this.isSubscription ? 1 : 0)) * 31) + this.originalPrice;
    }

    public boolean isSubscription() {
        return this.isSubscription;
    }

    public void setGroups(int[] iArr) {
        this.groups = iArr;
    }

    public void setOriginalPrice(int i) {
        this.originalPrice = i;
    }

    public void setSubscription(boolean z) {
        this.isSubscription = z;
    }
}
