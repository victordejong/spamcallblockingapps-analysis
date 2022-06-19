package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaiv.class */
public final class zzaiv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiv> CREATOR = new zzaiu();
    public final byte[] data;
    public final int statusCode;
    public final boolean zzak;
    public final long zzal;
    public final String zzchg;
    public final String[] zzdin;
    public final String[] zzdio;
    public final boolean zzdip;

    public zzaiv(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.zzdip = z;
        this.zzchg = str;
        this.statusCode = i;
        this.data = bArr;
        this.zzdin = strArr;
        this.zzdio = strArr2;
        this.zzak = z2;
        this.zzal = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zzdip);
        SafeParcelWriter.writeString(parcel, 2, this.zzchg, false);
        SafeParcelWriter.writeInt(parcel, 3, this.statusCode);
        SafeParcelWriter.writeByteArray(parcel, 4, this.data, false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.zzdin, false);
        SafeParcelWriter.writeStringArray(parcel, 6, this.zzdio, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzak);
        SafeParcelWriter.writeLong(parcel, 8, this.zzal);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
