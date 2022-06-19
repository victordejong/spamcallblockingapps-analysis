package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.y0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/y0.class */
public final class C6190y0 implements Parcelable.Creator<RootTelemetryConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RootTelemetryConfiguration createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 3) {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 4) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i3 = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new RootTelemetryConfiguration(i, z, z2, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RootTelemetryConfiguration[] newArray(int i) {
        return new RootTelemetryConfiguration[i];
    }
}
