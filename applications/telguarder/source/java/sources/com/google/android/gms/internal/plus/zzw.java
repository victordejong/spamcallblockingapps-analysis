package com.google.android.gms.internal.plus;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.plus.zzr;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzw.class */
public final class zzw implements Parcelable.Creator<zzr.zzb.C2621zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr.zzb.C2621zzb createFromParcel(Parcel parcel) {
        int readInt;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            int i4 = 1;
            if (fieldId != 1) {
                i4 = 2;
                if (fieldId != 2) {
                    i4 = 3;
                    if (fieldId != 3) {
                        i4 = 4;
                        if (fieldId != 4) {
                            SafeParcelReader.skipUnknownField(parcel, readHeader);
                        } else {
                            i3 = SafeParcelReader.readInt(parcel, readHeader);
                            readInt = i;
                        }
                    } else {
                        str = SafeParcelReader.createString(parcel, readHeader);
                        readInt = i;
                    }
                } else {
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    readInt = i;
                }
            } else {
                readInt = SafeParcelReader.readInt(parcel, readHeader);
            }
            hashSet.add(Integer.valueOf(i4));
            i = readInt;
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            return new zzr.zzb.C2621zzb(hashSet, i, i2, str, i3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr.zzb.C2621zzb[] newArray(int i) {
        return new zzr.zzb.C2621zzb[i];
    }
}
