package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.agent.utils.Utils;
import com.tmobile.tmoid.helperlib.sit.http.ServiceNameInternal;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/DeprecatedManageConnectivityAPIResponse.class */
public class DeprecatedManageConnectivityAPIResponse extends BaseSitAPIResponse {
    public static final Parcelable.Creator<DeprecatedManageConnectivityAPIResponse> CREATOR = new Parcelable.Creator<DeprecatedManageConnectivityAPIResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.DeprecatedManageConnectivityAPIResponse.1
        /* renamed from: a */
        public DeprecatedManageConnectivityAPIResponse createFromParcel(Parcel parcel) {
            return new DeprecatedManageConnectivityAPIResponse(parcel);
        }

        /* renamed from: b */
        public DeprecatedManageConnectivityAPIResponse[] newArray(int i) {
            return new DeprecatedManageConnectivityAPIResponse[i];
        }
    };

    /* renamed from: g */
    private int f14865g;

    /* renamed from: h */
    private String[] f14866h;

    /* renamed from: i */
    private ServiceNameInternal[] f14867i;

    /* renamed from: j */
    private String f14868j;

    public DeprecatedManageConnectivityAPIResponse() {
        this.f14866h = new String[0];
        this.f14867i = new ServiceNameInternal[0];
    }

    public DeprecatedManageConnectivityAPIResponse(Parcel parcel) {
        this.f14866h = new String[0];
        this.f14867i = new ServiceNameInternal[0];
        m4813c(parcel);
    }

    /* renamed from: c */
    public void m4813c(Parcel parcel) {
        this.f14865g = parcel.readInt();
        this.f14866h = parcel.createStringArray();
        this.f14867i = (ServiceNameInternal[]) parcel.createTypedArray(ServiceNameInternal.CREATOR);
        this.f14868j = parcel.readString();
        this.f14861f = Utils.m5068i(parcel);
    }

    /* renamed from: d */
    public void m4812d(String str) {
        this.f14868j = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m4811e(String[] strArr) {
        this.f14866h = strArr;
    }

    /* renamed from: f */
    public void m4810f(int i) {
        this.f14865g = i;
    }

    /* renamed from: g */
    public void m4809g(ServiceNameInternal[] serviceNameInternalArr) {
        this.f14867i = serviceNameInternalArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f14865g);
        parcel.writeStringArray(this.f14866h);
        parcel.writeTypedArray(this.f14867i, i);
        parcel.writeString(this.f14868j);
        Utils.m5067j(this.f14861f, parcel);
    }
}
