package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/s.class */
public final class C1591s implements Parcelable.Creator<RootTelemetryConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RootTelemetryConfiguration createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k == 2) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 3) {
                z2 = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 4) {
                i2 = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 5) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                i3 = SafeParcelReader.m8310s(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new RootTelemetryConfiguration(i, z, z2, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RootTelemetryConfiguration[] newArray(int i) {
        return new RootTelemetryConfiguration[i];
    }
}
