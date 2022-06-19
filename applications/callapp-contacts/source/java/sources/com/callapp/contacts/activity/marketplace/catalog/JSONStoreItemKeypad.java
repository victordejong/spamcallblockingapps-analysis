package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.manager.preferences.Prefs;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.bidmachine.utils.IabUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad.class */
public class JSONStoreItemKeypad extends JSONStoreItemAppAppearance {
    public static final Parcelable.Creator<JSONStoreItemKeypad> CREATOR = new Parcelable.Creator<JSONStoreItemKeypad>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad.1
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemKeypad createFromParcel(Parcel parcel) {
            return new JSONStoreItemKeypad(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemKeypad[] newArray(int i) {
            return new JSONStoreItemKeypad[i];
        }
    };
    @JsonProperty(IabUtils.KEY_IMAGE_URL)
    private String imageUrl;

    public JSONStoreItemKeypad() {
    }

    protected JSONStoreItemKeypad(Parcel parcel) {
        super(parcel);
        this.imageUrl = parcel.readString();
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public int getColor() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem
    public String getCustomUrl() {
        return Prefs.f26398dP.get();
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public String getImageUrl(int i) {
        return this.imageUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public String getUrl() {
        return this.imageUrl;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public boolean needDefaultDialer() {
        return true;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.imageUrl);
    }
}
