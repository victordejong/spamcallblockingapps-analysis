package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzae.class */
public final class zzae implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        Status status = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 1) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                status = (Status) SafeParcelReader.m17264a(parcel, a, Status.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzad(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad[] newArray(int i) {
        return new zzad[i];
    }
}
