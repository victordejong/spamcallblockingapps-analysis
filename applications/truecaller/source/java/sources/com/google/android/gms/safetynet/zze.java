package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/safetynet/zze.class */
public final class zze implements Parcelable.Creator<zzd> {
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzd createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        boolean z = false;
        char c = 0;
        HarmfulAppsData[] harmfulAppsDataArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 == 3) {
                harmfulAppsDataArr = (HarmfulAppsData[]) SafeParcelReader.m38876m(parcel, readInt, HarmfulAppsData.CREATOR);
            } else if (c2 == 4) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                z = SafeParcelReader.m38873p(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzd(c, harmfulAppsDataArr, i, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzd[] newArray(int i) {
        return new zzd[i];
    }
}
