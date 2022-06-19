package com.google.android.gms.internal.plus;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.plus.zzr;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzab.class */
public final class zzab implements Parcelable.Creator<zzr.zzg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr.zzg createFromParcel(Parcel parcel) {
        int i;
        int readInt;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        String str = null;
        String str2 = null;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                i = 1;
                readInt = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId == 3) {
                i4 = SafeParcelReader.readInt(parcel, readHeader);
                readInt = i2;
                i = 3;
            } else if (fieldId == 4) {
                str2 = SafeParcelReader.createString(parcel, readHeader);
                readInt = i2;
                i = 4;
            } else if (fieldId == 5) {
                str = SafeParcelReader.createString(parcel, readHeader);
                readInt = i2;
                i = 5;
            } else if (fieldId != 6) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                i3 = SafeParcelReader.readInt(parcel, readHeader);
                readInt = i2;
                i = 6;
            }
            hashSet.add(Integer.valueOf(i));
            i2 = readInt;
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            return new zzr.zzg(hashSet, i2, str, i3, str2, i4);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr.zzg[] newArray(int i) {
        return new zzr.zzg[i];
    }
}
