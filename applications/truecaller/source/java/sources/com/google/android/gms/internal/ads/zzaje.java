package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.framework.common.ContainerUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaje.class */
public final class zzaje implements zzaiu {
    public static final Parcelable.Creator<zzaje> CREATOR = new zzajd();
    public final String zza;
    public final String zzb;

    public zzaje(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
    }

    public zzaje(String str, String str2) {
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
        if (obj == null || zzaje.class != obj.getClass()) {
            return false;
        }
        zzaje zzajeVar = (zzaje) obj;
        return this.zza.equals(zzajeVar.zza) && this.zzb.equals(zzajeVar.zzb);
    }

    public final int hashCode() {
        return this.zzb.hashCode() + C22128a.m8579q2(this.zza, 527, 31);
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        return C22128a.m8606k(new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length()), "VC: ", str, ContainerUtils.KEY_VALUE_DELIMITER, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzaiu
    public final void zza(zzagm zzagmVar) {
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
            zzagmVar.zzs(this.zzb);
        } else if (z) {
            zzagmVar.zzt(this.zzb);
        } else if (z) {
            zzagmVar.zzu(this.zzb);
        } else if (z) {
            zzagmVar.zzv(this.zzb);
        } else if (!z) {
        } else {
            zzagmVar.zzw(this.zzb);
        }
    }
}
