package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzmj.class */
public final class zzmj extends zzmo {
    public static final Parcelable.Creator<zzmj> CREATOR = new ead();
    public final String description;
    public final String text;
    private final String zzaif;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmj(Parcel parcel) {
        super("COMM");
        this.zzaif = parcel.readString();
        this.description = parcel.readString();
        this.text = parcel.readString();
    }

    public zzmj(String str, String str2, String str3) {
        super("COMM");
        this.zzaif = str;
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
        return ede.a(this.description, zzmjVar.description) && ede.a(this.zzaif, zzmjVar.zzaif) && ede.a(this.text, zzmjVar.text);
    }

    public final int hashCode() {
        String str = this.zzaif;
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
        parcel.writeString(this.id);
        parcel.writeString(this.zzaif);
        parcel.writeString(this.text);
    }
}
