package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzg.class */
public final class zzg implements Parcelable.Creator<CardRequirements> {
    @Override // android.os.Parcelable.Creator
    public final CardRequirements createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = true;
        ArrayList<Integer> arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m38882g(parcel, readInt);
            } else if (c == 2) {
                z2 = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c == 3) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CardRequirements(arrayList, z2, z, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CardRequirements[] newArray(int i) {
        return new CardRequirements[i];
    }
}
