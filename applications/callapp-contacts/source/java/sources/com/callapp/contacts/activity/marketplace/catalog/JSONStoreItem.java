package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.model.BaseStoreItem;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
@JsonIgnoreProperties({"isPurchased", "isLoadedFromPlay", "priceWithCurrency", "priceCurrencyCode"})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItem.class */
public class JSONStoreItem extends BaseStoreItem implements Cloneable {
    public static final Parcelable.Creator<JSONStoreItem> CREATOR = new Parcelable.Creator<JSONStoreItem>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem.1
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItem createFromParcel(Parcel parcel) {
            return new JSONStoreItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final JSONStoreItem[] newArray(int i) {
            return new JSONStoreItem[i];
        }
    };
    protected String description;
    @JsonProperty("isCustomizable")
    boolean isCustomizable;
    @JsonProperty("isEnabled")
    boolean isEnabled;
    boolean isLoadedFromPlay;
    boolean isPurchased;
    boolean notValidForPromotion;
    protected float price;
    String priceCurrencyCode;
    String priceWithCurrency;
    @JsonProperty("salePercent")
    int promotionPercent;

    public JSONStoreItem() {
        this.isCustomizable = false;
        this.isLoadedFromPlay = false;
    }

    public JSONStoreItem(Parcel parcel) {
        super(parcel);
        this.isCustomizable = false;
        this.isLoadedFromPlay = false;
        this.price = parcel.readFloat();
        this.isEnabled = parcel.readByte() != 0;
        this.isCustomizable = parcel.readByte() != 0;
        this.description = parcel.readString();
        this.promotionPercent = parcel.readInt();
        this.isPurchased = parcel.readByte() != 0;
        this.priceWithCurrency = parcel.readString();
        this.isLoadedFromPlay = parcel.readByte() != 0;
        this.priceCurrencyCode = parcel.readString();
    }

    @Override // com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.callapp.contacts.model.BaseStoreItem
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        JSONStoreItem jSONStoreItem = (JSONStoreItem) obj;
        if (Float.compare(jSONStoreItem.price, this.price) != 0 || this.isEnabled != jSONStoreItem.isEnabled || this.promotionPercent != jSONStoreItem.promotionPercent || this.isPurchased != jSONStoreItem.isPurchased || this.isCustomizable != jSONStoreItem.isCustomizable || this.isLoadedFromPlay != jSONStoreItem.isLoadedFromPlay || this.notValidForPromotion != jSONStoreItem.notValidForPromotion || !Objects.equals(this.description, jSONStoreItem.description) || !Objects.equals(this.priceWithCurrency, jSONStoreItem.priceWithCurrency)) {
            return false;
        }
        return Objects.equals(this.priceCurrencyCode, jSONStoreItem.priceCurrencyCode);
    }

    public String getCustomUrl() {
        return null;
    }

    public String getDescription() {
        return this.description;
    }

    public float getPrice() {
        return this.price;
    }

    public String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public String getPriceWithCurrency() {
        return this.priceWithCurrency;
    }

    public int getPromotionPercent() {
        return this.promotionPercent;
    }

    @Override // com.callapp.contacts.model.BaseStoreItem
    public int hashCode() {
        int hashCode = super.hashCode();
        float f = this.price;
        int i = 0;
        int floatToIntBits = f != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f) : 0;
        boolean z = this.isEnabled;
        boolean z2 = this.isCustomizable;
        String str = this.description;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int i2 = this.promotionPercent;
        boolean z3 = this.isPurchased;
        String str2 = this.priceWithCurrency;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        boolean z4 = this.isLoadedFromPlay;
        String str3 = this.priceCurrencyCode;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + floatToIntBits) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + hashCode2) * 31) + i2) * 31) + (z3 ? 1 : 0)) * 31) + hashCode3) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + (this.notValidForPromotion ? 1 : 0);
    }

    public boolean isCustomizable() {
        return this.isCustomizable;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isLoadedFromPlay() {
        return this.isLoadedFromPlay;
    }

    public boolean isNotValidForPromotion() {
        return this.notValidForPromotion;
    }

    public boolean isPurchased() {
        return this.isPurchased;
    }

    public void setCurrencyCode(String str) {
        this.priceCurrencyCode = str;
    }

    public void setCustomizable(boolean z) {
        this.isCustomizable = z;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public void setLoadedFromPlay(boolean z) {
        this.isLoadedFromPlay = z;
    }

    public void setNotValidForPromotion(boolean z) {
        this.notValidForPromotion = z;
    }

    public void setPrice(float f) {
        this.price = f;
    }

    public void setPriceWithCurrency(String str) {
        this.priceWithCurrency = str;
    }

    public void setPromotionPercent(int i) {
        this.promotionPercent = i;
    }

    public void setPurchased(boolean z) {
        this.isPurchased = z;
    }

    @Override // com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.price);
        parcel.writeByte(this.isEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isCustomizable ? (byte) 1 : (byte) 0);
        parcel.writeString(this.description);
        parcel.writeInt(this.promotionPercent);
        parcel.writeByte(this.isPurchased ? (byte) 1 : (byte) 0);
        parcel.writeByte(isNotValidForPromotion() ? (byte) 1 : (byte) 0);
        parcel.writeString(this.priceWithCurrency);
        parcel.writeByte(this.isLoadedFromPlay ? (byte) 1 : (byte) 0);
        parcel.writeString(this.priceCurrencyCode);
    }
}
