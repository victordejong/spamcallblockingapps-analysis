package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzab.class */
public final class zzab implements Parcelable.Creator<LocationRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        long j = 3600000;
        long j2 = 600000;
        long j3 = Long.MAX_VALUE;
        long j4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        float f = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    j = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 3:
                    j2 = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 4:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 5:
                    j3 = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 6:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 7:
                    f = SafeParcelReader.m17238x(parcel, a);
                    break;
                case 8:
                    j4 = SafeParcelReader.m17274B(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new LocationRequest(i, j, j2, z, j3, i2, f, j4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
