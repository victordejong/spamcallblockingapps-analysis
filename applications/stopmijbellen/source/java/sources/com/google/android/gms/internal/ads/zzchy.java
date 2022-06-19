package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchy.class */
public final class zzchy implements Parcelable.Creator<zzchx> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzchx createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        zzbfi zzbfiVar = null;
        zzbfd zzbfdVar = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 2) {
                str2 = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 3) {
                zzbfiVar = (zzbfi) SafeParcelReader.createParcelable(parcel, readHeader, zzbfi.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                zzbfdVar = (zzbfd) SafeParcelReader.createParcelable(parcel, readHeader, zzbfd.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzchx(str, str2, zzbfiVar, zzbfdVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchx[] newArray(int i) {
        return new zzchx[i];
    }
}
