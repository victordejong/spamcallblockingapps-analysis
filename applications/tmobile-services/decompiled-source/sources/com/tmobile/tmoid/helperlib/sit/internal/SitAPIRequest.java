package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitAPIRequest.class */
public class SitAPIRequest extends BaseSitAPIRequest {
    public static final Parcelable.Creator<SitAPIRequest> CREATOR = new Parcelable.Creator<SitAPIRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.SitAPIRequest.1
        /* renamed from: a */
        public SitAPIRequest createFromParcel(Parcel parcel) {
            return new SitAPIRequest(parcel);
        }

        /* renamed from: b */
        public SitAPIRequest[] newArray(int i) {
            return new SitAPIRequest[i];
        }
    };

    /* renamed from: f */
    private String f14889f;

    /* renamed from: g */
    private String f14890g;

    /* renamed from: h */
    private String f14891h;

    SitAPIRequest(Parcel parcel) {
        super(parcel);
        this.f14889f = null;
        this.f14890g = null;
        this.f14891h = null;
        mo4772b(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SitAPIRequest(String str, String str2, String str3) {
        this.f14889f = null;
        this.f14890g = null;
        this.f14891h = null;
        this.f14889f = str;
        this.f14890g = str2;
        this.f14891h = str3;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: a */
    public String mo4773a() {
        return this.f14891h;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
        super.mo4772b(parcel);
        this.f14889f = parcel.readString();
        this.f14890g = parcel.readString();
        this.f14891h = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: d */
    public void mo4771d(String str) {
        this.f14891h = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4770e() {
        return this.f14890g;
    }

    /* renamed from: f */
    public String m4769f() {
        return this.f14889f;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f14889f);
        parcel.writeString(this.f14890g);
        parcel.writeString(this.f14891h);
    }
}
