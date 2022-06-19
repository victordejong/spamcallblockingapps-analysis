package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakb.class */
public final class zzakb extends zzajx {
    public static final Parcelable.Creator<zzakb> CREATOR = new C6729m8();

    /* renamed from: e */
    public final int f33524e;

    /* renamed from: f */
    public final int f33525f;

    /* renamed from: g */
    public final int f33526g;

    /* renamed from: h */
    public final int[] f33527h;

    /* renamed from: i */
    public final int[] f33528i;

    public zzakb(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f33524e = i;
        this.f33525f = i2;
        this.f33526g = i3;
        this.f33527h = iArr;
        this.f33528i = iArr2;
    }

    public zzakb(Parcel parcel) {
        super("MLLT");
        this.f33524e = parcel.readInt();
        this.f33525f = parcel.readInt();
        this.f33526g = parcel.readInt();
        this.f33527h = (int[]) C7101wa.m9719I(parcel.createIntArray());
        this.f33528i = (int[]) C7101wa.m9719I(parcel.createIntArray());
    }

    @Override // com.google.android.gms.internal.ads.zzajx, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakb.class != obj.getClass()) {
            return false;
        }
        zzakb zzakbVar = (zzakb) obj;
        return this.f33524e == zzakbVar.f33524e && this.f33525f == zzakbVar.f33525f && this.f33526g == zzakbVar.f33526g && Arrays.equals(this.f33527h, zzakbVar.f33527h) && Arrays.equals(this.f33528i, zzakbVar.f33528i);
    }

    public final int hashCode() {
        return ((((((((this.f33524e + 527) * 31) + this.f33525f) * 31) + this.f33526g) * 31) + Arrays.hashCode(this.f33527h)) * 31) + Arrays.hashCode(this.f33528i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f33524e);
        parcel.writeInt(this.f33525f);
        parcel.writeInt(this.f33526g);
        parcel.writeIntArray(this.f33527h);
        parcel.writeIntArray(this.f33528i);
    }
}
