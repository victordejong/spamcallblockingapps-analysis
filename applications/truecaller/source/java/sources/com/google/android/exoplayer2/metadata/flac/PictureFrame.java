package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24461a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/PictureFrame.class */
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new C1973a();

    /* renamed from: a */
    public final int f4897a;

    /* renamed from: b */
    public final String f4898b;

    /* renamed from: c */
    public final String f4899c;

    /* renamed from: d */
    public final int f4900d;

    /* renamed from: e */
    public final int f4901e;

    /* renamed from: f */
    public final int f4902f;

    /* renamed from: g */
    public final int f4903g;

    /* renamed from: h */
    public final byte[] f4904h;

    /* renamed from: com.google.android.exoplayer2.metadata.flac.PictureFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/PictureFrame$a.class */
    public static final class C1973a implements Parcelable.Creator<PictureFrame> {
        @Override // android.os.Parcelable.Creator
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PictureFrame[] newArray(int i) {
            return new PictureFrame[i];
        }
    }

    public PictureFrame(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f4897a = i;
        this.f4898b = str;
        this.f4899c = str2;
        this.f4900d = i2;
        this.f4901e = i3;
        this.f4902f = i4;
        this.f4903g = i5;
        this.f4904h = bArr;
    }

    public PictureFrame(Parcel parcel) {
        this.f4897a = parcel.readInt();
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4898b = readString;
        this.f4899c = parcel.readString();
        this.f4900d = parcel.readInt();
        this.f4901e = parcel.readInt();
        this.f4902f = parcel.readInt();
        this.f4903g = parcel.readInt();
        this.f4904h = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        if (this.f4897a != pictureFrame.f4897a || !this.f4898b.equals(pictureFrame.f4898b) || !this.f4899c.equals(pictureFrame.f4899c) || this.f4900d != pictureFrame.f4900d || this.f4901e != pictureFrame.f4901e || this.f4902f != pictureFrame.f4902f || this.f4903g != pictureFrame.f4903g || !Arrays.equals(this.f4904h, pictureFrame.f4904h)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f4899c, C22128a.m8579q2(this.f4898b, (this.f4897a + 527) * 31, 31), 31);
        int i = this.f4900d;
        int i2 = this.f4901e;
        int i3 = this.f4902f;
        return Arrays.hashCode(this.f4904h) + ((((((((m8579q2 + i) * 31) + i2) * 31) + i3) * 31) + this.f4903g) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: j */
    public /* synthetic */ byte[] mo39238j() {
        return C24461a.m5075a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: q */
    public /* synthetic */ Format mo39237q() {
        return C24461a.m5074b(this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Picture: mimeType=");
        m8728C.append(this.f4898b);
        m8728C.append(", description=");
        m8728C.append(this.f4899c);
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4897a);
        parcel.writeString(this.f4898b);
        parcel.writeString(this.f4899c);
        parcel.writeInt(this.f4900d);
        parcel.writeInt(this.f4901e);
        parcel.writeInt(this.f4902f);
        parcel.writeInt(this.f4903g);
        parcel.writeByteArray(this.f4904h);
    }
}
