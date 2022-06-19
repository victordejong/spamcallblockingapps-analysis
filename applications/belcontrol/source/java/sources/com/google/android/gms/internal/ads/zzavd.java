package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavd.class */
public final class zzavd implements Parcelable.Creator<zzava> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzava createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzvl zzvlVar = null;
        String str = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 2) {
                zzvlVar = (zzvl) SafeParcelReader.createParcelable(parcel, readHeader, zzvl.CREATOR);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzava(zzvlVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzava[] newArray(int i) {
        return new zzava[i];
    }
}
