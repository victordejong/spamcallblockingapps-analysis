package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfkb.class */
public final class zzfkb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfkb> CREATOR = new zzfkc();
    @SafeParcelable.VersionField
    public final int zza;
    @SafeParcelable.Field
    public final byte[] zzb;
    @SafeParcelable.Field
    public final int zzc;

    @SafeParcelable.Constructor
    public zzfkb(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr, @SafeParcelable.Param(id = 3) int i2) {
        this.zza = i;
        this.zzb = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.zzc = i2;
    }

    public zzfkb(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38859d(parcel, 2, this.zzb, false);
        int i3 = this.zzc;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
