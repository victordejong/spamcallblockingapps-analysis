package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajg.class */
public final class zzajg implements zzaiu {
    public static final Parcelable.Creator<zzajg> CREATOR = new C6283a8();

    /* renamed from: d */
    public final int f33491d;

    /* renamed from: e */
    public final String f33492e;

    /* renamed from: f */
    public final String f33493f;

    /* renamed from: g */
    public final String f33494g;

    /* renamed from: h */
    public final boolean f33495h;

    /* renamed from: i */
    public final int f33496i;

    public zzajg(int i, String str, String str2, String str3, boolean z, int i2) {
        C7173y8.m8898a(i2 != -1 ? i2 > 0 : true);
        this.f33491d = i;
        this.f33492e = str;
        this.f33493f = str2;
        this.f33494g = str3;
        this.f33495h = z;
        this.f33496i = i2;
    }

    public zzajg(Parcel parcel) {
        this.f33491d = parcel.readInt();
        this.f33492e = parcel.readString();
        this.f33493f = parcel.readString();
        this.f33494g = parcel.readString();
        this.f33495h = C7101wa.m9709S(parcel);
        this.f33496i = parcel.readInt();
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
        if (obj == null || zzajg.class != obj.getClass()) {
            return false;
        }
        zzajg zzajgVar = (zzajg) obj;
        return this.f33491d == zzajgVar.f33491d && C7101wa.m9720H(this.f33492e, zzajgVar.f33492e) && C7101wa.m9720H(this.f33493f, zzajgVar.f33493f) && C7101wa.m9720H(this.f33494g, zzajgVar.f33494g) && this.f33495h == zzajgVar.f33495h && this.f33496i == zzajgVar.f33496i;
    }

    public final int hashCode() {
        int i = this.f33491d;
        String str = this.f33492e;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33493f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33494g;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((i + 527) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f33495h ? 1 : 0)) * 31) + this.f33496i;
    }

    public final String toString() {
        String str = this.f33493f;
        String str2 = this.f33492e;
        int i = this.f33491d;
        int i2 = this.f33496i;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80 + String.valueOf(str2).length());
        sb.append("IcyHeaders: name=\"");
        sb.append(str);
        sb.append("\", genre=\"");
        sb.append(str2);
        sb.append("\", bitrate=");
        sb.append(i);
        sb.append(", metadataInterval=");
        sb.append(i2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f33491d);
        parcel.writeString(this.f33492e);
        parcel.writeString(this.f33493f);
        parcel.writeString(this.f33494g);
        C7101wa.m9708T(parcel, this.f33495h);
        parcel.writeInt(this.f33496i);
    }
}
