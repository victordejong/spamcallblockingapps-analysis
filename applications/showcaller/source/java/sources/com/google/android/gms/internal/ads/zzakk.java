package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakk.class */
public final class zzakk implements zzaiu {
    public static final Parcelable.Creator<zzakk> CREATOR = new C6877q8();

    /* renamed from: d */
    public final String f33535d;

    /* renamed from: e */
    public final byte[] f33536e;

    /* renamed from: f */
    public final int f33537f;

    /* renamed from: g */
    public final int f33538g;

    public /* synthetic */ zzakk(Parcel parcel, C6914r8 c6914r8) {
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33535d = readString;
        this.f33536e = (byte[]) C7101wa.m9719I(parcel.createByteArray());
        this.f33537f = parcel.readInt();
        this.f33538g = parcel.readInt();
    }

    public zzakk(String str, byte[] bArr, int i, int i2) {
        this.f33535d = str;
        this.f33536e = bArr;
        this.f33537f = i;
        this.f33538g = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaiu
    /* renamed from: I */
    public final void mo8113I(C6689l5 c6689l5) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakk.class != obj.getClass()) {
            return false;
        }
        zzakk zzakkVar = (zzakk) obj;
        return this.f33535d.equals(zzakkVar.f33535d) && Arrays.equals(this.f33536e, zzakkVar.f33536e) && this.f33537f == zzakkVar.f33537f && this.f33538g == zzakkVar.f33538g;
    }

    public final int hashCode() {
        return ((((((this.f33535d.hashCode() + 527) * 31) + Arrays.hashCode(this.f33536e)) * 31) + this.f33537f) * 31) + this.f33538g;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f33535d);
        return valueOf.length() != 0 ? "mdta: key=".concat(valueOf) : new String("mdta: key=");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33535d);
        parcel.writeByteArray(this.f33536e);
        parcel.writeInt(this.f33537f);
        parcel.writeInt(this.f33538g);
    }
}
