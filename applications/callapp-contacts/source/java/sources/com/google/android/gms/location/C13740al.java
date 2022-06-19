package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.al */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/al.class */
public final class C13740al implements Parcelable.Creator<ActivityRecognitionResult> {
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityRecognitionResult createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        ArrayList arrayList = null;
        Bundle bundle = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, DetectedActivity.CREATOR);
            } else if (c3 == 2) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 == 3) {
                c2 = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 == 4) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c3 != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new ActivityRecognitionResult(arrayList, c, c2, i, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
