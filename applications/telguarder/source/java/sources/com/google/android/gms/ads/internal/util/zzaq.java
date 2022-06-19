package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.ads.zzdok;
import com.google.android.gms.internal.ads.zzdwt;
import com.google.android.gms.internal.ads.zzvg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaq.class */
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzas();
    public final int errorCode;
    public final String zzacp;

    public zzaq(String str, int i) {
        this.zzacp = str == null ? "" : str;
        this.errorCode = i;
    }

    public static zzaq zzc(Throwable th) {
        zzvg zzh = zzdok.zzh(th);
        return new zzaq(zzdwt.zzar(th.getMessage()) ? zzh.zzchg : th.getMessage(), zzh.errorCode);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzacp, false);
        SafeParcelWriter.writeInt(parcel, 2, this.errorCode);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
