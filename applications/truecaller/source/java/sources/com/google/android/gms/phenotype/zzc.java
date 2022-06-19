package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/phenotype/zzc.class */
public final class zzc implements Parcelable.Creator<Configuration> {
    @Override // android.os.Parcelable.Creator
    public final Configuration createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        zzi[] zziVarArr = null;
        int i = 0;
        String[] strArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 3) {
                zziVarArr = (zzi[]) SafeParcelReader.m38876m(parcel, readInt, zzi.CREATOR);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                strArr = SafeParcelReader.m38878k(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Configuration(i, zziVarArr, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration[] newArray(int i) {
        return new Configuration[i];
    }
}
