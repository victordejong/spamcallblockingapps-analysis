package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.agent.utils.Utils;
import com.tmobile.tmoid.helperlib.sit.SessionInstanceToken;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitAPIResponse.class */
public class SitAPIResponse extends BaseSitAPIResponse {
    public static final Parcelable.Creator<SitAPIResponse> CREATOR = new Parcelable.Creator<SitAPIResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.SitAPIResponse.1
        /* renamed from: a */
        public SitAPIResponse createFromParcel(Parcel parcel) {
            return new SitAPIResponse(parcel);
        }

        /* renamed from: b */
        public SitAPIResponse[] newArray(int i) {
            return new SitAPIResponse[i];
        }
    };

    /* renamed from: g */
    String f14892g;

    /* renamed from: h */
    String f14893h;

    public SitAPIResponse() {
    }

    public SitAPIResponse(Parcel parcel) {
        m4765d(parcel);
    }

    public SitAPIResponse(String str, String str2) {
        this.f14892g = str;
        this.f14893h = str2;
    }

    /* renamed from: c */
    public boolean m4766c() {
        return this.f14861f != null;
    }

    /* renamed from: d */
    public void m4765d(Parcel parcel) {
        this.f14892g = parcel.readString();
        this.f14893h = parcel.readString();
        this.f14861f = Utils.m5068i(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public SessionInstanceToken m4764e() {
        return new SessionInstanceToken(this.f14892g, this.f14893h);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14892g);
        parcel.writeString(this.f14893h);
        Utils.m5067j(this.f14861f, parcel);
    }
}
