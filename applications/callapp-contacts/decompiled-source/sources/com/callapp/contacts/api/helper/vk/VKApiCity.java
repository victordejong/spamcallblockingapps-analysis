package com.callapp.contacts.api.helper.vk;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKApiCity.class */
public class VKApiCity implements Parcelable {
    public static Parcelable.Creator<VKApiCity> CREATOR = new Parcelable.Creator<VKApiCity>() { // from class: com.callapp.contacts.api.helper.vk.VKApiCity.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ VKApiCity createFromParcel(Parcel parcel) {
            return new VKApiCity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ VKApiCity[] newArray(int i) {
            return new VKApiCity[i];
        }
    };
    public int id;
    public String title;

    public VKApiCity() {
    }

    public VKApiCity(Parcel parcel) {
        this.id = parcel.readInt();
        this.title = parcel.readString();
    }

    public VKApiCity(JSONObject jSONObject) {
        parse(jSONObject);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VKApiCity parse(JSONObject jSONObject) {
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
