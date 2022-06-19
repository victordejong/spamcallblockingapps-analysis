package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakb.class */
public final class zzakb extends zzajx {
    public static final Parcelable.Creator<zzakb> CREATOR = new zzaka();
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int[] zzd;
    public final int[] zze;

    public zzakb(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = iArr;
        this.zze = iArr2;
    }

    public zzakb(Parcel parcel) {
        super("MLLT");
        this.zza = parcel.readInt();
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = (int[]) zzamq.zzd(parcel.createIntArray());
        this.zze = (int[]) zzamq.zzd(parcel.createIntArray());
    }

    @Override // com.google.android.gms.internal.ads.zzajx, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakb.class != obj.getClass()) {
            return false;
        }
        zzakb zzakbVar = (zzakb) obj;
        return this.zza == zzakbVar.zza && this.zzb == zzakbVar.zzb && this.zzc == zzakbVar.zzc && Arrays.equals(this.zzd, zzakbVar.zzd) && Arrays.equals(this.zze, zzakbVar.zze);
    }

    public final int hashCode() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        return Arrays.hashCode(this.zze) + ((Arrays.hashCode(this.zzd) + ((((((i + 527) * 31) + i2) * 31) + i3) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeIntArray(this.zzd);
        parcel.writeIntArray(this.zze);
    }
}
