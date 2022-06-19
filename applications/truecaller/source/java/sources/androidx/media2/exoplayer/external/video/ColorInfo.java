package androidx.media2.exoplayer.external.video;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/ColorInfo.class */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new C0254a();

    /* renamed from: a */
    public final int f1141a;

    /* renamed from: b */
    public final int f1142b;

    /* renamed from: c */
    public final int f1143c;

    /* renamed from: d */
    public final byte[] f1144d;

    /* renamed from: e */
    public int f1145e;

    /* renamed from: androidx.media2.exoplayer.external.video.ColorInfo$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/ColorInfo$a.class */
    public class C0254a implements Parcelable.Creator<ColorInfo> {
        @Override // android.os.Parcelable.Creator
        public ColorInfo createFromParcel(Parcel parcel) {
            return new ColorInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ColorInfo[] newArray(int i) {
            return new ColorInfo[i];
        }
    }

    public ColorInfo(int i, int i2, int i3, byte[] bArr) {
        this.f1141a = i;
        this.f1142b = i2;
        this.f1143c = i3;
        this.f1144d = bArr;
    }

    public ColorInfo(Parcel parcel) {
        this.f1141a = parcel.readInt();
        this.f1142b = parcel.readInt();
        this.f1143c = parcel.readInt();
        int i = C27445x.f77229a;
        this.f1144d = parcel.readInt() != 0 ? parcel.createByteArray() : null;
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
        if (obj == null || ColorInfo.class != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        if (this.f1141a != colorInfo.f1141a || this.f1142b != colorInfo.f1142b || this.f1143c != colorInfo.f1143c || !Arrays.equals(this.f1144d, colorInfo.f1144d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1145e == 0) {
            int i = this.f1141a;
            int i2 = this.f1142b;
            this.f1145e = Arrays.hashCode(this.f1144d) + ((((((527 + i) * 31) + i2) * 31) + this.f1143c) * 31);
        }
        return this.f1145e;
    }

    public String toString() {
        int i = this.f1141a;
        int i2 = this.f1142b;
        int i3 = this.f1143c;
        boolean z = this.f1144d != null;
        StringBuilder m8546z = C22128a.m8546z(55, "ColorInfo(", i, ", ", i2);
        m8546z.append(", ");
        m8546z.append(i3);
        m8546z.append(", ");
        m8546z.append(z);
        m8546z.append(")");
        return m8546z.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1141a);
        parcel.writeInt(this.f1142b);
        parcel.writeInt(this.f1143c);
        int i2 = this.f1144d != null ? 1 : 0;
        int i3 = C27445x.f77229a;
        parcel.writeInt(i2);
        byte[] bArr = this.f1144d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
