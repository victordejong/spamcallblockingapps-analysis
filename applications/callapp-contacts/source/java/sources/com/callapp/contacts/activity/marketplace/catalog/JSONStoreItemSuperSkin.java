package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin.class */
public class JSONStoreItemSuperSkin extends JSONStoreItemCover {
    public static final Parcelable.Creator<JSONStoreItemSuperSkin> CREATOR = new Parcelable.Creator<JSONStoreItemSuperSkin>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin.1
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemSuperSkin createFromParcel(Parcel parcel) {
            return new JSONStoreItemSuperSkin(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemSuperSkin[] newArray(int i) {
            return new JSONStoreItemSuperSkin[i];
        }
    };
    @JsonProperty("cardUrl")
    private String[] cardUrl;
    @JsonProperty("daysOfFreeSubscription")
    private int daysOfFreeSubscription;
    @JsonProperty("gifFileUrls")
    private String[] gifFileUrls;
    @JsonProperty("gifUrls")
    private String[] gifUrls;
    @JsonProperty("listBackgroundUrls")
    private JSONStoreItemSuperSkinBackground[] listBackgroundUrls;
    @JsonProperty("storeFullPreviewImageUrls")
    private String[] storeFullPreviewImageUrls;
    @JsonProperty("storePartialPreviewImageUrls")
    private String[] storePartialPreviewImageUrls;
    @JsonProperty("topBarBackgroundUrls")
    private JSONStoreItemSuperSkinBackground[] topBarBackgroundUrls;
    @JsonProperty("wizardImageUrls")
    private String[] wizardImageUrls;

    public JSONStoreItemSuperSkin() {
    }

    protected JSONStoreItemSuperSkin(Parcel parcel) {
        super(parcel);
        this.gifUrls = parcel.createStringArray();
        this.gifFileUrls = parcel.createStringArray();
        this.storeFullPreviewImageUrls = parcel.createStringArray();
        this.storePartialPreviewImageUrls = parcel.createStringArray();
        this.listBackgroundUrls = (JSONStoreItemSuperSkinBackground[]) parcel.createTypedArray(JSONStoreItemSuperSkinBackground.CREATOR);
        this.topBarBackgroundUrls = (JSONStoreItemSuperSkinBackground[]) parcel.createTypedArray(JSONStoreItemSuperSkinBackground.CREATOR);
        this.wizardImageUrls = parcel.createStringArray();
        this.cardUrl = parcel.createStringArray();
        this.daysOfFreeSubscription = parcel.readInt();
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String[] getCardUrl() {
        return this.cardUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public int getDaysOfFreeSubscription() {
        return this.daysOfFreeSubscription;
    }

    public String[] getGifFileUrls() {
        return this.gifFileUrls;
    }

    public String[] getGifUrls() {
        return this.gifUrls;
    }

    public JSONStoreItemSuperSkinBackground[] getListBackgroundUrls() {
        return this.listBackgroundUrls;
    }

    public String[] getStoreFullPreviewImageUrls() {
        return this.storeFullPreviewImageUrls;
    }

    public String[] getStorePartialPreviewImageUrls() {
        return this.storePartialPreviewImageUrls;
    }

    public JSONStoreItemSuperSkinBackground[] getTopBarBackgroundUrls() {
        return this.topBarBackgroundUrls;
    }

    public String[] getWizardImageUrls() {
        return this.wizardImageUrls;
    }

    public void setCardUrl(String[] strArr) {
        this.cardUrl = strArr;
    }

    public void setDaysOfFreeSubscription(int i) {
        this.daysOfFreeSubscription = i;
    }

    public void setGifFileUrls(String[] strArr) {
        this.gifFileUrls = strArr;
    }

    public void setGifUrls(String[] strArr) {
        this.gifUrls = strArr;
    }

    public void setListBackgroundUrls(JSONStoreItemSuperSkinBackground[] jSONStoreItemSuperSkinBackgroundArr) {
        this.listBackgroundUrls = jSONStoreItemSuperSkinBackgroundArr;
    }

    public void setStoreFullPreviewImageUrls(String[] strArr) {
        this.storeFullPreviewImageUrls = strArr;
    }

    public void setStorePartialPreviewImageUrls(String[] strArr) {
        this.storePartialPreviewImageUrls = strArr;
    }

    public void setTopBarBackgroundUrls(JSONStoreItemSuperSkinBackground[] jSONStoreItemSuperSkinBackgroundArr) {
        this.topBarBackgroundUrls = jSONStoreItemSuperSkinBackgroundArr;
    }

    public void setWizardImageUrls(String[] strArr) {
        this.wizardImageUrls = strArr;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeStringArray(this.gifUrls);
        parcel.writeStringArray(this.gifFileUrls);
        parcel.writeStringArray(this.storeFullPreviewImageUrls);
        parcel.writeStringArray(this.storePartialPreviewImageUrls);
        parcel.writeTypedArray(this.listBackgroundUrls, i);
        parcel.writeTypedArray(this.topBarBackgroundUrls, i);
        parcel.writeStringArray(this.wizardImageUrls);
        parcel.writeStringArray(this.cardUrl);
        parcel.writeInt(this.daysOfFreeSubscription);
    }
}
