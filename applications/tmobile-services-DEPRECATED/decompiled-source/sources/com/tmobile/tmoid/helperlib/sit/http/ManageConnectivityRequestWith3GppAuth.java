package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageConnectivityRequestWith3GppAuth.class */
public class ManageConnectivityRequestWith3GppAuth extends MultiRequestWith3GppAuth {
    public static final Parcelable.Creator<ManageConnectivityRequestWith3GppAuth> CREATOR = new Parcelable.Creator<ManageConnectivityRequestWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageConnectivityRequestWith3GppAuth.1
        /* renamed from: a */
        public ManageConnectivityRequestWith3GppAuth createFromParcel(Parcel parcel) {
            return new ManageConnectivityRequestWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public ManageConnectivityRequestWith3GppAuth[] newArray(int i) {
            return new ManageConnectivityRequestWith3GppAuth[i];
        }
    };

    /* renamed from: h */
    private ManageConnectivityRequest f14810h;

    protected ManageConnectivityRequestWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    public ManageConnectivityRequestWith3GppAuth(String str, int i, String str2, String str3, String str4) {
        super(str, str3, str4);
        ManageConnectivityRequest manageConnectivityRequest = new ManageConnectivityRequest(str, i, str2);
        this.f14810h = manageConnectivityRequest;
        m4891b(manageConnectivityRequest);
    }

    /* renamed from: d */
    public ManageConnectivityRequest m4936d() {
        return this.f14810h;
    }
}
