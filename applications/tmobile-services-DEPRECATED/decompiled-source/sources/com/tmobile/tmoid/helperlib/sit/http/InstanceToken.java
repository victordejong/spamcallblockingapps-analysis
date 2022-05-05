package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/InstanceToken.class */
public class InstanceToken extends BaseRequest {
    public static final Parcelable.Creator<InstanceToken> CREATOR = new Parcelable.Creator<InstanceToken>() { // from class: com.tmobile.tmoid.helperlib.sit.http.InstanceToken.1
        /* renamed from: a */
        public InstanceToken createFromParcel(Parcel parcel) {
            return new InstanceToken(parcel);
        }

        /* renamed from: b */
        public InstanceToken[] newArray(int i) {
            return new InstanceToken[i];
        }
    };
    @SerializedName("service-instance-token")

    /* renamed from: f */
    private String f14806f;
    @SerializedName("expiration-time")

    /* renamed from: g */
    private String f14807g;

    public InstanceToken(Parcel parcel) {
        this.f14806f = parcel.readString();
        this.f14807g = parcel.readString();
    }

    /* renamed from: b */
    public String m4942b() {
        return this.f14807g;
    }

    /* renamed from: c */
    public String m4941c() {
        return this.f14806f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14806f);
        parcel.writeString(this.f14807g);
    }
}
