package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.C5120a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/PictureFrame.class */
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new C5130a();

    /* renamed from: d */
    public final int f16109d;

    /* renamed from: e */
    public final String f16110e;

    /* renamed from: f */
    public final String f16111f;

    /* renamed from: g */
    public final int f16112g;

    /* renamed from: h */
    public final int f16113h;

    /* renamed from: i */
    public final int f16114i;

    /* renamed from: j */
    public final int f16115j;

    /* renamed from: k */
    public final byte[] f16116k;

    /* renamed from: com.google.android.exoplayer2.metadata.flac.PictureFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/PictureFrame$a.class */
    static final class C5130a implements Parcelable.Creator<PictureFrame> {
        C5130a() {
        }

        /* renamed from: a */
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        /* renamed from: b */
        public PictureFrame[] newArray(int i) {
            return new PictureFrame[i];
        }
    }

    public PictureFrame(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f16109d = i;
        this.f16110e = str;
        this.f16111f = str2;
        this.f16112g = i2;
        this.f16113h = i3;
        this.f16114i = i4;
        this.f16115j = i5;
        this.f16116k = bArr;
    }

    PictureFrame(Parcel parcel) {
        this.f16109d = parcel.readInt();
        this.f16110e = (String) C5515h0.m18833g(parcel.readString());
        this.f16111f = (String) C5515h0.m18833g(parcel.readString());
        this.f16112g = parcel.readInt();
        this.f16113h = parcel.readInt();
        this.f16114i = parcel.readInt();
        this.f16115j = parcel.readInt();
        this.f16116k = (byte[]) C5515h0.m18833g(parcel.createByteArray());
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
        if (this.f16109d != pictureFrame.f16109d || !this.f16110e.equals(pictureFrame.f16110e) || !this.f16111f.equals(pictureFrame.f16111f) || this.f16112g != pictureFrame.f16112g || this.f16113h != pictureFrame.f16113h || this.f16114i != pictureFrame.f16114i || this.f16115j != pictureFrame.f16115j || !Arrays.equals(this.f16116k, pictureFrame.f16116k)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public /* synthetic */ byte[] mo20092h0() {
        return C5120a.m20389a(this);
    }

    public int hashCode() {
        return ((((((((((((((527 + this.f16109d) * 31) + this.f16110e.hashCode()) * 31) + this.f16111f.hashCode()) * 31) + this.f16112g) * 31) + this.f16113h) * 31) + this.f16114i) * 31) + this.f16115j) * 31) + Arrays.hashCode(this.f16116k);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f16110e + ", description=" + this.f16111f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16109d);
        parcel.writeString(this.f16110e);
        parcel.writeString(this.f16111f);
        parcel.writeInt(this.f16112g);
        parcel.writeInt(this.f16113h);
        parcel.writeInt(this.f16114i);
        parcel.writeInt(this.f16115j);
        parcel.writeByteArray(this.f16116k);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public /* synthetic */ Format mo20091y() {
        return C5120a.m20388b(this);
    }
}
