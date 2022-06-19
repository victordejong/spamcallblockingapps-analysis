package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajc.class */
public final class zzajc implements zzaiu {
    public static final Parcelable.Creator<zzajc> CREATOR = new C7172y7();

    /* renamed from: d */
    public final int f33481d;

    /* renamed from: e */
    public final String f33482e;

    /* renamed from: f */
    public final String f33483f;

    /* renamed from: g */
    public final int f33484g;

    /* renamed from: h */
    public final int f33485h;

    /* renamed from: i */
    public final int f33486i;

    /* renamed from: j */
    public final int f33487j;

    /* renamed from: k */
    public final byte[] f33488k;

    public zzajc(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f33481d = i;
        this.f33482e = str;
        this.f33483f = str2;
        this.f33484g = i2;
        this.f33485h = i3;
        this.f33486i = i4;
        this.f33487j = i5;
        this.f33488k = bArr;
    }

    public zzajc(Parcel parcel) {
        this.f33481d = parcel.readInt();
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33482e = readString;
        this.f33483f = parcel.readString();
        this.f33484g = parcel.readInt();
        this.f33485h = parcel.readInt();
        this.f33486i = parcel.readInt();
        this.f33487j = parcel.readInt();
        this.f33488k = (byte[]) C7101wa.m9719I(parcel.createByteArray());
    }

    @Override // com.google.android.gms.internal.ads.zzaiu
    /* renamed from: I */
    public final void mo8113I(C6689l5 c6689l5) {
        c6689l5.m13718G(this.f33488k, this.f33481d);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajc.class != obj.getClass()) {
            return false;
        }
        zzajc zzajcVar = (zzajc) obj;
        return this.f33481d == zzajcVar.f33481d && this.f33482e.equals(zzajcVar.f33482e) && this.f33483f.equals(zzajcVar.f33483f) && this.f33484g == zzajcVar.f33484g && this.f33485h == zzajcVar.f33485h && this.f33486i == zzajcVar.f33486i && this.f33487j == zzajcVar.f33487j && Arrays.equals(this.f33488k, zzajcVar.f33488k);
    }

    public final int hashCode() {
        return ((((((((((((((this.f33481d + 527) * 31) + this.f33482e.hashCode()) * 31) + this.f33483f.hashCode()) * 31) + this.f33484g) * 31) + this.f33485h) * 31) + this.f33486i) * 31) + this.f33487j) * 31) + Arrays.hashCode(this.f33488k);
    }

    public final String toString() {
        String str = this.f33482e;
        String str2 = this.f33483f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(str2).length());
        sb.append("Picture: mimeType=");
        sb.append(str);
        sb.append(", description=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f33481d);
        parcel.writeString(this.f33482e);
        parcel.writeString(this.f33483f);
        parcel.writeInt(this.f33484g);
        parcel.writeInt(this.f33485h);
        parcel.writeInt(this.f33486i);
        parcel.writeInt(this.f33487j);
        parcel.writeByteArray(this.f33488k);
    }
}
