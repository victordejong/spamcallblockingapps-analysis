package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.agent.utils.Utils;
import com.tmobile.tmoid.helperlib.sit.MsisdnData;
import com.tmobile.tmoid.helperlib.util.ChainedStringWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/MsisdnDataAPIResponse.class */
public class MsisdnDataAPIResponse extends BaseSitAPIResponse {
    public static final Parcelable.Creator<MsisdnDataAPIResponse> CREATOR = new Parcelable.Creator<MsisdnDataAPIResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.MsisdnDataAPIResponse.1
        /* renamed from: a */
        public MsisdnDataAPIResponse createFromParcel(Parcel parcel) {
            return new MsisdnDataAPIResponse(parcel);
        }

        /* renamed from: b */
        public MsisdnDataAPIResponse[] newArray(int i) {
            return new MsisdnDataAPIResponse[i];
        }
    };

    /* renamed from: g */
    private String f14887g;

    /* renamed from: h */
    private String f14888h;

    public MsisdnDataAPIResponse() {
        this.f14887g = null;
        this.f14888h = null;
    }

    protected MsisdnDataAPIResponse(Parcel parcel) {
        this.f14887g = null;
        this.f14888h = null;
        this.f14887g = parcel.readString();
        this.f14888h = parcel.readString();
        this.f14861f = Utils.m5068i(parcel);
    }

    public MsisdnDataAPIResponse(String str, String str2) {
        this.f14887g = null;
        this.f14888h = null;
        this.f14887g = str;
        this.f14888h = str2;
    }

    /* renamed from: c */
    public String m4779c() {
        return this.f14887g;
    }

    /* renamed from: d */
    public MsisdnData m4778d() {
        return new MsisdnData(this.f14887g, this.f14888h);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4777e() {
        return this.f14888h;
    }

    /* renamed from: f */
    public boolean m4776f() {
        return this.f14861f != null;
    }

    public String toString() {
        ChainedStringWriter chainedStringWriter = new ChainedStringWriter();
        chainedStringWriter.m4657e("{");
        chainedStringWriter.m4657e("msisdn:");
        chainedStringWriter.m4657e(this.f14887g);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("serviceFingerprint:");
        chainedStringWriter.m4657e(this.f14888h);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("requestHasServerError:");
        chainedStringWriter.m4656f(this.f14861f != null);
        chainedStringWriter.m4657e(",");
        if (this.f14861f != null) {
            chainedStringWriter.m4655g("agent_exception:");
            this.f14861f.printStackTrace(chainedStringWriter.m4660b());
        }
        chainedStringWriter.m4657e("}");
        return chainedStringWriter.m4661a();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14887g);
        parcel.writeString(this.f14888h);
        Utils.m5067j(this.f14861f, parcel);
    }
}
