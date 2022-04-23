package com.callapp.contacts.activity.marketplace.catalog;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium.class */
public class JSONStoreItemPremium {
    private String premiumBannerUrl;
    private int price;
    private int promotion;
    private String textColor;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONStoreItemPremium jSONStoreItemPremium = (JSONStoreItemPremium) obj;
        return this.price == jSONStoreItemPremium.price && this.promotion == jSONStoreItemPremium.promotion && Objects.equals(this.premiumBannerUrl, jSONStoreItemPremium.premiumBannerUrl) && Objects.equals(this.textColor, jSONStoreItemPremium.textColor);
    }

    public String getPremiumBannerUrl() {
        return this.premiumBannerUrl;
    }

    public int getPrice() {
        return this.price;
    }

    public int getPromotion() {
        return this.promotion;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        String str = this.premiumBannerUrl;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.price;
        int i3 = this.promotion;
        String str2 = this.textColor;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + i3) * 31) + i;
    }

    public void setPremiumBannerUrl(String str) {
        this.premiumBannerUrl = str;
    }

    public void setPrice(int i) {
        this.price = i;
    }

    public void setPromotion(int i) {
        this.promotion = i;
    }

    public void setTextColor(String str) {
        this.textColor = str;
    }
}
