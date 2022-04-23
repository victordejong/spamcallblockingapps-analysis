package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/GetMsisdnResponseWith3GppAuth.class */
public class GetMsisdnResponseWith3GppAuth extends MultiResponseWith3GppAuth {
    public static final Parcelable.Creator<GetMsisdnResponseWith3GppAuth> CREATOR = new Parcelable.Creator<GetMsisdnResponseWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.GetMsisdnResponseWith3GppAuth.1
        /* renamed from: a */
        public GetMsisdnResponseWith3GppAuth createFromParcel(Parcel parcel) {
            return new GetMsisdnResponseWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public GetMsisdnResponseWith3GppAuth[] newArray(int i) {
            return new GetMsisdnResponseWith3GppAuth[i];
        }
    };

    /* renamed from: i */
    private GetMsisdnResponse f14797i;

    public GetMsisdnResponseWith3GppAuth() {
    }

    public GetMsisdnResponseWith3GppAuth(Parcel parcel) {
        super(parcel);
        this.f14797i = (GetMsisdnResponse) m4884b(GetMsisdnResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth, com.tmobile.tmoid.helperlib.sit.http.MultiResponse
    /* renamed from: c */
    public void mo4881c(ArrayList<String> arrayList) {
        super.mo4881c(arrayList);
        this.f14797i = (GetMsisdnResponse) m4884b(GetMsisdnResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: d */
    public SitServerCommunicationErrorException mo4880d() {
        SitServerCommunicationErrorException d = super.mo4880d();
        SitServerCommunicationErrorException sitServerCommunicationErrorException = d;
        if (d == null) {
            GetMsisdnResponse getMsisdnResponse = this.f14797i;
            sitServerCommunicationErrorException = getMsisdnResponse == null ? new SitServerCommunicationErrorException(SitErrorType.GET_MSISDN_DATA, "null response") : !getMsisdnResponse.mo4854f() ? this.f14797i.m4872b() : new SitServerCommunicationErrorException(SitErrorType.OTHER, "unexpected error");
        }
        return sitServerCommunicationErrorException;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: f */
    public boolean mo4878f() {
        GetMsisdnResponse getMsisdnResponse;
        return super.mo4878f() && (getMsisdnResponse = this.f14797i) != null && getMsisdnResponse.mo4854f();
    }

    /* renamed from: h */
    public String m4958h() {
        GetMsisdnResponse getMsisdnResponse = this.f14797i;
        return getMsisdnResponse != null ? getMsisdnResponse.m4963g() : null;
    }

    /* renamed from: i */
    public String m4957i() {
        GetMsisdnResponse getMsisdnResponse = this.f14797i;
        return getMsisdnResponse != null ? getMsisdnResponse.m4962h() : null;
    }

    /* renamed from: j */
    public boolean m4956j(GetMsisdnRequestWith3GppAuth getMsisdnRequestWith3GppAuth) {
        return super.m4877g(getMsisdnRequestWith3GppAuth) && this.f14797i.m4961i(getMsisdnRequestWith3GppAuth.m4966d());
    }
}
