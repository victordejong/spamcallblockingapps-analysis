package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/GetMsisdnRequestWith3GppAuth.class */
public class GetMsisdnRequestWith3GppAuth extends MultiRequestWith3GppAuth {
    public static final Parcelable.Creator<GetMsisdnRequestWith3GppAuth> CREATOR = new Parcelable.Creator<GetMsisdnRequestWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.GetMsisdnRequestWith3GppAuth.1
        /* renamed from: a */
        public GetMsisdnRequestWith3GppAuth createFromParcel(Parcel parcel) {
            return new GetMsisdnRequestWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public GetMsisdnRequestWith3GppAuth[] newArray(int i) {
            return new GetMsisdnRequestWith3GppAuth[i];
        }
    };

    /* renamed from: h */
    private GetMsisdnRequest f14794h;

    protected GetMsisdnRequestWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    public GetMsisdnRequestWith3GppAuth(String str, String str2, String str3) {
        super(str, str2, str3);
        GetMsisdnRequest getMsisdnRequest = new GetMsisdnRequest(str);
        this.f14794h = getMsisdnRequest;
        m4891b(getMsisdnRequest);
    }

    /* renamed from: d */
    public GetMsisdnRequest m4966d() {
        return this.f14794h;
    }
}
