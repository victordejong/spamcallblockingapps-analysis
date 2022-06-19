package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajq.class */
public final class zzajq extends zzajx {
    public static final Parcelable.Creator<zzajq> CREATOR = new C6469f8();

    /* renamed from: e */
    public final String f33513e;

    /* renamed from: f */
    public final String f33514f;

    /* renamed from: g */
    public final String f33515g;

    public zzajq(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33513e = readString;
        this.f33514f = parcel.readString();
        this.f33515g = parcel.readString();
    }

    public zzajq(String str, String str2, String str3) {
        super("COMM");
        this.f33513e = str;
        this.f33514f = str2;
        this.f33515g = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajq.class != obj.getClass()) {
            return false;
        }
        zzajq zzajqVar = (zzajq) obj;
        return C7101wa.m9720H(this.f33514f, zzajqVar.f33514f) && C7101wa.m9720H(this.f33513e, zzajqVar.f33513e) && C7101wa.m9720H(this.f33515g, zzajqVar.f33515g);
    }

    public final int hashCode() {
        String str = this.f33513e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33514f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33515g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33513e;
        String str3 = this.f33514f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": language=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33520d);
        parcel.writeString(this.f33513e);
        parcel.writeString(this.f33515g);
    }
}
