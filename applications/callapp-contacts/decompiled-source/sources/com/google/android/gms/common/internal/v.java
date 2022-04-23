package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/v.class */
public final class v implements Parcelable.Creator<TelemetryData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TelemetryData createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.c(parcel, readInt, MethodInvocation.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new TelemetryData(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ TelemetryData[] newArray(int i) {
        return new TelemetryData[i];
    }
}
