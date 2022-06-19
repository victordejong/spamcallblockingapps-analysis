package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqy.class */
public final class zzbqy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbqy> CREATOR = new zzbqz();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final String[] zzb;
    @SafeParcelable.Field
    public final String[] zzc;

    @SafeParcelable.Constructor
    public zzbqy(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String[] strArr, @SafeParcelable.Param(id = 3) String[] strArr2) {
        this.zza = str;
        this.zzb = strArr;
        this.zzc = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.zza, false);
        SafeParcelWriter.m38845r(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38845r(parcel, 3, this.zzc, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
