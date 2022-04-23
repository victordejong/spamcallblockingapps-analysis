package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p131c.p161d.p170b.p224d.p252g.p253a.ee0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmi.class */
public final class zzmi extends zzmj {
    public static final Parcelable.Creator<zzmi> CREATOR = new ee0();

    /* renamed from: b */
    public final String f28630b;

    /* renamed from: c */
    public final String f28631c;

    /* renamed from: d */
    public final String f28632d;

    public zzmi(Parcel parcel) {
        super("COMM");
        this.f28630b = parcel.readString();
        this.f28631c = parcel.readString();
        this.f28632d = parcel.readString();
    }

    public zzmi(String str, String str2, String str3) {
        super("COMM");
        this.f28630b = str;
        this.f28631c = str2;
        this.f28632d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmi.class != obj.getClass()) {
            return false;
        }
        zzmi zzmiVar = (zzmi) obj;
        return zzpq.m11624a(this.f28631c, zzmiVar.f28631c) && zzpq.m11624a(this.f28630b, zzmiVar.f28630b) && zzpq.m11624a(this.f28632d, zzmiVar.f28632d);
    }

    public final int hashCode() {
        String str = this.f28630b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f28631c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f28632d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f28633a);
        parcel.writeString(this.f28630b);
        parcel.writeString(this.f28632d);
    }
}
