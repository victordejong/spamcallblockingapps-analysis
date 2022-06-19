package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzb.class */
public final class zzzb implements zzdc {
    public static final Parcelable.Creator<zzzb> CREATOR = new zzza();
    public final String zza;
    public final String zzb;

    public zzzb(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzfn.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
    }

    public zzzb(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzb.class != obj.getClass()) {
            return false;
        }
        zzzb zzzbVar = (zzzb) obj;
        return this.zza.equals(zzzbVar.zza) && this.zzb.equals(zzzbVar.zzb);
    }

    public final int hashCode() {
        return this.zzb.hashCode() + C1676a.m4793d(this.zza, 527, 31);
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        return C1676a.m4788i(new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length()), "VC: ", str, "=", str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(zzbc zzbcVar) {
        boolean z;
        String str = this.zza;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            zzbcVar.zzn(this.zzb);
        } else if (z) {
            zzbcVar.zzd(this.zzb);
        } else if (z) {
            zzbcVar.zzc(this.zzb);
        } else if (z) {
            zzbcVar.zzb(this.zzb);
        } else if (!z) {
        } else {
            zzbcVar.zzg(this.zzb);
        }
    }
}
