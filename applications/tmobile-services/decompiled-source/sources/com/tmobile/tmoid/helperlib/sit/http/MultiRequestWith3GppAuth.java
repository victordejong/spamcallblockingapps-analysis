package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/MultiRequestWith3GppAuth.class */
public class MultiRequestWith3GppAuth extends MultiRequest {
    public static final Parcelable.Creator<MultiRequestWith3GppAuth> CREATOR = new Parcelable.Creator<MultiRequestWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.MultiRequestWith3GppAuth.1
        /* renamed from: a */
        public MultiRequestWith3GppAuth createFromParcel(Parcel parcel) {
            return new MultiRequestWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public MultiRequestWith3GppAuth[] newArray(int i) {
            return new MultiRequestWith3GppAuth[i];
        }
    };

    /* renamed from: g */
    private X3GppAuthenticationRequest f14830g;

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiRequestWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    public MultiRequestWith3GppAuth(String str, String str2, String str3) {
        X3GppAuthenticationRequest x3GppAuthenticationRequest = new X3GppAuthenticationRequest(str, str2, str3);
        this.f14830g = x3GppAuthenticationRequest;
        m4891b(x3GppAuthenticationRequest);
    }

    public MultiRequestWith3GppAuth(String str, String str2, String str3, String str4) {
        X3GppAuthenticationRequest x3GppAuthenticationRequest = new X3GppAuthenticationRequest(str, str2, str3, str4);
        this.f14830g = x3GppAuthenticationRequest;
        m4891b(x3GppAuthenticationRequest);
    }

    public MultiRequestWith3GppAuth(String str, String str2, String str3, String str4, int i) {
        X3GppAuthenticationRequest x3GppAuthenticationRequest = new X3GppAuthenticationRequest(str, str2, str3, str4);
        this.f14830g = x3GppAuthenticationRequest;
        x3GppAuthenticationRequest.m4873c(i);
        m4891b(this.f14830g);
    }

    /* renamed from: c */
    public X3GppAuthenticationRequest m4888c() {
        return this.f14830g;
    }
}
