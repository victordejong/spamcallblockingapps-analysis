package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzk.class */
public final class zzk implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        long j = 50;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        float f = 0.0f;
        int i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 == 2) {
                j = SafeParcelReader.m17274B(parcel, a);
            } else if (a2 == 3) {
                f = SafeParcelReader.m17238x(parcel, a);
            } else if (a2 == 4) {
                j2 = SafeParcelReader.m17274B(parcel, a);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzj(z, j, f, j2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
