package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajz.class */
public final class zzajz extends zzajx {
    public static final Parcelable.Creator<zzajz> CREATOR = new C6692l8();

    /* renamed from: e */
    public final String f33521e;

    /* renamed from: f */
    public final String f33522f;

    /* renamed from: g */
    public final String f33523g;

    public zzajz(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33521e = readString;
        this.f33522f = parcel.readString();
        this.f33523g = parcel.readString();
    }

    public zzajz(String str, String str2, String str3) {
        super("----");
        this.f33521e = str;
        this.f33522f = str2;
        this.f33523g = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajz.class != obj.getClass()) {
            return false;
        }
        zzajz zzajzVar = (zzajz) obj;
        return C7101wa.m9720H(this.f33522f, zzajzVar.f33522f) && C7101wa.m9720H(this.f33521e, zzajzVar.f33521e) && C7101wa.m9720H(this.f33523g, zzajzVar.f33523g);
    }

    public final int hashCode() {
        String str = this.f33521e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33522f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33523g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33521e;
        String str3 = this.f33522f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": domain=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33520d);
        parcel.writeString(this.f33521e);
        parcel.writeString(this.f33523g);
    }
}
