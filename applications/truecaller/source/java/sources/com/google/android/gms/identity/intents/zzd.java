package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/zzd.class */
public final class zzd implements Parcelable.Creator<UserAddressRequest> {
    @Override // android.os.Parcelable.Creator
    public final UserAddressRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m38875n(parcel, readInt, CountrySpecification.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new UserAddressRequest(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserAddressRequest[] newArray(int i) {
        return new UserAddressRequest[i];
    }
}
