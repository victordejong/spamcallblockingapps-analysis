package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.manager.preferences.Prefs;
import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku.class */
public class JSONStoreItemBundleFreeSku extends JSONStoreItemAppAppearance {
    public static final Parcelable.Creator<JSONStoreItemBundleFreeSku> CREATOR = new Parcelable.Creator<JSONStoreItemBundleFreeSku>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemBundleFreeSku.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemBundleFreeSku createFromParcel(Parcel parcel) {
            return new JSONStoreItemBundleFreeSku(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemBundleFreeSku[] newArray(int i) {
            return new JSONStoreItemBundleFreeSku[i];
        }
    };
    @JsonProperty("bundleVideoUrl")
    private String bundleVideoUrl;
    @JsonProperty("freeItemSku")
    private String freeItemSku;
    @JsonProperty("subtitle")
    private String subtitle;
    @JsonProperty("title")
    private String title;
    @JsonProperty("type")
    private int type;

    public JSONStoreItemBundleFreeSku() {
    }

    private JSONStoreItemBundleFreeSku(Parcel parcel) {
        super(parcel);
        this.freeItemSku = parcel.readString();
        this.bundleVideoUrl = parcel.readString();
        this.title = parcel.readString();
        this.subtitle = parcel.readString();
        this.type = parcel.readInt();
    }

    public JSONStoreItemBundleFreeSku(String str, String str2, String str3, String str4, int i) {
        this.freeItemSku = str;
        this.bundleVideoUrl = str2;
        this.title = str3;
        this.subtitle = str4;
        this.type = i;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getBundleVideoUrl() {
        return this.bundleVideoUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public int getColor() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public String getCustomUrl() {
        return Prefs.dP.get();
    }

    public String getFreeItemSku() {
        return this.freeItemSku;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public String getImageUrl(int i) {
        return this.bundleVideoUrl;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    @Override // com.callapp.contacts.model.BaseStoreItem
    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public String getUrl() {
        return this.bundleVideoUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public boolean needDefaultDialer() {
        return true;
    }

    public void setBundleVideoUrl(String str) {
        this.bundleVideoUrl = str;
    }

    public void setFreeItemSku(String str) {
        this.freeItemSku = str;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    @Override // com.callapp.contacts.model.BaseStoreItem
    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.freeItemSku);
        parcel.writeString(this.bundleVideoUrl);
        parcel.writeString(this.title);
        parcel.writeString(this.subtitle);
        parcel.writeInt(this.type);
    }
}
