package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzve.class */
public final class zzve extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzve> CREATOR = new zzvd();
    public final String zzche;
    public final String zzchf;

    public zzve(String str, String str2) {
        this.zzche = str;
        this.zzchf = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzche, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzchf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
