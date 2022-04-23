package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzy.class */
public final class zzy implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        Thing[] thingArr = null;
        int i = 0;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 5) {
                switch (fieldId) {
                    case 1:
                        i = SafeParcelReader.readInt(parcel, readHeader);
                        continue;
                    case 2:
                        thingArr = (Thing[]) SafeParcelReader.createTypedArray(parcel, readHeader, Thing.CREATOR);
                        continue;
                    case 3:
                        strArr = SafeParcelReader.createStringArray(parcel, readHeader);
                        continue;
                    default:
                        SafeParcelReader.skipUnknownField(parcel, readHeader);
                        continue;
                }
            } else {
                strArr2 = SafeParcelReader.createStringArray(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzx(i, thingArr, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx[] newArray(int i) {
        return new zzx[i];
    }
}
