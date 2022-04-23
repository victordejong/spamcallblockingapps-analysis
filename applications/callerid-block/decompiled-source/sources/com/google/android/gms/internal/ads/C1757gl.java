package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.gl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gl.class */
public final class C1757gl implements Parcelable.Creator<zzaxz> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaxz createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k != 2) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                str2 = SafeParcelReader.m8323f(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzaxz(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaxz[] newArray(int i) {
        return new zzaxz[i];
    }
}
