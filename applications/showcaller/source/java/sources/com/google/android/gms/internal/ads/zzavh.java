package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavh.class */
public final class zzavh implements Parcelable {
    public static final Parcelable.Creator<zzavh> CREATOR = new C7035ui();

    /* renamed from: d */
    public final int f33592d;

    /* renamed from: e */
    public final int f33593e;

    /* renamed from: f */
    public final int f33594f;

    /* renamed from: g */
    public final byte[] f33595g;

    /* renamed from: h */
    private int f33596h;

    public zzavh(int i, int i2, int i3, byte[] bArr) {
        this.f33592d = i;
        this.f33593e = i2;
        this.f33594f = i3;
        this.f33595g = bArr;
    }

    public zzavh(Parcel parcel) {
        this.f33592d = parcel.readInt();
        this.f33593e = parcel.readInt();
        this.f33594f = parcel.readInt();
        this.f33595g = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzavh.class != obj.getClass()) {
            return false;
        }
        zzavh zzavhVar = (zzavh) obj;
        return this.f33592d == zzavhVar.f33592d && this.f33593e == zzavhVar.f33593e && this.f33594f == zzavhVar.f33594f && Arrays.equals(this.f33595g, zzavhVar.f33595g);
    }

    public final int hashCode() {
        int i = this.f33596h;
        int i2 = i;
        if (i == 0) {
            i2 = ((((((this.f33592d + 527) * 31) + this.f33593e) * 31) + this.f33594f) * 31) + Arrays.hashCode(this.f33595g);
            this.f33596h = i2;
        }
        return i2;
    }

    public final String toString() {
        int i = this.f33592d;
        int i2 = this.f33593e;
        int i3 = this.f33594f;
        boolean z = this.f33595g != null;
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
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f33592d);
        parcel.writeInt(this.f33593e);
        parcel.writeInt(this.f33594f);
        parcel.writeInt(this.f33595g != null ? 1 : 0);
        byte[] bArr = this.f33595g;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
