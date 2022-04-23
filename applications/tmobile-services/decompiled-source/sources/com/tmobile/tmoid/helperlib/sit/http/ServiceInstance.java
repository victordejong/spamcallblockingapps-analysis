package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ServiceInstance.class */
public class ServiceInstance extends BaseRequest {
    public static final Parcelable.Creator<ServiceInstance> CREATOR = new Parcelable.Creator<ServiceInstance>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ServiceInstance.1
        /* renamed from: a */
        public ServiceInstance createFromParcel(Parcel parcel) {
            return new ServiceInstance(parcel);
        }

        /* renamed from: b */
        public ServiceInstance[] newArray(int i) {
            return new ServiceInstance[i];
        }
    };
    @SerializedName("service-name")

    /* renamed from: f */
    private String f14839f;
    @SerializedName("service-instance-id")

    /* renamed from: g */
    private String f14840g;

    public ServiceInstance(Parcel parcel) {
        this.f14839f = parcel.readString();
        this.f14840g = parcel.readString();
    }

    public ServiceInstance(String str, String str2) {
        this.f14839f = str;
        this.f14840g = str2;
    }

    /* renamed from: b */
    public String m4869b() {
        return this.f14840g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14839f);
        parcel.writeString(this.f14840g);
    }
}
