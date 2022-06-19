package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbya.class */
public final class zzbya extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbya> CREATOR = new zzbyb();
    @SafeParcelable.Field
    public final int zza;
    @SafeParcelable.Field
    public final int zzb;
    @SafeParcelable.Field
    public final int zzc;

    @SafeParcelable.Constructor
    public zzbya(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzbya zza(VersionInfo versionInfo) {
        return new zzbya(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbya)) {
            zzbya zzbyaVar = (zzbya) obj;
            return zzbyaVar.zzc == this.zzc && zzbyaVar.zzb == this.zzb && zzbyaVar.zza == this.zza;
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
        sb.append(StringConstant.DOT);
        sb.append(i2);
        sb.append(StringConstant.DOT);
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        int i4 = this.zzc;
        parcel.writeInt(262147);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
