package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/DeprecatedManageConnectivityAPIRequest.class */
public class DeprecatedManageConnectivityAPIRequest extends BaseSitAPIRequest {
    public static final Parcelable.Creator<DeprecatedManageConnectivityAPIRequest> CREATOR = new Parcelable.Creator<DeprecatedManageConnectivityAPIRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.DeprecatedManageConnectivityAPIRequest.1
        /* renamed from: a */
        public DeprecatedManageConnectivityAPIRequest createFromParcel(Parcel parcel) {
            return new DeprecatedManageConnectivityAPIRequest(parcel);
        }

        /* renamed from: b */
        public DeprecatedManageConnectivityAPIRequest[] newArray(int i) {
            return new DeprecatedManageConnectivityAPIRequest[i];
        }
    };

    /* renamed from: f */
    private int f14862f;

    /* renamed from: g */
    private String f14863g;

    /* renamed from: h */
    private String f14864h;

    DeprecatedManageConnectivityAPIRequest(Parcel parcel) {
        super(parcel);
        mo4772b(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: a */
    public String mo4773a() {
        return this.f14864h;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
        super.mo4772b(parcel);
        this.f14862f = parcel.readInt();
        this.f14863g = parcel.readString();
        this.f14864h = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: d */
    public void mo4771d(String str) {
        this.f14864h = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4817e() {
        return this.f14863g;
    }

    /* renamed from: f */
    public int m4816f() {
        return this.f14862f;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f14862f);
        parcel.writeString(this.f14863g);
        parcel.writeString(this.f14864h);
    }
}
