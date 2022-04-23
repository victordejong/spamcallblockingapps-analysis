package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzz.class */
public final class zzz implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzj zzjVar = null;
        String str = null;
        zzg zzgVar = null;
        long j = 0;
        int i = 0;
        boolean z = false;
        int i2 = -1;
        int i3 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    zzjVar = (zzj) SafeParcelReader.createParcelable(parcel, readHeader, zzj.CREATOR);
                    break;
                case 2:
                    j = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 3:
                    i = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 4:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    zzgVar = (zzg) SafeParcelReader.createParcelable(parcel, readHeader, zzg.CREATOR);
                    break;
                case 6:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 7:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 8:
                    i3 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzx(zzjVar, j, i, str, zzgVar, z, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx[] newArray(int i) {
        return new zzx[i];
    }
}
