package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzare.class */
public final class zzare implements Parcelable {
    public static final Parcelable.Creator<zzare> CREATOR = new zzard();
    public final String zza;
    public final byte[] zzb;
    public final boolean zzc;
    private int zzd;
    private final UUID zze;

    public zzare(Parcel parcel) {
        this.zze = new UUID(parcel.readLong(), parcel.readLong());
        this.zza = parcel.readString();
        this.zzb = parcel.createByteArray();
        this.zzc = parcel.readByte() != 0;
    }

    public zzare(UUID uuid, String str, byte[] bArr, boolean z) {
        Objects.requireNonNull(uuid);
        this.zze = uuid;
        this.zza = str;
        Objects.requireNonNull(bArr);
        this.zzb = bArr;
        this.zzc = false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzare)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzare zzareVar = (zzare) obj;
        return this.zza.equals(zzareVar.zza) && zzaxb.zzo(this.zze, zzareVar.zze) && Arrays.equals(this.zzb, zzareVar.zzb);
    }

    public final int hashCode() {
        int i = this.zzd;
        int i2 = i;
        if (i == 0) {
            i2 = C1676a.m4793d(this.zza, this.zze.hashCode() * 31, 31) + Arrays.hashCode(this.zzb);
            this.zzd = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zze.getMostSignificantBits());
        parcel.writeLong(this.zze.getLeastSignificantBits());
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
        parcel.writeByte(this.zzc ? (byte) 1 : (byte) 0);
    }
}
