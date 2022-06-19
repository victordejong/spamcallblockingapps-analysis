package androidx.media2.exoplayer.external.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/flac/PictureFrame.class */
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new C0241a();

    /* renamed from: a */
    public final int f1000a;

    /* renamed from: b */
    public final String f1001b;

    /* renamed from: c */
    public final String f1002c;

    /* renamed from: d */
    public final int f1003d;

    /* renamed from: e */
    public final int f1004e;

    /* renamed from: f */
    public final int f1005f;

    /* renamed from: g */
    public final int f1006g;

    /* renamed from: h */
    public final byte[] f1007h;

    /* renamed from: androidx.media2.exoplayer.external.metadata.flac.PictureFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/flac/PictureFrame$a.class */
    public class C0241a implements Parcelable.Creator<PictureFrame> {
        @Override // android.os.Parcelable.Creator
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PictureFrame[] newArray(int i) {
            return new PictureFrame[i];
        }
    }

    public PictureFrame(Parcel parcel) {
        this.f1000a = parcel.readInt();
        String readString = parcel.readString();
        int i = C27445x.f77229a;
        this.f1001b = readString;
        this.f1002c = parcel.readString();
        this.f1003d = parcel.readInt();
        this.f1004e = parcel.readInt();
        this.f1005f = parcel.readInt();
        this.f1006g = parcel.readInt();
        this.f1007h = parcel.createByteArray();
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
        if (this.f1000a != pictureFrame.f1000a || !this.f1001b.equals(pictureFrame.f1001b) || !this.f1002c.equals(pictureFrame.f1002c) || this.f1003d != pictureFrame.f1003d || this.f1004e != pictureFrame.f1004e || this.f1005f != pictureFrame.f1005f || this.f1006g != pictureFrame.f1006g || !Arrays.equals(this.f1007h, pictureFrame.f1007h)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f1002c, C22128a.m8579q2(this.f1001b, (this.f1000a + 527) * 31, 31), 31);
        int i = this.f1003d;
        int i2 = this.f1004e;
        int i3 = this.f1005f;
        return Arrays.hashCode(this.f1007h) + ((((((((m8579q2 + i) * 31) + i2) * 31) + i3) * 31) + this.f1006g) * 31);
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo42814j() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo42813q() {
        return null;
    }

    public String toString() {
        String str = this.f1001b;
        String str2 = this.f1002c;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 32);
        sb.append("Picture: mimeType=");
        sb.append(str);
        sb.append(", description=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1000a);
        parcel.writeString(this.f1001b);
        parcel.writeString(this.f1002c);
        parcel.writeInt(this.f1003d);
        parcel.writeInt(this.f1004e);
        parcel.writeInt(this.f1005f);
        parcel.writeInt(this.f1006g);
        parcel.writeByteArray(this.f1007h);
    }
}
