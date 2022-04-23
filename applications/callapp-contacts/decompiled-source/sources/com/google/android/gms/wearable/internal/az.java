package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.wearable.ConnectionConfiguration;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/az.class */
public final class az implements Parcelable.Creator<zzdy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdy createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        ConnectionConfiguration[] connectionConfigurationArr = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                connectionConfigurationArr = (ConnectionConfiguration[]) SafeParcelReader.b(parcel, readInt, ConnectionConfiguration.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdy(i, connectionConfigurationArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdy[] newArray(int i) {
        return new zzdy[i];
    }
}
