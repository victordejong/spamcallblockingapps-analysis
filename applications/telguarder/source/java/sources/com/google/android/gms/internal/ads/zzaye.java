package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaye.class */
public final class zzaye extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaye> CREATOR = new zzayh();
    public final String zzbrm;
    @Deprecated
    public final String zzbut;
    @Deprecated
    public final zzvs zzebq;
    public final zzvl zzebr;

    public zzaye(String str, String str2, zzvs zzvsVar, zzvl zzvlVar) {
        this.zzbut = str;
        this.zzbrm = str2;
        this.zzebq = zzvsVar;
        this.zzebr = zzvlVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzbut, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzbrm, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzebq, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzebr, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
