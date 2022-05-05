package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManagePushTokenRequestWith3GppAuth.class */
public class ManagePushTokenRequestWith3GppAuth extends MultiRequestWith3GppAuth {
    public static final Parcelable.Creator<ManagePushTokenRequestWith3GppAuth> CREATOR = new Parcelable.Creator<ManagePushTokenRequestWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManagePushTokenRequestWith3GppAuth.1
        /* renamed from: a */
        public ManagePushTokenRequestWith3GppAuth createFromParcel(Parcel parcel) {
            return new ManagePushTokenRequestWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public ManagePushTokenRequestWith3GppAuth[] newArray(int i) {
            return new ManagePushTokenRequestWith3GppAuth[i];
        }
    };

    /* renamed from: h */
    private ManagePushTokenRequest f14820h;

    protected ManagePushTokenRequestWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    public ManagePushTokenRequestWith3GppAuth(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7) {
        super(str, str5, str7);
        ManagePushTokenRequest managePushTokenRequest = new ManagePushTokenRequest(str, str2, str3, i, str4, str6);
        this.f14820h = managePushTokenRequest;
        m4891b(managePushTokenRequest);
    }

    /* renamed from: d */
    public ManagePushTokenRequest m4918d() {
        return this.f14820h;
    }
}
