package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem.class */
public class JSONStoreCallScreenThemeItem extends JSONStoreItemAppAppearance {
    public static final Parcelable.Creator<JSONStoreCallScreenThemeItem> CREATOR = new Parcelable.Creator<JSONStoreCallScreenThemeItem>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem.1
        @Override // android.os.Parcelable.Creator
        public final JSONStoreCallScreenThemeItem createFromParcel(Parcel parcel) {
            return new JSONStoreCallScreenThemeItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final JSONStoreCallScreenThemeItem[] newArray(int i) {
            return new JSONStoreCallScreenThemeItem[i];
        }
    };
    @JsonProperty("isLargeDownloadTheme")
    private boolean isLargeDownloadTheme;
    @JsonProperty("isVideo")
    private boolean isVideo;
    private String previewUrl;
    @JsonProperty("themeDownloadUrl")
    private String themeDownloadUrl;
    @JsonProperty("themeLargePreviewUrl")
    private String themeLargePreviewUrl;
    @JsonProperty("themeStoreListPreviewUrl")
    private String themeStoreListPreviewUrl;
    @JsonProperty("themeStorePreviewUrl")
    private String themeStorePreviewUrl;
    @JsonProperty("themeThumbnail")
    private String themeThumbnail;

    public JSONStoreCallScreenThemeItem() {
    }

    public JSONStoreCallScreenThemeItem(Parcel parcel) {
        super(parcel);
        this.isLargeDownloadTheme = parcel.readByte() != 0;
        this.isVideo = parcel.readByte() != 0;
        this.themeDownloadUrl = parcel.readString();
        this.themeStorePreviewUrl = parcel.readString();
        this.themeStoreListPreviewUrl = parcel.readString();
        this.themeLargePreviewUrl = parcel.readString();
        this.themeThumbnail = parcel.readString();
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JSONStoreCallScreenThemeItem) || !super.equals(obj)) {
            return false;
        }
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) obj;
        if (this.isLargeDownloadTheme != jSONStoreCallScreenThemeItem.isLargeDownloadTheme || this.isVideo != jSONStoreCallScreenThemeItem.isVideo || !this.themeDownloadUrl.equals(jSONStoreCallScreenThemeItem.themeDownloadUrl) || !this.themeStoreListPreviewUrl.equals(jSONStoreCallScreenThemeItem.themeStoreListPreviewUrl) || !this.themeLargePreviewUrl.equals(jSONStoreCallScreenThemeItem.themeLargePreviewUrl) || !this.themeThumbnail.equals(jSONStoreCallScreenThemeItem.themeThumbnail)) {
            return false;
        }
        return this.themeStorePreviewUrl.equals(jSONStoreCallScreenThemeItem.themeStorePreviewUrl);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public int getColor() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public String getCustomUrl() {
        return null;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public String getImageUrl(int i) {
        return this.themeThumbnail;
    }

    public String getThemeDownloadUrl() {
        return this.themeDownloadUrl;
    }

    public String getThemeLargePreviewUrl() {
        return this.themeLargePreviewUrl;
    }

    public String getThemeStoreListPreviewUrl() {
        return this.themeStoreListPreviewUrl;
    }

    public String getThemeStorePreviewUrl() {
        return this.themeStorePreviewUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public String getUrl() {
        return this.previewUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem
    public int hashCode() {
        return (((((((((((((super.hashCode() * 31) + (this.isLargeDownloadTheme ? 1 : 0)) * 31) + (this.isVideo ? 1 : 0)) * 31) + this.themeDownloadUrl.hashCode()) * 31) + this.themeStorePreviewUrl.hashCode()) * 31) + this.themeStoreListPreviewUrl.hashCode()) * 31) + this.themeLargePreviewUrl.hashCode()) * 31) + this.themeThumbnail.hashCode();
    }

    public boolean isLargeDownloadTheme() {
        return this.isLargeDownloadTheme;
    }

    public boolean isVideo() {
        return this.isVideo;
    }

    public void setThemeLargePreviewUrl(String str) {
        this.themeLargePreviewUrl = str;
    }

    public void setUrl(String str) {
        this.previewUrl = str;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.isLargeDownloadTheme ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isVideo ? (byte) 1 : (byte) 0);
        parcel.writeString(this.themeDownloadUrl);
        parcel.writeString(this.themeStorePreviewUrl);
        parcel.writeString(this.themeStoreListPreviewUrl);
        parcel.writeString(this.themeLargePreviewUrl);
        parcel.writeString(this.themeThumbnail);
    }
}
