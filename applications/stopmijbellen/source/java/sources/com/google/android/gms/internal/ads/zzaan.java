package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaan.class */
public final class zzaan implements zzdc {
    public static final Parcelable.Creator<zzaan> CREATOR = new zzaal();
    public final float zza;
    public final int zzb;

    public zzaan(float f, int i) {
        this.zza = f;
        this.zzb = i;
    }

    public /* synthetic */ zzaan(Parcel parcel, zzaam zzaamVar) {
        this.zza = parcel.readFloat();
        this.zzb = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaan.class != obj.getClass()) {
            return false;
        }
        zzaan zzaanVar = (zzaan) obj;
        return this.zza == zzaanVar.zza && this.zzb == zzaanVar.zzb;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.zza).hashCode() + 527) * 31) + this.zzb;
    }

    public final String toString() {
        float f = this.zza;
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(73);
        sb.append("smta: captureFrameRate=");
        sb.append(f);
        sb.append(", svcTemporalLayerCount=");
        sb.append(i);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.zza);
        parcel.writeInt(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final /* synthetic */ void zza(zzbc zzbcVar) {
    }
}
