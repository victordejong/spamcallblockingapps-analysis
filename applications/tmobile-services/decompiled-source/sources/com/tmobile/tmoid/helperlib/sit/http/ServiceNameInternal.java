package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ServiceNameInternal.class */
public class ServiceNameInternal extends BaseResponse {
    public static final Parcelable.Creator<ServiceNameInternal> CREATOR = new Parcelable.Creator<ServiceNameInternal>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ServiceNameInternal.1
        /* renamed from: a */
        public ServiceNameInternal createFromParcel(Parcel parcel) {
            return new ServiceNameInternal(parcel);
        }

        /* renamed from: b */
        public ServiceNameInternal[] newArray(int i) {
            return new ServiceNameInternal[i];
        }
    };
    @SerializedName("service-name")

    /* renamed from: f */
    private String f14843f;
    @SerializedName("client-id")

    /* renamed from: g */
    private String f14844g;
    @SerializedName("package-name")

    /* renamed from: h */
    private String f14845h;
    @SerializedName("appstore-url")

    /* renamed from: i */
    private String f14846i;

    public ServiceNameInternal(Parcel parcel) {
        this.f14843f = parcel.readString();
        this.f14844g = parcel.readString();
        this.f14845h = parcel.readString();
        this.f14846i = parcel.readString();
    }

    /* renamed from: b */
    public String m4864b() {
        return this.f14844g;
    }

    /* renamed from: c */
    public String m4863c() {
        return this.f14845h;
    }

    /* renamed from: d */
    public String m4862d() {
        return this.f14843f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14843f);
        parcel.writeString(this.f14844g);
        parcel.writeString(this.f14845h);
        parcel.writeString(this.f14846i);
    }
}
