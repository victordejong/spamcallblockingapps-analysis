package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/face/internal/client/zzm.class */
public final class zzm implements Parcelable.Creator<LandmarkParcel> {
    @Override // android.os.Parcelable.Creator
    public final LandmarkParcel createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                f = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c == 3) {
                f2 = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LandmarkParcel(i, f, f2, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LandmarkParcel[] newArray(int i) {
        return new LandmarkParcel[i];
    }
}
