package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpy.class */
public final class zzpy implements Parcelable {
    public static final Parcelable.Creator<zzpy> CREATOR = new zzpx();
    private int zzahx;
    public final int zzarv;
    public final int zzarw;
    public final int zzarx;
    public final byte[] zzbkt;

    public zzpy(int i, int i2, int i3, byte[] bArr) {
        this.zzarv = i;
        this.zzarx = i2;
        this.zzarw = i3;
        this.zzbkt = bArr;
    }

    public zzpy(Parcel parcel) {
        this.zzarv = parcel.readInt();
        this.zzarx = parcel.readInt();
        this.zzarw = parcel.readInt();
        this.zzbkt = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzpy zzpyVar = (zzpy) obj;
        return this.zzarv == zzpyVar.zzarv && this.zzarx == zzpyVar.zzarx && this.zzarw == zzpyVar.zzarw && Arrays.equals(this.zzbkt, zzpyVar.zzbkt);
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = ((((((this.zzarv + 527) * 31) + this.zzarx) * 31) + this.zzarw) * 31) + Arrays.hashCode(this.zzbkt);
        }
        return this.zzahx;
    }

    public final String toString() {
        int i = this.zzarv;
        int i2 = this.zzarx;
        int i3 = this.zzarw;
        boolean z = this.zzbkt != null;
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
        parcel.writeInt(this.zzarv);
        parcel.writeInt(this.zzarx);
        parcel.writeInt(this.zzarw);
        parcel.writeInt(this.zzbkt != null ? 1 : 0);
        byte[] bArr = this.zzbkt;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
