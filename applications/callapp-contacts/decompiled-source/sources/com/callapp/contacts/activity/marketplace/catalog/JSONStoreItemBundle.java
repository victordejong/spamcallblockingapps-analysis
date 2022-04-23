package com.callapp.contacts.activity.marketplace.catalog;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleData;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.bidmachine.utils.IabUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle.class */
public class JSONStoreItemBundle extends JSONStoreCallScreenThemeItem {
    public static final Parcelable.Creator<JSONStoreItemBundle> CREATOR = new Parcelable.Creator<JSONStoreItemBundle>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemBundle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemBundle createFromParcel(Parcel parcel) {
            return new JSONStoreItemBundle(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemBundle[] newArray(int i) {
            return new JSONStoreItemBundle[i];
        }
    };
    @JsonProperty("action")
    private String action;
    @JsonProperty("color")
    private String color;
    @JsonProperty("freeSkus")
    private VideoRingtoneBundleData[] freeSkus;
    @JsonProperty(IabUtils.KEY_IMAGE_URL)
    private String imageUrl;
    @JsonProperty("label")
    private String label;
    @JsonProperty("pageLayout")
    private int pageLayout;

    public JSONStoreItemBundle() {
    }

    protected JSONStoreItemBundle(Parcel parcel) {
        super(parcel);
        this.imageUrl = parcel.readString();
        this.pageLayout = parcel.readInt();
        this.freeSkus = (VideoRingtoneBundleData[]) parcel.readParcelableArray(VideoRingtoneBundleData.class.getClassLoader());
        this.color = parcel.readString();
    }

    public JSONStoreItemBundle(String str, int i, String str2, VideoRingtoneBundleData[] videoRingtoneBundleDataArr, String str3, String str4, String str5) {
        this.imageUrl = str;
        this.pageLayout = i;
        this.freeSkus = videoRingtoneBundleDataArr;
        this.color = str3;
        this.action = str4;
        this.label = str5;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAction() {
        return this.action;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem, com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public int getColor() {
        return StringUtils.b((CharSequence) this.color) ? Color.parseColor(this.color) : super.getColor();
    }

    public VideoRingtoneBundleData[] getFreeSkus() {
        return this.freeSkus;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public String getImageUrl(int i) {
        return this.imageUrl;
    }

    public String getLabel() {
        return this.label;
    }

    public int getPageLayout() {
        return this.pageLayout;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem, com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public String getUrl() {
        return this.imageUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public boolean needDefaultDialer() {
        return true;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setFreeSkus(VideoRingtoneBundleData[] videoRingtoneBundleDataArr) {
        this.freeSkus = videoRingtoneBundleDataArr;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPageLayout(int i) {
        this.pageLayout = i;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.imageUrl);
        parcel.writeInt(this.pageLayout);
        parcel.writeString(this.color);
        parcel.writeParcelableArray(this.freeSkus, 0);
    }
}
