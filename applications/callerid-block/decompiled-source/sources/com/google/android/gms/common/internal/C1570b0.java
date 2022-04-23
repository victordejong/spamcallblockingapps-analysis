package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b0.class */
public final class C1570b0 implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzi createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        Bundle bundle = null;
        Feature[] featureArr = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                bundle = SafeParcelReader.m8328a(parcel, q);
            } else if (k == 2) {
                featureArr = (Feature[]) SafeParcelReader.m8320i(parcel, q, Feature.CREATOR);
            } else if (k == 3) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 4) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) SafeParcelReader.m8324e(parcel, q, ConnectionTelemetryConfiguration.CREATOR);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzi(bundle, featureArr, i, connectionTelemetryConfiguration);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
