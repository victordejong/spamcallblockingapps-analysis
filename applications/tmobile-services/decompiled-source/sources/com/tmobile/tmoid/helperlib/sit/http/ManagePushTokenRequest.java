package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManagePushTokenRequest.class */
public class ManagePushTokenRequest extends Request {
    public static final Parcelable.Creator<ManagePushTokenRequest> CREATOR = new Parcelable.Creator<ManagePushTokenRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManagePushTokenRequest.1
        /* renamed from: a */
        public ManagePushTokenRequest createFromParcel(Parcel parcel) {
            return new ManagePushTokenRequest(parcel);
        }

        /* renamed from: b */
        public ManagePushTokenRequest[] newArray(int i) {
            return new ManagePushTokenRequest[i];
        }
    };
    @SerializedName("msisdn")

    /* renamed from: i */
    private String f14815i;
    @SerializedName("service-name")

    /* renamed from: j */
    private String f14816j;
    @SerializedName("operation")

    /* renamed from: k */
    private int f14817k;
    @SerializedName("push-token")

    /* renamed from: l */
    private String f14818l;
    @SerializedName("client-id")

    /* renamed from: m */
    private String f14819m;

    protected ManagePushTokenRequest(Parcel parcel) {
        super(parcel);
        this.f14815i = parcel.readString();
        this.f14816j = parcel.readString();
        this.f14817k = parcel.readInt();
        this.f14818l = parcel.readString();
        this.f14819m = parcel.readString();
    }

    public ManagePushTokenRequest(String str, String str2, String str3, int i, String str4, String str5) {
        super("managePushToken", str);
        this.f14815i = str2;
        this.f14816j = str3;
        this.f14817k = i;
        this.f14818l = str4;
        this.f14819m = str5;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Request, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f14815i);
        parcel.writeString(this.f14816j);
        parcel.writeInt(this.f14817k);
        parcel.writeString(this.f14818l);
        parcel.writeString(this.f14819m);
    }
}
