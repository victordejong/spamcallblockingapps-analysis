package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzi.class */
public final class zzzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzzi> CREATOR = new zzzh();
    private final int zzcjy;

    public zzzi(int i) {
        this.zzcjy = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zzcjy);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
