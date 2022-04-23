package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/UrlLinkFrame.class */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new C7156a();

    /* renamed from: b */
    public final String f22196b;

    /* renamed from: c */
    public final String f22197c;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.UrlLinkFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/UrlLinkFrame$a.class */
    public static final class C7156a implements Parcelable.Creator<UrlLinkFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UrlLinkFrame[] newArray(int i) {
            return new UrlLinkFrame[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UrlLinkFrame(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            r0 = r5
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28670a(r0)
            r0 = r3
            r1 = r5
            java.lang.String r1 = (java.lang.String) r1
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f22196b = r1
            r0 = r4
            java.lang.String r0 = r0.readString()
            r4 = r0
            r0 = r4
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28670a(r0)
            r0 = r3
            r1 = r4
            java.lang.String r1 = (java.lang.String) r1
            r0.f22197c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.UrlLinkFrame.<init>(android.os.Parcel):void");
    }

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.f22196b = str2;
        this.f22197c = str3;
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
        if (!this.f22183a.equals(urlLinkFrame.f22183a) || !C2885h0.m28669a((Object) this.f22196b, (Object) urlLinkFrame.f22196b) || !C2885h0.m28669a((Object) this.f22197c, (Object) urlLinkFrame.f22197c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f22183a.hashCode();
        String str = this.f22196b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f22197c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": url=" + this.f22197c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22183a);
        parcel.writeString(this.f22196b);
        parcel.writeString(this.f22197c);
    }
}
