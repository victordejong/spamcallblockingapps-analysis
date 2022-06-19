package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjn.class */
public final class zzfjn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjn> CREATOR = new zzfjo();
    @SafeParcelable.VersionField
    public final int zza;
    @SafeParcelable.Field
    public final byte[] zzb;

    @SafeParcelable.Constructor
    public zzfjn(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.zza = i;
        this.zzb = bArr;
    }

    public zzfjn(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38859d(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
