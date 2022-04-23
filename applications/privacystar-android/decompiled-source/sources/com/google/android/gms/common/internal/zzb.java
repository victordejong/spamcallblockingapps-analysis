package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ConnectionInfoCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    @SafeParcelable.Field(m344id = 1)
    Bundle zzcz;
    @SafeParcelable.Field(m344id = 2)
    Feature[] zzda;

    public zzb() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzb(@SafeParcelable.Param(m343id = 1) Bundle bundle, @SafeParcelable.Param(m343id = 2) Feature[] featureArr) {
        this.zzcz = bundle;
        this.zzda = featureArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.zzcz, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zzda, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
