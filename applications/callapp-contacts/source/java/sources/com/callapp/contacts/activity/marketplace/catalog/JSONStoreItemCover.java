package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover.class */
public class JSONStoreItemCover extends JSONStoreItemAppAppearance {
    public static final Parcelable.Creator<JSONStoreItemCover> CREATOR = new Parcelable.Creator<JSONStoreItemCover>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover.1
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemCover createFromParcel(Parcel parcel) {
            return new JSONStoreItemCover(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemCover[] newArray(int i) {
            return new JSONStoreItemCover[i];
        }
    };
    @JsonProperty("imageUrls")
    private String[] imageUrls;
    @JsonProperty("overlayUrls")
    private String[] overlayUrls;

    public JSONStoreItemCover() {
    }

    public JSONStoreItemCover(Parcel parcel) {
        super(parcel);
        this.imageUrls = parcel.createStringArray();
        this.overlayUrls = parcel.createStringArray();
    }

    private String getUrlForItem(int i) {
        String[] imageUrls = getImageUrls();
        if (imageUrls == null || imageUrls.length <= i) {
            return null;
        }
        return imageUrls[i];
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public int getColor() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public String getImageUrl(int i) {
        return getUrlForItem(i);
    }

    public String[] getImageUrls() {
        return this.imageUrls;
    }

    public String[] getOverlayUrls() {
        return this.overlayUrls;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public String getUrl() {
        return getUrlForItem(0);
    }

    public void setImageUrls(String[] strArr) {
        this.imageUrls = strArr;
    }

    public void setOverlayUrls(String[] strArr) {
        this.overlayUrls = strArr;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeStringArray(this.imageUrls);
        parcel.writeStringArray(this.overlayUrls);
    }
}
