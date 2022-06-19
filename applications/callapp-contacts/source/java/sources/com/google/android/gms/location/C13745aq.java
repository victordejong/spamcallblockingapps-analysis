package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.aq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/aq.class */
public final class C13745aq implements Parcelable.Creator<ActivityTransitionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionResult createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, ActivityTransitionEvent.CREATOR);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new ActivityTransitionResult(arrayList, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActivityTransitionResult[] newArray(int i) {
        return new ActivityTransitionResult[i];
    }
}
