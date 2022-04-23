package com.callapp.contacts.activity.marketplace.catalog;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground.class */
public class JSONStoreItemSuperSkinBackground implements Parcelable {
    public static final Parcelable.Creator<JSONStoreItemSuperSkinBackground> CREATOR = new Parcelable.Creator<JSONStoreItemSuperSkinBackground>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkinBackground.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemSuperSkinBackground createFromParcel(Parcel parcel) {
            return new JSONStoreItemSuperSkinBackground(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemSuperSkinBackground[] newArray(int i) {
            return new JSONStoreItemSuperSkinBackground[i];
        }
    };
    private String darkBackground;
    private String lightBackground;

    public JSONStoreItemSuperSkinBackground() {
    }

    protected JSONStoreItemSuperSkinBackground(Parcel parcel) {
        this.darkBackground = parcel.readString();
        this.lightBackground = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDarkBackground() {
        return this.darkBackground;
    }

    public String getLightBackground() {
        return this.lightBackground;
    }

    public void setDarkBackground(String str) {
        this.darkBackground = str;
    }

    public void setLightBackground(String str) {
        this.lightBackground = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getDarkBackground());
        parcel.writeString(getLightBackground());
    }
}
