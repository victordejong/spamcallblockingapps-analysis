package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajs.class */
public final class zzajs extends zzajx {
    public static final Parcelable.Creator<zzajs> CREATOR = new C6506g8();

    /* renamed from: e */
    public final String f33516e;

    /* renamed from: f */
    public final String f33517f;

    /* renamed from: g */
    public final String f33518g;

    /* renamed from: h */
    public final byte[] f33519h;

    public zzajs(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33516e = readString;
        this.f33517f = parcel.readString();
        this.f33518g = parcel.readString();
        this.f33519h = (byte[]) C7101wa.m9719I(parcel.createByteArray());
    }

    public zzajs(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f33516e = str;
        this.f33517f = str2;
        this.f33518g = str3;
        this.f33519h = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajs.class != obj.getClass()) {
            return false;
        }
        zzajs zzajsVar = (zzajs) obj;
        return C7101wa.m9720H(this.f33516e, zzajsVar.f33516e) && C7101wa.m9720H(this.f33517f, zzajsVar.f33517f) && C7101wa.m9720H(this.f33518g, zzajsVar.f33518g) && Arrays.equals(this.f33519h, zzajsVar.f33519h);
    }

    public final int hashCode() {
        String str = this.f33516e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33517f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33518g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + i) * 31) + Arrays.hashCode(this.f33519h);
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33516e;
        String str3 = this.f33517f;
        String str4 = this.f33518g;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", filename=");
        sb.append(str3);
        sb.append(", description=");
        sb.append(str4);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33516e);
        parcel.writeString(this.f33517f);
        parcel.writeString(this.f33518g);
        parcel.writeByteArray(this.f33519h);
    }
}
