package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzm.class */
public final class zzm implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int i;
        int readInt;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i3 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                i = 1;
                readInt = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId == 2) {
                arrayList = SafeParcelReader.createTypedList(parcel, readHeader, zzr.CREATOR);
                readInt = i2;
                i = 2;
            } else if (fieldId == 3) {
                i3 = SafeParcelReader.readInt(parcel, readHeader);
                readInt = i2;
                i = 3;
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                zzoVar = (zzo) SafeParcelReader.createParcelable(parcel, readHeader, zzo.CREATOR);
                readInt = i2;
                i = 4;
            }
            hashSet.add(Integer.valueOf(i));
            i2 = readInt;
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            return new zzl(hashSet, i2, arrayList, i3, zzoVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}
