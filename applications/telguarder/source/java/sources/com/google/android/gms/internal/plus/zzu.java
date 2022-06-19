package com.google.android.gms.internal.plus;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.plus.zzr;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzu.class */
public final class zzu implements Parcelable.Creator<zzr.zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr.zzb createFromParcel(Parcel parcel) {
        int i;
        int readInt;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        zzr.zzb.zza zzaVar = null;
        zzr.zzb.C2621zzb c2621zzb = null;
        int i3 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                i = 1;
                readInt = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId == 2) {
                zzaVar = (zzr.zzb.zza) SafeParcelReader.createParcelable(parcel, readHeader, zzr.zzb.zza.CREATOR);
                readInt = i2;
                i = 2;
            } else if (fieldId == 3) {
                c2621zzb = (zzr.zzb.C2621zzb) SafeParcelReader.createParcelable(parcel, readHeader, zzr.zzb.C2621zzb.CREATOR);
                readInt = i2;
                i = 3;
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                i3 = SafeParcelReader.readInt(parcel, readHeader);
                readInt = i2;
                i = 4;
            }
            hashSet.add(Integer.valueOf(i));
            i2 = readInt;
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            return new zzr.zzb(hashSet, i2, zzaVar, c2621zzb, i3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr.zzb[] newArray(int i) {
        return new zzr.zzb[i];
    }
}
