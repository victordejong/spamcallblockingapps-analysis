package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpo.class */
public final class dpo extends dpp {
    public static final Parcelable.Creator<dpo> CREATOR = new dpr();

    /* renamed from: a */
    private final String f15294a;

    /* renamed from: b */
    private final String f15295b;

    public dpo(Parcel parcel) {
        super(parcel.readString());
        this.f15294a = parcel.readString();
        this.f15295b = parcel.readString();
    }

    public dpo(String str, String str2, String str3) {
        super(str);
        this.f15294a = null;
        this.f15295b = str3;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dpo dpoVar = (dpo) obj;
                if (!this.f15296c.equals(dpoVar.f15296c) || !dsn.m8704a(this.f15294a, dpoVar.f15294a) || !dsn.m8704a(this.f15295b, dpoVar.f15295b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.f15296c.hashCode();
        int hashCode2 = this.f15294a != null ? this.f15294a.hashCode() : 0;
        if (this.f15295b != null) {
            i = this.f15295b.hashCode();
        }
        return ((hashCode2 + ((hashCode + 527) * 31)) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15296c);
        parcel.writeString(this.f15294a);
        parcel.writeString(this.f15295b);
    }
}
