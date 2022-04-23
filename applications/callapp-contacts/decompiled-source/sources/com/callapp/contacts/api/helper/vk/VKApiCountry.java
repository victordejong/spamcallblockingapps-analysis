package com.callapp.contacts.api.helper.vk;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKApiCountry.class */
public class VKApiCountry implements Parcelable {
    public static Parcelable.Creator<VKApiCountry> CREATOR = new Parcelable.Creator<VKApiCountry>() { // from class: com.callapp.contacts.api.helper.vk.VKApiCountry.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ VKApiCountry createFromParcel(Parcel parcel) {
            return new VKApiCountry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ VKApiCountry[] newArray(int i) {
            return new VKApiCountry[i];
        }
    };
    public int id;
    public String title;

    public VKApiCountry() {
    }

    public VKApiCountry(Parcel parcel) {
        this.id = parcel.readInt();
        this.title = parcel.readString();
    }

    public VKApiCountry(JSONObject jSONObject) throws JSONException {
        parse(jSONObject);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VKApiCountry parse(JSONObject jSONObject) {
        this.id = jSONObject.optInt("id");
        this.title = jSONObject.optString("title");
        return this;
    }

    public String toString() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.title);
    }
}
