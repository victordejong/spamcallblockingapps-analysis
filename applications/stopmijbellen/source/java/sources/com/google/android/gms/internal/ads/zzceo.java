package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceo.class */
public final class zzceo implements Parcelable.Creator<zzcen> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcen createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzbfd zzbfdVar = null;
        String str = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 2) {
                zzbfdVar = (zzbfd) SafeParcelReader.createParcelable(parcel, readHeader, zzbfd.CREATOR);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzcen(zzbfdVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcen[] newArray(int i) {
        return new zzcen[i];
    }
}
