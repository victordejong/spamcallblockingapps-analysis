package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzy.class */
public final class zzy implements Parcelable.Creator<zzv> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        String str2 = null;
        zzkl zzklVar = null;
        String str3 = null;
        zzan zzanVar = null;
        zzan zzanVar2 = null;
        zzan zzanVar3 = null;
        boolean z = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    zzklVar = (zzkl) SafeParcelReader.createParcelable(parcel, readHeader, zzkl.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 6:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 7:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 8:
                    zzanVar = (zzan) SafeParcelReader.createParcelable(parcel, readHeader, zzan.CREATOR);
                    break;
                case 9:
                    c2 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 10:
                    zzanVar2 = (zzan) SafeParcelReader.createParcelable(parcel, readHeader, zzan.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 12:
                    zzanVar3 = (zzan) SafeParcelReader.createParcelable(parcel, readHeader, zzan.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzv(str, str2, zzklVar, c, z, str3, zzanVar, c2, zzanVar2, c3, zzanVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv[] newArray(int i) {
        return new zzv[i];
    }
}
