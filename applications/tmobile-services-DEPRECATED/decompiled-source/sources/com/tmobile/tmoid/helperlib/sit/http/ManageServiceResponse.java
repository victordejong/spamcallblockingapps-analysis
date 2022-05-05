package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageServiceResponse.class */
public class ManageServiceResponse extends Response {
    public static final Parcelable.Creator<ManageServiceResponse> CREATOR = new Parcelable.Creator<ManageServiceResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageServiceResponse.1
        /* renamed from: a */
        public ManageServiceResponse createFromParcel(Parcel parcel) {
            return new ManageServiceResponse(parcel);
        }

        /* renamed from: b */
        public ManageServiceResponse[] newArray(int i) {
            return new ManageServiceResponse[i];
        }
    };
    @SerializedName("service-instance")

    /* renamed from: h */
    private ServiceInstance f14826h;
    @SerializedName("instance-token")

    /* renamed from: i */
    private InstanceToken f14827i;

    protected ManageServiceResponse(Parcel parcel) {
        super(parcel);
        this.f14826h = (ServiceInstance) parcel.readParcelable(ServiceInstance.class.getClassLoader());
        this.f14827i = (InstanceToken) parcel.readParcelable(InstanceToken.class.getClassLoader());
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response
    /* renamed from: e */
    protected SitErrorType mo4855e() {
        return SitErrorType.MANAGE_SERVICE_OPERATION;
    }

    /* renamed from: g */
    public String m4904g() {
        InstanceToken instanceToken = this.f14827i;
        return instanceToken != null ? instanceToken.m4942b() : null;
    }

    /* renamed from: h */
    public String m4903h() {
        InstanceToken instanceToken = this.f14827i;
        return instanceToken != null ? instanceToken.m4941c() : null;
    }

    /* renamed from: i */
    public String m4902i() {
        ServiceInstance serviceInstance = this.f14826h;
        return serviceInstance != null ? serviceInstance.m4869b() : null;
    }

    /* renamed from: j */
    public boolean m4901j(ManageServiceRequest manageServiceRequest) {
        return m4871c() == manageServiceRequest.m4874b();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f14826h, i);
        parcel.writeParcelable(this.f14827i, i);
    }
}
