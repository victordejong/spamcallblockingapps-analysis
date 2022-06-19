package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzb.class */
public final class zzb implements Parcelable.Creator<ActivityRecognitionResult> {
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final ActivityRecognitionResult createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        ArrayList arrayList = null;
        Bundle bundle = null;
        int i = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                arrayList = SafeParcelReader.m38875n(parcel, readInt, DetectedActivity.CREATOR);
            } else if (c3 == 2) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 == 3) {
                c2 = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 == 4) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c3 != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ActivityRecognitionResult(arrayList, c, c2, i, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
