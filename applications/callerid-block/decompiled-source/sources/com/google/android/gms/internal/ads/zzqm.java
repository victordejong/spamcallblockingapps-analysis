package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqm.class */
public final class zzqm implements Parcelable {
    public static final Parcelable.Creator<zzqm> CREATOR = new bs2();

    /* renamed from: b */
    public final int f9710b;

    /* renamed from: c */
    public final int f9711c;

    /* renamed from: d */
    public final int f9712d;

    /* renamed from: e */
    public final byte[] f9713e;

    /* renamed from: f */
    private int f9714f;

    public zzqm(int i, int i2, int i3, byte[] bArr) {
        this.f9710b = i;
        this.f9711c = i2;
        this.f9712d = i3;
        this.f9713e = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqm(Parcel parcel) {
        this.f9710b = parcel.readInt();
        this.f9711c = parcel.readInt();
        this.f9712d = parcel.readInt();
        this.f9713e = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzqm.class != obj.getClass()) {
            return false;
        }
        zzqm zzqmVar = (zzqm) obj;
        return this.f9710b == zzqmVar.f9710b && this.f9711c == zzqmVar.f9711c && this.f9712d == zzqmVar.f9712d && Arrays.equals(this.f9713e, zzqmVar.f9713e);
    }

    public final int hashCode() {
        int i = this.f9714f;
        int i2 = i;
        if (i == 0) {
            i2 = ((((((this.f9710b + 527) * 31) + this.f9711c) * 31) + this.f9712d) * 31) + Arrays.hashCode(this.f9713e);
            this.f9714f = i2;
        }
        return i2;
    }

    public final String toString() {
        int i = this.f9710b;
        int i2 = this.f9711c;
        int i3 = this.f9712d;
        boolean z = this.f9713e != null;
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
        parcel.writeInt(this.f9710b);
        parcel.writeInt(this.f9711c);
        parcel.writeInt(this.f9712d);
        parcel.writeInt(this.f9713e != null ? 1 : 0);
        byte[] bArr = this.f9713e;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
