package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzmn.class */
public final class zzmn extends zzmo {
    public static final Parcelable.Creator<zzmn> CREATOR = new eaf();
    private final String description;
    private final String value;

    /* JADX INFO: Access modifiers changed from: package-private */
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
        return this.id.equals(zzmnVar.id) && ede.a(this.description, zzmnVar.description) && ede.a(this.value, zzmnVar.value);
    }

    public final int hashCode() {
        int hashCode = this.id.hashCode();
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
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
