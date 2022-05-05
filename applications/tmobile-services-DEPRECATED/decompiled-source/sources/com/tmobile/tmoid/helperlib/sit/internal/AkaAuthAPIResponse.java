package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.agent.utils.Utils;
import com.tmobile.tmoid.helperlib.util.ChainedStringWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/AkaAuthAPIResponse.class */
public class AkaAuthAPIResponse extends BaseSitAPIResponse {
    public static final Parcelable.Creator<AkaAuthAPIResponse> CREATOR = new Parcelable.Creator<AkaAuthAPIResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.AkaAuthAPIResponse.1
        /* renamed from: a */
        public AkaAuthAPIResponse createFromParcel(Parcel parcel) {
            return new AkaAuthAPIResponse(parcel);
        }

        /* renamed from: b */
        public AkaAuthAPIResponse[] newArray(int i) {
            return new AkaAuthAPIResponse[i];
        }
    };

    /* renamed from: g */
    String f14860g;

    public AkaAuthAPIResponse() {
    }

    public AkaAuthAPIResponse(Parcel parcel) {
        m4824d(parcel);
    }

    /* renamed from: c */
    public String m4825c() {
        return this.f14860g;
    }

    /* renamed from: d */
    public void m4824d(Parcel parcel) {
        this.f14860g = parcel.readString();
        this.f14861f = Utils.m5068i(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m4823e(String str) {
        this.f14860g = str;
    }

    public String toString() {
        ChainedStringWriter chainedStringWriter = new ChainedStringWriter();
        chainedStringWriter.m4657e("{");
        chainedStringWriter.m4657e("akaToken:");
        chainedStringWriter.m4657e(this.f14860g);
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
        parcel.writeString(this.f14860g);
        Utils.m5067j(this.f14861f, parcel);
    }
}
