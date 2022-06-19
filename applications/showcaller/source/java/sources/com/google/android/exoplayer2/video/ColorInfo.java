package com.google.android.exoplayer2.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/ColorInfo.class */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new C5545a();

    /* renamed from: d */
    public final int f17965d;

    /* renamed from: e */
    public final int f17966e;

    /* renamed from: f */
    public final int f17967f;

    /* renamed from: g */
    public final byte[] f17968g;

    /* renamed from: h */
    private int f17969h;

    /* renamed from: com.google.android.exoplayer2.video.ColorInfo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/ColorInfo$a.class */
    static final class C5545a implements Parcelable.Creator<ColorInfo> {
        C5545a() {
        }

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
        this.f17965d = i;
        this.f17966e = i2;
        this.f17967f = i3;
        this.f17968g = bArr;
    }

    ColorInfo(Parcel parcel) {
        this.f17965d = parcel.readInt();
        this.f17966e = parcel.readInt();
        this.f17967f = parcel.readInt();
        this.f17968g = C5515h0.m18828i0(parcel) ? parcel.createByteArray() : null;
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
        if (this.f17965d != colorInfo.f17965d || this.f17966e != colorInfo.f17966e || this.f17967f != colorInfo.f17967f || !Arrays.equals(this.f17968g, colorInfo.f17968g)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f17969h == 0) {
            this.f17969h = ((((((527 + this.f17965d) * 31) + this.f17966e) * 31) + this.f17967f) * 31) + Arrays.hashCode(this.f17968g);
        }
        return this.f17969h;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ColorInfo(");
        sb.append(this.f17965d);
        sb.append(", ");
        sb.append(this.f17966e);
        sb.append(", ");
        sb.append(this.f17967f);
        sb.append(", ");
        sb.append(this.f17968g != null);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f17965d);
        parcel.writeInt(this.f17966e);
        parcel.writeInt(this.f17967f);
        C5515h0.m18798x0(parcel, this.f17968g != null);
        byte[] bArr = this.f17968g;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
