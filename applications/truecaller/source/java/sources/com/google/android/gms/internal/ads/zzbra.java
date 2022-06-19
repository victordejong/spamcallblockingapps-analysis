package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbra.class */
public final class zzbra extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbra> CREATOR = new zzbrb();
    @SafeParcelable.Field
    public final boolean zza;
    @SafeParcelable.Field
    public final String zzb;
    @SafeParcelable.Field
    public final int zzc;
    @SafeParcelable.Field
    public final byte[] zzd;
    @SafeParcelable.Field
    public final String[] zze;
    @SafeParcelable.Field
    public final String[] zzf;
    @SafeParcelable.Field
    public final boolean zzg;
    @SafeParcelable.Field
    public final long zzh;

    @SafeParcelable.Constructor
    public zzbra(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) String[] strArr, @SafeParcelable.Param(id = 6) String[] strArr2, @SafeParcelable.Param(id = 7) boolean z2, @SafeParcelable.Param(id = 8) long j) {
        this.zza = z;
        this.zzb = str;
        this.zzc = i;
        this.zzd = bArr;
        this.zze = strArr;
        this.zzf = strArr2;
        this.zzg = z2;
        this.zzh = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 2, this.zzb, false);
        int i2 = this.zzc;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        SafeParcelWriter.m38859d(parcel, 4, this.zzd, false);
        SafeParcelWriter.m38845r(parcel, 5, this.zze, false);
        SafeParcelWriter.m38845r(parcel, 6, this.zzf, false);
        boolean z2 = this.zzg;
        parcel.writeInt(262151);
        parcel.writeInt(z2 ? 1 : 0);
        long j = this.zzh;
        parcel.writeInt(524296);
        parcel.writeLong(j);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
