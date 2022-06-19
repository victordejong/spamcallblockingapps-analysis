package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/model/zza.class */
public final class zza implements Parcelable.Creator<CountrySpecification> {
    @Override // android.os.Parcelable.Creator
    public final CountrySpecification createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CountrySpecification(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CountrySpecification[] newArray(int i) {
        return new CountrySpecification[i];
    }
}
