package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzary.class */
public final class zzary extends zzasa {
    public static final Parcelable.Creator<zzary> CREATOR = new C6995tf();

    /* renamed from: e */
    public final String f33586e;

    /* renamed from: f */
    public final String f33587f;

    /* renamed from: g */
    public final String f33588g;

    public zzary(Parcel parcel) {
        super("COMM");
        this.f33586e = parcel.readString();
        this.f33587f = parcel.readString();
        this.f33588g = parcel.readString();
    }

    public zzary(String str, String str2, String str3) {
        super("COMM");
        this.f33586e = "und";
        this.f33587f = str2;
        this.f33588g = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzary.class != obj.getClass()) {
            return false;
        }
        zzary zzaryVar = (zzary) obj;
        return C6961si.m11021a(this.f33587f, zzaryVar.f33587f) && C6961si.m11021a(this.f33586e, zzaryVar.f33586e) && C6961si.m11021a(this.f33588g, zzaryVar.f33588g);
    }

    public final int hashCode() {
        String str = this.f33586e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33587f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33588g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33589d);
        parcel.writeString(this.f33586e);
        parcel.writeString(this.f33588g);
    }
}
