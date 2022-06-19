package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmj.class */
public final class zzmj extends zzmo {
    public static final Parcelable.Creator<zzmj> CREATOR = new zzmm();
    public final String description;
    public final String text;
    private final String zzahv;

    public zzmj(Parcel parcel) {
        super("COMM");
        this.zzahv = parcel.readString();
        this.description = parcel.readString();
        this.text = parcel.readString();
    }

    public zzmj(String str, String str2, String str3) {
        super("COMM");
        this.zzahv = str;
        this.description = str2;
        this.text = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmj zzmjVar = (zzmj) obj;
        return zzpt.zza(this.description, zzmjVar.description) && zzpt.zza(this.zzahv, zzmjVar.zzahv) && zzpt.zza(this.text, zzmjVar.text);
    }

    public final int hashCode() {
        String str = this.zzahv;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.text;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f130id);
        parcel.writeString(this.zzahv);
        parcel.writeString(this.text);
    }
}
