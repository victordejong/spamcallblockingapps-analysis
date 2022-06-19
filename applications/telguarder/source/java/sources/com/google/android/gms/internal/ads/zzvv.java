package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvv.class */
public final class zzvv implements Parcelable.Creator<zzvw> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvw createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        zzvg zzvgVar = null;
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
                zzvgVar = (zzvg) SafeParcelReader.createParcelable(parcel, readHeader, zzvg.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                bundle = SafeParcelReader.createBundle(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzvw(str, c, zzvgVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvw[] newArray(int i) {
        return new zzvw[i];
    }
}
