package com.apptentive.android.sdk.util.image;

import android.os.Parcel;
import android.os.Parcelable;
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
    private static final String KEY_LOCAL = "local_path";
    private static final String KEY_MIME = "mimeType";
    private static final String KEY_ORIGINAL = "original";
    private static final String KEY_TIME = "time";
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
        this.originalPath = jSONObject.optString(KEY_ORIGINAL);
        this.localCachePath = jSONObject.optString(KEY_LOCAL);
        this.mimeType = jSONObject.optString(KEY_MIME);
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
            e.printStackTrace();
            return super.equals(obj);
        }
    }

    public JSONObject toJSON() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(KEY_ORIGINAL, this.originalPath);
                jSONObject.put(KEY_LOCAL, this.localCachePath);
                jSONObject.put(KEY_MIME, this.mimeType);
                jSONObject.put("time", this.time);
            } catch (JSONException e) {
            }
        } catch (JSONException e2) {
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(new String[]{this.originalPath, this.localCachePath, this.mimeType, Long.toString(this.time)});
    }
}
