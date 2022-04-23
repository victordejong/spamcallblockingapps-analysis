package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzg.class */
public final class zzg implements Parcelable.Creator<ActivityTransitionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionResult createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 1) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                arrayList = SafeParcelReader.m17259c(parcel, a, ActivityTransitionEvent.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new ActivityTransitionResult(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionResult[] newArray(int i) {
        return new ActivityTransitionResult[i];
    }
}
