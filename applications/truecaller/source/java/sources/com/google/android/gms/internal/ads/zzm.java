package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzm.class */
public final class zzm implements Parcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzl();
    public final UUID zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;
    private int zze;

    public zzm(Parcel parcel) {
        this.zza = new UUID(parcel.readLong(), parcel.readLong());
        this.zzb = parcel.readString();
        String readString = parcel.readString();
        int i = zzamq.zza;
        this.zzc = readString;
        this.zzd = parcel.createByteArray();
    }

    public zzm(UUID uuid, String str, String str2, byte[] bArr) {
        Objects.requireNonNull(uuid);
        this.zza = uuid;
        this.zzb = null;
        this.zzc = str2;
        this.zzd = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzm zzmVar = (zzm) obj;
        return zzamq.zzc(this.zzb, zzmVar.zzb) && zzamq.zzc(this.zzc, zzmVar.zzc) && zzamq.zzc(this.zza, zzmVar.zza) && Arrays.equals(this.zzd, zzmVar.zzd);
    }

    public final int hashCode() {
        int i = this.zze;
        int i2 = i;
        if (i == 0) {
            int hashCode = this.zza.hashCode();
            String str = this.zzb;
            i2 = C22128a.m8579q2(this.zzc, ((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31, 31) + Arrays.hashCode(this.zzd);
            this.zze = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza.getMostSignificantBits());
        parcel.writeLong(this.zza.getLeastSignificantBits());
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }
}
