package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dss.class */
public final class dss implements Parcelable {
    public static final Parcelable.Creator<dss> CREATOR = new dsr();

    /* renamed from: a */
    public final int f15591a;

    /* renamed from: b */
    public final int f15592b;

    /* renamed from: c */
    public final int f15593c;

    /* renamed from: d */
    public final byte[] f15594d;

    /* renamed from: e */
    private int f15595e;

    public dss(int i, int i2, int i3, byte[] bArr) {
        this.f15591a = i;
        this.f15592b = i2;
        this.f15593c = i3;
        this.f15594d = bArr;
    }

    public dss(Parcel parcel) {
        this.f15591a = parcel.readInt();
        this.f15592b = parcel.readInt();
        this.f15593c = parcel.readInt();
        this.f15594d = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dss dssVar = (dss) obj;
                if (this.f15591a != dssVar.f15591a || this.f15592b != dssVar.f15592b || this.f15593c != dssVar.f15593c || !Arrays.equals(this.f15594d, dssVar.f15594d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        if (this.f15595e == 0) {
            this.f15595e = ((((((this.f15591a + 527) * 31) + this.f15592b) * 31) + this.f15593c) * 31) + Arrays.hashCode(this.f15594d);
        }
        return this.f15595e;
    }

    public final String toString() {
        int i = this.f15591a;
        int i2 = this.f15592b;
        return new StringBuilder(55).append("ColorInfo(").append(i).append(", ").append(i2).append(", ").append(this.f15593c).append(", ").append(this.f15594d != null).append(")").toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f15591a);
        parcel.writeInt(this.f15592b);
        parcel.writeInt(this.f15593c);
        parcel.writeInt(this.f15594d != null ? 1 : 0);
        if (this.f15594d != null) {
            parcel.writeByteArray(this.f15594d);
        }
    }
}
