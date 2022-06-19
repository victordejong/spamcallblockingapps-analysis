package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/phenotype/zzk.class */
public final class zzk implements Parcelable.Creator<zzi> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final zzi createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        int i = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        char c = 0;
        char c2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    c2 = SafeParcelReader.m38871r(parcel, readInt);
                    break;
                case 6:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    bArr = SafeParcelReader.m38885d(parcel, readInt);
                    break;
                case '\b':
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\t':
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzi(str, c, z, c2, str2, bArr, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
