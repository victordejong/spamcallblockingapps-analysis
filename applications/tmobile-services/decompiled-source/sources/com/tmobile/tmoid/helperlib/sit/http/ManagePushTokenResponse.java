package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManagePushTokenResponse.class */
public class ManagePushTokenResponse extends Response {
    public static final Parcelable.Creator<ManagePushTokenResponse> CREATOR = new Parcelable.Creator<ManagePushTokenResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManagePushTokenResponse.1
        /* renamed from: a */
        public ManagePushTokenResponse createFromParcel(Parcel parcel) {
            return new ManagePushTokenResponse(parcel);
        }

        /* renamed from: b */
        public ManagePushTokenResponse[] newArray(int i) {
            return new ManagePushTokenResponse[i];
        }
    };

    protected ManagePushTokenResponse(Parcel parcel) {
        super(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response
    /* renamed from: e */
    protected SitErrorType mo4855e() {
        return SitErrorType.MANAGE_PUSH_TOKEN_OPERATION;
    }

    /* renamed from: g */
    public boolean m4915g(ManagePushTokenRequest managePushTokenRequest) {
        return m4871c() == managePushTokenRequest.m4874b();
    }
}
