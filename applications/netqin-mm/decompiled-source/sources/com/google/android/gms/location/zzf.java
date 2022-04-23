package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzf.class */
public final class zzf implements Parcelable.Creator<ActivityTransitionRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionRequest createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        ArrayList arrayList = null;
        String str = null;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                arrayList = SafeParcelReader.m17259c(parcel, a, ActivityTransition.CREATOR);
            } else if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                arrayList2 = SafeParcelReader.m17259c(parcel, a, ClientIdentity.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new ActivityTransitionRequest(arrayList, str, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionRequest[] newArray(int i) {
        return new ActivityTransitionRequest[i];
    }
}
