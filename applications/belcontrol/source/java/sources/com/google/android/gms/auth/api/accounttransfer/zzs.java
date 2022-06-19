package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzs.class */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int i;
        int readInt;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        zzt zztVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                i = 1;
                readInt = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId == 2) {
                zztVar = (zzt) SafeParcelReader.createParcelable(parcel, readHeader, zzt.CREATOR);
                readInt = i2;
                i = 2;
            } else if (fieldId == 3) {
                str = SafeParcelReader.createString(parcel, readHeader);
                readInt = i2;
                i = 3;
            } else if (fieldId == 4) {
                str2 = SafeParcelReader.createString(parcel, readHeader);
                readInt = i2;
                i = 4;
            } else if (fieldId != 5) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                str3 = SafeParcelReader.createString(parcel, readHeader);
                readInt = i2;
                i = 5;
            }
            hashSet.add(Integer.valueOf(i));
            i2 = readInt;
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            return new zzr(hashSet, i2, zztVar, str, str2, str3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}
