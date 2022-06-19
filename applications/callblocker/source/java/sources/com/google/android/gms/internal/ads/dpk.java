package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpk.class */
public final class dpk extends dpp {
    public static final Parcelable.Creator<dpk> CREATOR = new dpn();

    /* renamed from: a */
    public final String f15291a;

    /* renamed from: b */
    public final String f15292b;

    /* renamed from: d */
    private final String f15293d;

    public dpk(Parcel parcel) {
        super("COMM");
        this.f15293d = parcel.readString();
        this.f15291a = parcel.readString();
        this.f15292b = parcel.readString();
    }

    public dpk(String str, String str2, String str3) {
        super("COMM");
        this.f15293d = str;
        this.f15291a = str2;
        this.f15292b = str3;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dpk dpkVar = (dpk) obj;
                if (!dsn.m8704a(this.f15291a, dpkVar.f15291a) || !dsn.m8704a(this.f15293d, dpkVar.f15293d) || !dsn.m8704a(this.f15292b, dpkVar.f15292b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.f15293d != null ? this.f15293d.hashCode() : 0;
        int hashCode2 = this.f15291a != null ? this.f15291a.hashCode() : 0;
        if (this.f15292b != null) {
            i = this.f15292b.hashCode();
        }
        return ((hashCode2 + ((hashCode + 527) * 31)) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15296c);
        parcel.writeString(this.f15293d);
        parcel.writeString(this.f15292b);
    }
}
