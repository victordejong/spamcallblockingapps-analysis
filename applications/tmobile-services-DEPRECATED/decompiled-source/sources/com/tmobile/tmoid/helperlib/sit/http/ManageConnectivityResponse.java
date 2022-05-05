package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageConnectivityResponse.class */
public class ManageConnectivityResponse extends Response {
    public static final Parcelable.Creator<ManageConnectivityResponse> CREATOR = new Parcelable.Creator<ManageConnectivityResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageConnectivityResponse.1
        /* renamed from: a */
        public ManageConnectivityResponse createFromParcel(Parcel parcel) {
            return new ManageConnectivityResponse(parcel);
        }

        /* renamed from: b */
        public ManageConnectivityResponse[] newArray(int i) {
            return new ManageConnectivityResponse[i];
        }
    };
    @SerializedName("epdg-addresses")

    /* renamed from: h */
    private String[] f14811h;
    @SerializedName("service-names")

    /* renamed from: i */
    private ServiceNameInternal[] f14812i;
    @SerializedName("device-config")

    /* renamed from: j */
    private String f14813j;

    protected ManageConnectivityResponse(Parcel parcel) {
        super(parcel);
        this.f14811h = parcel.createStringArray();
        this.f14812i = (ServiceNameInternal[]) parcel.createTypedArray(ServiceNameInternal.CREATOR);
        this.f14813j = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response
    /* renamed from: e */
    protected SitErrorType mo4855e() {
        return SitErrorType.MANAGE_CONNECTIVITY_OPERATION;
    }

    /* renamed from: g */
    public String m4933g() {
        return this.f14813j;
    }

    /* renamed from: h */
    public String[] m4932h() {
        return this.f14811h;
    }

    /* renamed from: i */
    public ServiceNameInternal[] m4931i() {
        return this.f14812i;
    }

    /* renamed from: j */
    public boolean m4930j(ManageConnectivityRequest manageConnectivityRequest) {
        return m4871c() == manageConnectivityRequest.m4874b();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeStringArray(this.f14811h);
        parcel.writeTypedArray(this.f14812i, i);
        parcel.writeString(this.f14813j);
    }
}
