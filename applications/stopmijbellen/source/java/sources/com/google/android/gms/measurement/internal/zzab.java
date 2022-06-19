package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzab.class */
public final class zzab implements Parcelable.Creator<zzaa> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        String str2 = null;
        zzkq zzkqVar = null;
        String str3 = null;
        zzas zzasVar = null;
        zzas zzasVar2 = null;
        zzas zzasVar3 = null;
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
                    zzkqVar = (zzkq) SafeParcelReader.createParcelable(parcel, readHeader, zzkq.CREATOR);
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
                    zzasVar = (zzas) SafeParcelReader.createParcelable(parcel, readHeader, zzas.CREATOR);
                    break;
                case 9:
                    c2 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 10:
                    zzasVar2 = (zzas) SafeParcelReader.createParcelable(parcel, readHeader, zzas.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 12:
                    zzasVar3 = (zzas) SafeParcelReader.createParcelable(parcel, readHeader, zzas.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzaa(str, str2, zzkqVar, c, z, str3, zzasVar, c2, zzasVar2, c3, zzasVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
