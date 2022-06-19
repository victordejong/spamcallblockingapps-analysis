package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcax.class */
public final class zzcax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcax> CREATOR = new zzcay();
    @SafeParcelable.Field
    public final boolean zza;
    @SafeParcelable.Field
    public final List<String> zzb;

    public zzcax() {
        this(false, Collections.emptyList());
    }

    @SafeParcelable.Constructor
    public zzcax(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) List<String> list) {
        this.zza = z;
        this.zzb = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.zza;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38844s(parcel, 3, this.zzb, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
