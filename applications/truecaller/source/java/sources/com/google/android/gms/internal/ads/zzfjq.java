package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjq.class */
public final class zzfjq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjq> CREATOR = new zzfjr();
    @SafeParcelable.VersionField
    public final int zza;
    @SafeParcelable.Field
    public final String zzb;
    @SafeParcelable.Field
    public final String zzc;

    @SafeParcelable.Constructor
    public zzfjq(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
    }

    public zzfjq(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38846q(parcel, 3, this.zzc, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
