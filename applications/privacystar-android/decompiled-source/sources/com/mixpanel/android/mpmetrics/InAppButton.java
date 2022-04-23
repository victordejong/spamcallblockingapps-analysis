package com.mixpanel.android.mpmetrics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/InAppButton.class */
public class InAppButton implements Parcelable {
    public static final Parcelable.Creator<InAppButton> CREATOR = new Parcelable.Creator<InAppButton>() { // from class: com.mixpanel.android.mpmetrics.InAppButton.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InAppButton createFromParcel(Parcel parcel) {
            return new InAppButton(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InAppButton[] newArray(int i) {
            return new InAppButton[i];
        }
    };
    private static final String LOGTAG = "MixpanelAPI.InAppButton";
    private int mBackgroundColor;
    private int mBorderColor;
    private String mCtaUrl;
    private JSONObject mDescription;
    private String mText;
    private int mTextColor;

    public InAppButton(Parcel parcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject = new JSONObject(parcel.readString());
        } catch (JSONException e) {
            Log.e(LOGTAG, "Error reading JSON when creating InAppButton from Parcel");
        }
        this.mDescription = jSONObject;
        this.mText = parcel.readString();
        this.mTextColor = parcel.readInt();
        this.mBackgroundColor = parcel.readInt();
        this.mBorderColor = parcel.readInt();
        this.mCtaUrl = parcel.readString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InAppButton(JSONObject jSONObject) throws JSONException {
        this.mDescription = jSONObject;
        this.mText = jSONObject.getString("text");
        this.mTextColor = jSONObject.getInt("text_color");
        this.mBackgroundColor = jSONObject.getInt("bg_color");
        this.mBorderColor = jSONObject.getInt("border_color");
        this.mCtaUrl = jSONObject.getString("cta_url");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public String getCtaUrl() {
        return this.mCtaUrl;
    }

    public String getText() {
        return this.mText;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public String toString() {
        return this.mDescription.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mDescription.toString());
        parcel.writeString(this.mText);
        parcel.writeInt(this.mTextColor);
        parcel.writeInt(this.mBackgroundColor);
        parcel.writeInt(this.mBorderColor);
        parcel.writeString(this.mCtaUrl);
    }
}
