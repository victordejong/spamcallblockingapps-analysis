package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import com.callapp.contacts.activity.marketplace.list.ImageLoaderData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance.class */
public abstract class JSONStoreItemAppAppearance extends JSONStoreItem implements ImageLoaderData {
    public JSONStoreItemAppAppearance() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONStoreItemAppAppearance(Parcel parcel) {
        super(parcel);
        this.price = parcel.readFloat();
        boolean z = true;
        this.isEnabled = parcel.readByte() != 0;
        this.description = parcel.readString();
        this.promotionPercent = parcel.readInt();
        this.isPurchased = parcel.readByte() != 0;
        this.priceWithCurrency = parcel.readString();
        this.isLoadedFromPlay = parcel.readByte() != 0;
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.isCustomizable = z;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        JSONStoreItemAppAppearance jSONStoreItemAppAppearance = (JSONStoreItemAppAppearance) obj;
        if (Float.compare(jSONStoreItemAppAppearance.price, this.price) == 0 && this.isEnabled == jSONStoreItemAppAppearance.isEnabled && this.isCustomizable == jSONStoreItemAppAppearance.isCustomizable && this.promotionPercent == jSONStoreItemAppAppearance.promotionPercent && this.isPurchased == jSONStoreItemAppAppearance.isPurchased && this.isLoadedFromPlay == jSONStoreItemAppAppearance.isLoadedFromPlay && Objects.equals(this.description, jSONStoreItemAppAppearance.description) && Objects.equals(this.priceWithCurrency, jSONStoreItemAppAppearance.priceWithCurrency)) {
            return Objects.equals(this.priceCurrencyCode, jSONStoreItemAppAppearance.priceCurrencyCode);
        }
        return false;
    }

    public int getDaysOfFreeSubscription() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public String getDescription() {
        return this.description;
    }

    public abstract String getImageUrl(int i);

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public float getPrice() {
        return this.price;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public String getPriceWithCurrency() {
        return this.priceWithCurrency;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public int getPromotionPercent() {
        return this.promotionPercent;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem
    public int hashCode() {
        int hashCode = super.hashCode();
        int i = 0;
        int floatToIntBits = this.price != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(this.price) : 0;
        boolean z = this.isEnabled;
        boolean z2 = this.isCustomizable;
        int hashCode2 = this.description != null ? this.description.hashCode() : 0;
        int i2 = this.promotionPercent;
        boolean z3 = this.isPurchased;
        int hashCode3 = this.priceWithCurrency != null ? this.priceWithCurrency.hashCode() : 0;
        boolean z4 = this.isLoadedFromPlay;
        if (this.priceCurrencyCode != null) {
            i = this.priceCurrencyCode.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + floatToIntBits) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + hashCode2) * 31) + i2) * 31) + (z3 ? 1 : 0)) * 31) + hashCode3) * 31) + (z4 ? 1 : 0)) * 31) + i;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public boolean isCustomizable() {
        return this.isCustomizable;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public boolean isEnabled() {
        return this.isEnabled;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public boolean isLoadedFromPlay() {
        return this.isLoadedFromPlay;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public boolean isPurchased() {
        return this.isPurchased;
    }

    public boolean needDefaultDialer() {
        return false;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setCurrencyCode(String str) {
        this.priceCurrencyCode = str;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setCustomizable(boolean z) {
        this.isCustomizable = z;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setDescription(String str) {
        this.description = str;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setLoadedFromPlay(boolean z) {
        this.isLoadedFromPlay = z;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setPrice(float f) {
        this.price = f;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setPriceWithCurrency(String str) {
        this.priceWithCurrency = str;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setPromotionPercent(int i) {
        this.promotionPercent = i;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public void setPurchased(boolean z) {
        this.isPurchased = z;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.price);
        parcel.writeByte(this.isEnabled ? (byte) 1 : (byte) 0);
        parcel.writeString(this.description);
        parcel.writeString(this.priceCurrencyCode);
        parcel.writeInt(this.promotionPercent);
        parcel.writeByte(this.isPurchased ? (byte) 1 : (byte) 0);
        parcel.writeString(this.priceWithCurrency);
        parcel.writeByte(this.isCustomizable ? (byte) 1 : (byte) 0);
    }
}
