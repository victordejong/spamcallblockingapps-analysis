package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    @SafeParcelable.Field
    public final boolean zza;
    @SafeParcelable.Field
    public final boolean zzb;
    @SafeParcelable.Field
    public final String zzc;
    @SafeParcelable.Field
    public final boolean zzd;
    @SafeParcelable.Field
    public final float zze;
    @SafeParcelable.Field
    public final int zzf;
    @SafeParcelable.Field
    public final boolean zzg;
    @SafeParcelable.Field
    public final boolean zzh;
    @SafeParcelable.Field
    public final boolean zzi;

    @SafeParcelable.Constructor
    public zzj(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) boolean z3, @SafeParcelable.Param(id = 6) float f, @SafeParcelable.Param(id = 7) int i, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) boolean z5, @SafeParcelable.Param(id = 10) boolean z6) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = str;
        this.zzd = z3;
        this.zze = f;
        this.zzf = i;
        this.zzg = z4;
        this.zzh = z5;
        this.zzi = z6;
    }

    public zzj(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.zza;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzb;
        parcel.writeInt(262147);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 4, this.zzc, false);
        boolean z3 = this.zzd;
        parcel.writeInt(262149);
        parcel.writeInt(z3 ? 1 : 0);
        float f = this.zze;
        parcel.writeInt(262150);
        parcel.writeFloat(f);
        int i2 = this.zzf;
        parcel.writeInt(262151);
        parcel.writeInt(i2);
        boolean z4 = this.zzg;
        parcel.writeInt(262152);
        parcel.writeInt(z4 ? 1 : 0);
        boolean z5 = this.zzh;
        parcel.writeInt(262153);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z6 = this.zzi;
        parcel.writeInt(262154);
        parcel.writeInt(z6 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
