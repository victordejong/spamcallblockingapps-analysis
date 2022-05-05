package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/X3GppAuthenticationResponse.class */
public class X3GppAuthenticationResponse extends Response {
    public static final Parcelable.Creator<X3GppAuthenticationResponse> CREATOR = new Parcelable.Creator<X3GppAuthenticationResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.http.X3GppAuthenticationResponse.1
        /* renamed from: a */
        public X3GppAuthenticationResponse createFromParcel(Parcel parcel) {
            return new X3GppAuthenticationResponse(parcel);
        }

        /* renamed from: b */
        public X3GppAuthenticationResponse[] newArray(int i) {
            return new X3GppAuthenticationResponse[i];
        }
    };
    @SerializedName("aka-challenge")

    /* renamed from: h */
    private String f14852h;
    @SerializedName("aka-token")

    /* renamed from: i */
    private String f14853i;

    protected X3GppAuthenticationResponse(Parcel parcel) {
        super(parcel);
        this.f14852h = parcel.readString();
        this.f14853i = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response
    /* renamed from: e */
    protected SitErrorType mo4855e() {
        return SitErrorType.AUTHENTICATION;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response
    /* renamed from: f */
    public boolean mo4854f() {
        return super.mo4854f();
    }

    /* renamed from: g */
    public String m4853g() {
        return this.f14852h;
    }

    /* renamed from: h */
    public String m4852h() {
        return this.f14853i;
    }

    /* renamed from: i */
    public boolean m4851i() {
        return !TextUtils.isEmpty(this.f14852h) && m4870d() == 1003;
    }

    /* renamed from: j */
    public boolean m4850j(X3GppAuthenticationRequest x3GppAuthenticationRequest) {
        return m4871c() == x3GppAuthenticationRequest.m4874b();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f14852h);
        parcel.writeString(this.f14853i);
    }
}
