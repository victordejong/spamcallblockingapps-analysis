package com.callapp.contacts.activity.marketplace.catalog;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme.class */
public class JSONStoreItemTheme extends JSONStoreItemAppAppearance {
    public static final Parcelable.Creator<JSONStoreItemTheme> CREATOR = new Parcelable.Creator<JSONStoreItemTheme>() { // from class: com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemTheme createFromParcel(Parcel parcel) {
            return new JSONStoreItemTheme(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final JSONStoreItemTheme[] newArray(int i) {
            return new JSONStoreItemTheme[i];
        }
    };
    public static final String KEY_DARK_PRIMARY_COLOR = "darkColorPrimary";
    public static final String KEY_DARK_PRIMARY_COLOR_DARK = "darkColorPrimaryDark";
    public static final String KEY_DARK_PRIMARY_COLOR_LIGHT = "darkColorPrimaryLight";
    public static final String KEY_OVERLAY_COLOR_DARK = "overlayTintColorDark";
    public static final String KEY_OVERLAY_COLOR_LIGHT = "overlayTintColorLight";
    public static final String KEY_PRIMARY_COLOR = "colorPrimary";
    public static final String KEY_PRIMARY_COLOR_DARK = "colorPrimaryDark";
    public static final String KEY_PRIMARY_COLOR_LIGHT = "colorPrimaryLight";
    @JsonProperty("color")
    private String color;
    @JsonProperty("colorMap")
    private Map<String, String> colorMap;
    @JsonProperty("darkColor")
    private String darkColor;

    public JSONStoreItemTheme() {
        this.colorMap = new HashMap();
    }

    protected JSONStoreItemTheme(Parcel parcel) {
        super(parcel);
        this.colorMap = new HashMap();
        this.color = parcel.readString();
        this.darkColor = parcel.readString();
        int readInt = parcel.readInt();
        this.colorMap = new HashMap(readInt);
        for (int i = 0; i < readInt; i++) {
            this.colorMap.put(parcel.readString(), parcel.readString());
        }
    }

    private String getDisplayColor() {
        return this.color;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public int getColor() {
        return Color.parseColor(((ThemeState) Prefs.di.get()).isLightTheme() ? this.color : this.darkColor);
    }

    public Map<String, String> getColorMap() {
        return this.colorMap;
    }

    public Drawable getDrawable() {
        return new ColorDrawable(Color.parseColor(getDisplayColor()));
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance
    public String getImageUrl(int i) {
        return null;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.ImageLoaderData
    public String getUrl() {
        return null;
    }

    public boolean isMainDefaultTheme() {
        return StringUtils.e(getSku(), "default_1");
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem, com.callapp.contacts.model.BaseStoreItem, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.color);
        parcel.writeString(this.darkColor);
        parcel.writeInt(this.colorMap.size());
        for (Map.Entry<String, String> entry : this.colorMap.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }
}
