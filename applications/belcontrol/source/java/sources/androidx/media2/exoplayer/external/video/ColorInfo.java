package androidx.media2.exoplayer.external.video;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/ColorInfo.class */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new C0160a();

    /* renamed from: a */
    public final int f1187a;

    /* renamed from: b */
    public final int f1188b;

    /* renamed from: c */
    public final int f1189c;

    /* renamed from: d */
    public final byte[] f1190d;

    /* renamed from: f */
    public int f1191f;

    /* renamed from: androidx.media2.exoplayer.external.video.ColorInfo$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/ColorInfo$a.class */
    public class C0160a implements Parcelable.Creator<ColorInfo> {
        /* renamed from: a */
        public ColorInfo createFromParcel(Parcel parcel) {
            return new ColorInfo(parcel);
        }

        /* renamed from: b */
        public ColorInfo[] newArray(int i) {
            return new ColorInfo[i];
        }
    }

    public ColorInfo(int i, int i2, int i3, byte[] bArr) {
        this.f1187a = i;
        this.f1188b = i2;
        this.f1189c = i3;
        this.f1190d = bArr;
    }

    public ColorInfo(Parcel parcel) {
        this.f1187a = parcel.readInt();
        this.f1188b = parcel.readInt();
        this.f1189c = parcel.readInt();
        this.f1190d = nu.c0(parcel) ? parcel.createByteArray() : null;
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
        if (this.f1187a != colorInfo.f1187a || this.f1188b != colorInfo.f1188b || this.f1189c != colorInfo.f1189c || !Arrays.equals(this.f1190d, colorInfo.f1190d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1191f == 0) {
            this.f1191f = ((((((527 + this.f1187a) * 31) + this.f1188b) * 31) + this.f1189c) * 31) + Arrays.hashCode(this.f1190d);
        }
        return this.f1191f;
    }

    public String toString() {
        int i = this.f1187a;
        int i2 = this.f1188b;
        int i3 = this.f1189c;
        boolean z = this.f1190d != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1187a);
        parcel.writeInt(this.f1188b);
        parcel.writeInt(this.f1189c);
        nu.o0(parcel, this.f1190d != null);
        byte[] bArr = this.f1190d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
