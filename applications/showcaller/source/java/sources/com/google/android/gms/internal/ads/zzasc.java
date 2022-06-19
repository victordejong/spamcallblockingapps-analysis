package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasc.class */
public final class zzasc extends zzasa {
    public static final Parcelable.Creator<zzasc> CREATOR = new C7069vf();

    /* renamed from: e */
    public final String f33590e;

    /* renamed from: f */
    public final String f33591f;

    public zzasc(Parcel parcel) {
        super(parcel.readString());
        this.f33590e = parcel.readString();
        this.f33591f = parcel.readString();
    }

    public zzasc(String str, String str2, String str3) {
        super(str);
        this.f33590e = null;
        this.f33591f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzasc.class != obj.getClass()) {
            return false;
        }
        zzasc zzascVar = (zzasc) obj;
        return this.f33589d.equals(zzascVar.f33589d) && C6961si.m11021a(this.f33590e, zzascVar.f33590e) && C6961si.m11021a(this.f33591f, zzascVar.f33591f);
    }

    public final int hashCode() {
        int hashCode = this.f33589d.hashCode();
        String str = this.f33590e;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f33591f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33589d);
        parcel.writeString(this.f33590e);
        parcel.writeString(this.f33591f);
    }
}
