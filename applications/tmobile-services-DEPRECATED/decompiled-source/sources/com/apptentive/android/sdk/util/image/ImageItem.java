package com.apptentive.android.sdk.util.image;

import android.os.Parcel;
import android.os.Parcelable;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ImageItem.class */
public class ImageItem implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.apptentive.android.sdk.util.image.ImageItem.1
        @Override // android.os.Parcelable.Creator
        public ImageItem createFromParcel(Parcel parcel) {
            return new ImageItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ImageItem[] newArray(int i) {
            return new ImageItem[i];
        }
    };
    public String localCachePath;
    public String mimeType;
    public String originalPath;
    public long time;

    private ImageItem(Parcel parcel) {
        String[] strArr = new String[4];
        parcel.readStringArray(strArr);
        this.originalPath = strArr[0];
        this.localCachePath = strArr[1];
        this.mimeType = strArr[2];
        this.time = Long.valueOf(strArr[3]).longValue();
    }

    public ImageItem(String str, String str2, String str3, long j) {
        this.originalPath = str;
        this.localCachePath = str2;
        this.time = j;
        this.mimeType = str3;
    }

    public ImageItem(JSONObject jSONObject) throws JSONException {
        this.originalPath = jSONObject.optString("original");
        this.localCachePath = jSONObject.optString("local_path");
        this.mimeType = jSONObject.optString("mimeType");
        this.time = jSONObject.optLong("time", 0L);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        try {
            return this.originalPath.equals(((ImageItem) obj).originalPath);
        } catch (ClassCastException e) {
            ErrorMetrics.logException(e);
            return super.equals(obj);
        }
    }

    public JSONObject toJSON() {
        JSONObject jSONObject;
        JSONException e;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("original", this.originalPath);
                jSONObject.put("local_path", this.localCachePath);
                jSONObject.put("mimeType", this.mimeType);
                jSONObject.put("time", this.time);
            } catch (JSONException e2) {
                e = e2;
                ErrorMetrics.logException(e);
                return jSONObject;
            }
        } catch (JSONException e3) {
            e = e3;
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(new String[]{this.originalPath, this.localCachePath, this.mimeType, Long.toString(this.time)});
    }
}
