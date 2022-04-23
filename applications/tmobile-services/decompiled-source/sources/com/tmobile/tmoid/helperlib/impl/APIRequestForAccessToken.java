package com.tmobile.tmoid.helperlib.impl;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/APIRequestForAccessToken.class */
public class APIRequestForAccessToken extends APIRequest implements Parcelable {
    public static final Parcelable.Creator<APIRequestForAccessToken> CREATOR = new Parcelable.Creator<APIRequestForAccessToken>() { // from class: com.tmobile.tmoid.helperlib.impl.APIRequestForAccessToken.1
        /* renamed from: a */
        public APIRequestForAccessToken createFromParcel(Parcel parcel) {
            return new APIRequestForAccessToken(parcel);
        }

        /* renamed from: b */
        public APIRequestForAccessToken[] newArray(int i) {
            return new APIRequestForAccessToken[i];
        }
    };

    /* renamed from: i */
    private String f14742i;

    /* renamed from: j */
    private String f14743j;

    /* renamed from: k */
    private String f14744k;

    public APIRequestForAccessToken(Intent intent) {
        this.f14744k = "";
        this.f14739f = intent.getStringExtra("request_id");
        this.f14740g = intent.getStringExtra("action");
        this.f14741h = intent.getStringExtra("client_id");
        this.f14742i = intent.getStringExtra("client_secret");
        this.f14743j = intent.getStringExtra("authorization_code");
        this.f14744k = intent.getStringExtra("package_name");
    }

    private APIRequestForAccessToken(Parcel parcel) {
        this.f14744k = "";
        m5042h(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m5045e() {
        return this.f14743j;
    }

    /* renamed from: f */
    public String m5044f() {
        return this.f14742i;
    }

    /* renamed from: g */
    public String m5043g() {
        return this.f14744k;
    }

    /* renamed from: h */
    public void m5042h(Parcel parcel) {
        this.f14741h = parcel.readString();
        this.f14742i = parcel.readString();
        this.f14743j = parcel.readString();
        this.f14739f = parcel.readString();
        this.f14740g = parcel.readString();
    }

    /* renamed from: i */
    public void m5041i(String str) {
        this.f14742i = str;
    }

    /* renamed from: j */
    public void m5040j(String str) {
        this.f14744k = str;
    }

    @Override // com.tmobile.tmoid.helperlib.impl.APIRequest
    public String toString() {
        return "request{id: " + this.f14739f + ", action:" + this.f14740g + ", client_id:" + this.f14741h + ", package_name:" + this.f14744k + ", authorization_code:" + this.f14743j + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14741h);
        parcel.writeString(this.f14742i);
        parcel.writeString(this.f14743j);
        parcel.writeString(this.f14739f);
        parcel.writeString(this.f14740g);
    }
}
