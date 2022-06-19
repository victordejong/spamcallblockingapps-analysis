package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/UrlLinkFrame.class */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new C5145a();

    /* renamed from: e */
    public final String f16167e;

    /* renamed from: f */
    public final String f16168f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.UrlLinkFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/UrlLinkFrame$a.class */
    static final class C5145a implements Parcelable.Creator<UrlLinkFrame> {
        C5145a() {
        }

        /* renamed from: a */
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        /* renamed from: b */
        public UrlLinkFrame[] newArray(int i) {
            return new UrlLinkFrame[i];
        }
    }

    UrlLinkFrame(Parcel parcel) {
        super((String) C5515h0.m18833g(parcel.readString()));
        this.f16167e = parcel.readString();
        this.f16168f = (String) C5515h0.m18833g(parcel.readString());
    }

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.f16167e = str2;
        this.f16168f = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || UrlLinkFrame.class != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        if (!this.f16154d.equals(urlLinkFrame.f16154d) || !C5515h0.m18843b(this.f16167e, urlLinkFrame.f16167e) || !C5515h0.m18843b(this.f16168f, urlLinkFrame.f16168f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f16154d.hashCode();
        String str = this.f16167e;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f16168f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": url=" + this.f16168f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16154d);
        parcel.writeString(this.f16167e);
        parcel.writeString(this.f16168f);
    }
}
