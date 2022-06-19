package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzag.class */
public final class zzag implements Parcelable.Creator<ShippingAddressRequirements> {
    @Override // android.os.Parcelable.Creator
    public final ShippingAddressRequirements createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m38877l(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ShippingAddressRequirements(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ShippingAddressRequirements[] newArray(int i) {
        return new ShippingAddressRequirements[i];
    }
}
