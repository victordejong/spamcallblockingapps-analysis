package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzats.class */
public final class zzats extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzats> CREATOR = new zzatv();
    String zzdxm;

    public zzats(String str) {
        this.zzdxm = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzdxm, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
