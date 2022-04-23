package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/X3GppAuthenticationRequest.class */
public class X3GppAuthenticationRequest extends Request {
    public static final Parcelable.Creator<X3GppAuthenticationRequest> CREATOR = new Parcelable.Creator<X3GppAuthenticationRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.http.X3GppAuthenticationRequest.1
        /* renamed from: a */
        public X3GppAuthenticationRequest createFromParcel(Parcel parcel) {
            return new X3GppAuthenticationRequest(parcel);
        }

        /* renamed from: b */
        public X3GppAuthenticationRequest[] newArray(int i) {
            return new X3GppAuthenticationRequest[i];
        }
    };
    @SerializedName("device-type")

    /* renamed from: i */
    private int f14847i;
    @SerializedName("os-type")

    /* renamed from: j */
    private int f14848j;
    @SerializedName("imsi-eap")

    /* renamed from: k */
    private String f14849k;
    @SerializedName("aka-token")

    /* renamed from: l */
    private String f14850l;
    @SerializedName("aka-challenge-rsp")

    /* renamed from: m */
    private String f14851m;

    protected X3GppAuthenticationRequest(Parcel parcel) {
        super(parcel);
        this.f14847i = 0;
        this.f14848j = 0;
        this.f14847i = parcel.readInt();
        this.f14848j = parcel.readInt();
        this.f14849k = parcel.readString();
        this.f14850l = parcel.readString();
        this.f14851m = parcel.readString();
    }

    public X3GppAuthenticationRequest(String str, String str2, String str3) {
        super("3gppAuthentication", str);
        this.f14847i = 0;
        this.f14848j = 0;
        this.f14849k = str2;
        this.f14850l = str3;
    }

    public X3GppAuthenticationRequest(String str, String str2, String str3, String str4) {
        super("3gppAuthentication", str);
        this.f14847i = 0;
        this.f14848j = 0;
        this.f14849k = str2;
        this.f14850l = str3;
        this.f14851m = str4;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Request, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f14847i);
        parcel.writeInt(this.f14848j);
        parcel.writeString(this.f14849k);
        parcel.writeString(this.f14850l);
        parcel.writeString(this.f14851m);
    }
}
