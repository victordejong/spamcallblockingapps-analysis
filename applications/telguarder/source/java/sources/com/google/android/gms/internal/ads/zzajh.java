package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajh.class */
public final class zzajh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajh> CREATOR = new zzajg();
    public final String description;
    public final String zzdit;
    public final boolean zzdiu;
    public final int zzdiv;

    public zzajh(String str, boolean z, int i, String str2) {
        this.zzdit = str;
        this.zzdiu = z;
        this.zzdiv = i;
        this.description = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzdit, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzdiu);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdiv);
        SafeParcelWriter.writeString(parcel, 4, this.description, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
