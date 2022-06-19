package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmn.class */
public final class zzmn extends zzmo {
    public static final Parcelable.Creator<zzmn> CREATOR = new zzmq();
    private final String description;
    private final String value;

    public zzmn(Parcel parcel) {
        super(parcel.readString());
        this.description = parcel.readString();
        this.value = parcel.readString();
    }

    public zzmn(String str, String str2, String str3) {
        super(str);
        this.description = null;
        this.value = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmn zzmnVar = (zzmn) obj;
        return this.f130id.equals(zzmnVar.f130id) && zzpt.zza(this.description, zzmnVar.description) && zzpt.zza(this.value, zzmnVar.value);
    }

    public final int hashCode() {
        int hashCode = this.f130id.hashCode();
        String str = this.description;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f130id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
