package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzava.class */
public final class zzava extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzava> CREATOR = new zzavd();
    public final String zzbut;
    public final zzvl zzdud;

    public zzava(zzvl zzvlVar, String str) {
        this.zzdud = zzvlVar;
        this.zzbut = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdud, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzbut, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
