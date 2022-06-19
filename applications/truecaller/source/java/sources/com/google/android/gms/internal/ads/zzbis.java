package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbis.class */
public final class zzbis extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbis> CREATOR = new zzbit();
    @SafeParcelable.Field
    public final boolean zza;
    @SafeParcelable.Field
    public final boolean zzb;
    @SafeParcelable.Field
    public final boolean zzc;

    public zzbis(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    @SafeParcelable.Constructor
    public zzbis(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) boolean z3) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = z3;
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
        boolean z3 = this.zzc;
        parcel.writeInt(262148);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
