package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.wearable.ConnectionConfiguration;
/* renamed from: com.google.android.gms.wearable.internal.az */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/az.class */
public final class C14257az implements Parcelable.Creator<zzdy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdy createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        ConnectionConfiguration[] connectionConfigurationArr = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                connectionConfigurationArr = (ConnectionConfiguration[]) SafeParcelReader.m19140b(parcel, readInt, ConnectionConfiguration.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdy(i, connectionConfigurationArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdy[] newArray(int i) {
        return new zzdy[i];
    }
}
