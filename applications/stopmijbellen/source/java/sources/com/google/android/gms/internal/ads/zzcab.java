package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "RtbVersionInfoParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcab.class */
public final class zzcab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcab> CREATOR = new zzcac();
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final int zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzc;

    @SafeParcelable.Constructor
    public zzcab(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) int i2, @SafeParcelable.Param(m4804id = 3) int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzcab zza(VersionInfo versionInfo) {
        return new zzcab(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzcab)) {
            zzcab zzcabVar = (zzcab) obj;
            return zzcabVar.zzc == this.zzc && zzcabVar.zzb == this.zzb && zzcabVar.zza == this.zza;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.zza, this.zzb, this.zzc});
    }

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
