package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.agent.utils.Utils;
import com.tmobile.tmoid.helperlib.sit.http.ServiceNameInternal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ManageConnectivityAPIResponse.class */
public class ManageConnectivityAPIResponse extends BaseSitAPIResponse {
    public static final Parcelable.Creator<ManageConnectivityAPIResponse> CREATOR = new Parcelable.Creator<ManageConnectivityAPIResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.ManageConnectivityAPIResponse.1
        /* renamed from: a */
        public ManageConnectivityAPIResponse createFromParcel(Parcel parcel) {
            return new ManageConnectivityAPIResponse(parcel);
        }

        /* renamed from: b */
        public ManageConnectivityAPIResponse[] newArray(int i) {
            return new ManageConnectivityAPIResponse[i];
        }
    };

    /* renamed from: g */
    private int f14873g;

    /* renamed from: h */
    private String[] f14874h;

    /* renamed from: i */
    private ServiceNameInternal[] f14875i;

    /* renamed from: j */
    private String f14876j;

    public ManageConnectivityAPIResponse() {
        this.f14874h = new String[0];
        this.f14875i = new ServiceNameInternal[0];
    }

    public ManageConnectivityAPIResponse(Parcel parcel) {
        this.f14874h = new String[0];
        this.f14875i = new ServiceNameInternal[0];
        m4800d(parcel);
    }

    /* renamed from: c */
    public ServiceNameInternal[] m4801c() {
        return this.f14875i;
    }

    /* renamed from: d */
    public void m4800d(Parcel parcel) {
        this.f14873g = parcel.readInt();
        this.f14874h = parcel.createStringArray();
        this.f14875i = (ServiceNameInternal[]) parcel.createTypedArray(ServiceNameInternal.CREATOR);
        this.f14876j = parcel.readString();
        this.f14861f = Utils.m5068i(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m4799e(String str) {
        this.f14876j = str;
    }

    /* renamed from: f */
    public void m4798f(String[] strArr) {
        this.f14874h = strArr;
    }

    /* renamed from: g */
    public void m4797g(int i) {
        this.f14873g = i;
    }

    /* renamed from: h */
    public void m4796h(ServiceNameInternal[] serviceNameInternalArr) {
        this.f14875i = serviceNameInternalArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f14873g);
        parcel.writeStringArray(this.f14874h);
        parcel.writeTypedArray(this.f14875i, i);
        parcel.writeString(this.f14876j);
        Utils.m5067j(this.f14861f, parcel);
    }
}
