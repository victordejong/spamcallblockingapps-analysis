package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c0.class */
public final class C1572c0 implements Parcelable.Creator<ConnectionTelemetryConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionTelemetryConfiguration createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        RootTelemetryConfiguration rootTelemetryConfiguration = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    rootTelemetryConfiguration = (RootTelemetryConfiguration) SafeParcelReader.m8324e(parcel, m8312q, RootTelemetryConfiguration.CREATOR);
                    break;
                case 2:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 3:
                    z2 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 4:
                    iArr = SafeParcelReader.m8326c(parcel, m8312q);
                    break;
                case 5:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 6:
                    iArr2 = SafeParcelReader.m8326c(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, z, z2, iArr, i, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionTelemetryConfiguration[] newArray(int i) {
        return new ConnectionTelemetryConfiguration[i];
    }
}
