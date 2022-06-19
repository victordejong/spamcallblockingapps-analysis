package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.wearable.ConnectionConfiguration;
/* renamed from: com.google.android.gms.wearable.internal.ay */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ay.class */
public final class C14256ay implements Parcelable.Creator<zzdw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdw createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        ConnectionConfiguration connectionConfiguration = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                connectionConfiguration = (ConnectionConfiguration) SafeParcelReader.m19143a(parcel, readInt, ConnectionConfiguration.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdw(i, connectionConfiguration);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdw[] newArray(int i) {
        return new zzdw[i];
    }
}
