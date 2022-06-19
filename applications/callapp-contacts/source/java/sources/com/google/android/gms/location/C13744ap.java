package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.ap */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ap.class */
public final class C13744ap implements Parcelable.Creator<ActivityTransitionRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = null;
        String str = null;
        ArrayList arrayList2 = null;
        String str2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, ActivityTransition.CREATOR);
            } else if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 3) {
                arrayList2 = SafeParcelReader.m19138c(parcel, readInt, ClientIdentity.CREATOR);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new ActivityTransitionRequest(arrayList, str, arrayList2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActivityTransitionRequest[] newArray(int i) {
        return new ActivityTransitionRequest[i];
    }
}
