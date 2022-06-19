package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zaab.class */
public final class zaab implements Parcelable.Creator<TelemetryData> {
    @Override // android.os.Parcelable.Creator
    public final TelemetryData createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m38875n(parcel, readInt, MethodInvocation.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new TelemetryData(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ TelemetryData[] newArray(int i) {
        return new TelemetryData[i];
    }
}
