package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfn.class */
public final class zzbfn implements Parcelable.Creator<zzbfm> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbfm createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        zzbew zzbewVar = null;
        Bundle bundle = null;
        char c = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 2) {
                c = SafeParcelReader.readLong(parcel, readHeader);
            } else if (fieldId == 3) {
                zzbewVar = (zzbew) SafeParcelReader.createParcelable(parcel, readHeader, zzbew.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                bundle = SafeParcelReader.createBundle(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzbfm(str, c, zzbewVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbfm[] newArray(int i) {
        return new zzbfm[i];
    }
}
