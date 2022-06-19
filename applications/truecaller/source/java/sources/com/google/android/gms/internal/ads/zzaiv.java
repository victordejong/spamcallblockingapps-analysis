package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaiv.class */
public final class zzaiv implements Parcelable {
    public static final Parcelable.Creator<zzaiv> CREATOR = new zzait();
    private final zzaiu[] zza;

    public zzaiv(Parcel parcel) {
        this.zza = new zzaiu[parcel.readInt()];
        int i = 0;
        while (true) {
            zzaiu[] zzaiuVarArr = this.zza;
            if (i < zzaiuVarArr.length) {
                zzaiuVarArr[i] = (zzaiu) parcel.readParcelable(zzaiu.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzaiv(List<? extends zzaiu> list) {
        this.zza = (zzaiu[]) list.toArray(new zzaiu[0]);
    }

    public zzaiv(zzaiu... zzaiuVarArr) {
        this.zza = zzaiuVarArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaiv.class == obj.getClass()) {
            return Arrays.equals(this.zza, ((zzaiv) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.zza));
        return valueOf.length() != 0 ? "entries=".concat(valueOf) : new String("entries=");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza.length);
        for (zzaiu zzaiuVar : this.zza) {
            parcel.writeParcelable(zzaiuVar, 0);
        }
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzaiu zzb(int i) {
        return this.zza[i];
    }

    public final zzaiv zzc(zzaiv zzaivVar) {
        return zzaivVar == null ? this : zzd(zzaivVar.zza);
    }

    public final zzaiv zzd(zzaiu... zzaiuVarArr) {
        return zzaiuVarArr.length == 0 ? this : new zzaiv((zzaiu[]) zzamq.zzg(this.zza, zzaiuVarArr));
    }
}
