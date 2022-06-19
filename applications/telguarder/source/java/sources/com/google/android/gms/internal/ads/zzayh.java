package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayh.class */
public final class zzayh implements Parcelable.Creator<zzaye> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaye createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        zzvs zzvsVar = null;
        zzvl zzvlVar = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 2) {
                str2 = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 3) {
                zzvsVar = (zzvs) SafeParcelReader.createParcelable(parcel, readHeader, zzvs.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                zzvlVar = (zzvl) SafeParcelReader.createParcelable(parcel, readHeader, zzvl.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzaye(str, str2, zzvsVar, zzvlVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaye[] newArray(int i) {
        return new zzaye[i];
    }
}
