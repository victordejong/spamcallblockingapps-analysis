package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new C1986a();

    /* renamed from: b */
    public final String f4950b;

    /* renamed from: c */
    public final String f4951c;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.TextInformationFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame$a.class */
    public static final class C1986a implements Parcelable.Creator<TextInformationFrame> {
        @Override // android.os.Parcelable.Creator
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInformationFrame(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f4950b = r1
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f4951c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.<init>(android.os.Parcel):void");
    }

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.f4950b = str2;
        this.f4951c = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        if (!this.f4939a.equals(textInformationFrame.f4939a) || !C24773d0.m4623a(this.f4950b, textInformationFrame.f4950b) || !C24773d0.m4623a(this.f4951c, textInformationFrame.f4951c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f4939a, 527, 31);
        String str = this.f4950b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f4951c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m8579q2 + hashCode) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f4939a + ": description=" + this.f4950b + ": value=" + this.f4951c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4939a);
        parcel.writeString(this.f4950b);
        parcel.writeString(this.f4951c);
    }
}
