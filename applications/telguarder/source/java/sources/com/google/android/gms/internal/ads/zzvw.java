package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvw.class */
public final class zzvw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvw> CREATOR = new zzvv();
    public String zzcio;
    public long zzcip;
    public zzvg zzciq;
    public Bundle zzcir;

    public zzvw(String str, long j, zzvg zzvgVar, Bundle bundle) {
        this.zzcio = str;
        this.zzcip = j;
        this.zzciq = zzvgVar;
        this.zzcir = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzcio, false);
        SafeParcelWriter.writeLong(parcel, 2, this.zzcip);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzciq, i, false);
        SafeParcelWriter.writeBundle(parcel, 4, this.zzcir, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
