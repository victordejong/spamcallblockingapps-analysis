package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaji.class */
public final class zzaji extends zzajx {
    public static final Parcelable.Creator<zzaji> CREATOR = new C6320b8();

    /* renamed from: e */
    public final String f33497e;

    /* renamed from: f */
    public final String f33498f;

    /* renamed from: g */
    public final int f33499g;

    /* renamed from: h */
    public final byte[] f33500h;

    public zzaji(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33497e = readString;
        this.f33498f = parcel.readString();
        this.f33499g = parcel.readInt();
        this.f33500h = (byte[]) C7101wa.m9719I(parcel.createByteArray());
    }

    public zzaji(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f33497e = str;
        this.f33498f = str2;
        this.f33499g = i;
        this.f33500h = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzajx, com.google.android.gms.internal.ads.zzaiu
    /* renamed from: I */
    public final void mo8113I(C6689l5 c6689l5) {
        c6689l5.m13718G(this.f33500h, this.f33499g);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaji.class != obj.getClass()) {
            return false;
        }
        zzaji zzajiVar = (zzaji) obj;
        return this.f33499g == zzajiVar.f33499g && C7101wa.m9720H(this.f33497e, zzajiVar.f33497e) && C7101wa.m9720H(this.f33498f, zzajiVar.f33498f) && Arrays.equals(this.f33500h, zzajiVar.f33500h);
    }

    public final int hashCode() {
        int i = this.f33499g;
        String str = this.f33497e;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33498f;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f33500h);
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33497e;
        String str3 = this.f33498f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33497e);
        parcel.writeString(this.f33498f);
        parcel.writeInt(this.f33499g);
        parcel.writeByteArray(this.f33500h);
    }
}
