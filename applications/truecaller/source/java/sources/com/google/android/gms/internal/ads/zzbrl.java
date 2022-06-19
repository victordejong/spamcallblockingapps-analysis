package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrl.class */
public final class zzbrl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbrl> CREATOR = new zzbrm();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final boolean zzb;
    @SafeParcelable.Field
    public final int zzc;
    @SafeParcelable.Field
    public final String zzd;

    @SafeParcelable.Constructor
    public zzbrl(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) String str2) {
        this.zza = str;
        this.zzb = z;
        this.zzc = i;
        this.zzd = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.zza, false);
        boolean z = this.zzb;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        int i2 = this.zzc;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 4, this.zzd, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
