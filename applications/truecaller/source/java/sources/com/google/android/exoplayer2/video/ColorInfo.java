package com.google.android.exoplayer2.video;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/video/ColorInfo.class */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new C2024a();

    /* renamed from: a */
    public final int f5210a;

    /* renamed from: b */
    public final int f5211b;

    /* renamed from: c */
    public final int f5212c;

    /* renamed from: d */
    public final byte[] f5213d;

    /* renamed from: e */
    public int f5214e;

    /* renamed from: com.google.android.exoplayer2.video.ColorInfo$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/video/ColorInfo$a.class */
    public static final class C2024a implements Parcelable.Creator<ColorInfo> {
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
        this.f5210a = i;
        this.f5211b = i2;
        this.f5212c = i3;
        this.f5213d = bArr;
    }

    public ColorInfo(Parcel parcel) {
        this.f5210a = parcel.readInt();
        this.f5211b = parcel.readInt();
        this.f5212c = parcel.readInt();
        int i = C24773d0.f69427a;
        this.f5213d = parcel.readInt() != 0 ? parcel.createByteArray() : null;
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
        if (this.f5210a != colorInfo.f5210a || this.f5211b != colorInfo.f5211b || this.f5212c != colorInfo.f5212c || !Arrays.equals(this.f5213d, colorInfo.f5213d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f5214e == 0) {
            int i = this.f5210a;
            int i2 = this.f5211b;
            this.f5214e = Arrays.hashCode(this.f5213d) + ((((((527 + i) * 31) + i2) * 31) + this.f5212c) * 31);
        }
        return this.f5214e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ColorInfo(");
        m8728C.append(this.f5210a);
        m8728C.append(", ");
        m8728C.append(this.f5211b);
        m8728C.append(", ");
        m8728C.append(this.f5212c);
        m8728C.append(", ");
        return C22128a.m8590o(m8728C, this.f5213d != null, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5210a);
        parcel.writeInt(this.f5211b);
        parcel.writeInt(this.f5212c);
        int i2 = this.f5213d != null ? 1 : 0;
        int i3 = C24773d0.f69427a;
        parcel.writeInt(i2);
        byte[] bArr = this.f5213d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
